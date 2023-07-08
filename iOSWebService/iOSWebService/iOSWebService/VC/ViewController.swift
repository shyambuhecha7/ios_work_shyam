//
//  ViewController.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 05/07/23.
//

import UIKit

struct User: Codable {
    let email, password: String
}


class ViewController: UIViewController {
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        postUserData()
        
    }
  
    @IBAction func registerData(_ sender: Any) {
        
        var email: String? = tfEmail.text
        var password: String? = tfPassword.text
        var user = User(email: email!, password: password!)
        
    }
    
    func postUserData() {
        let url = URL(string: "https://reqres.in/api/register")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { (data,response,error) in
            if let error = error {
                print("error: \(error)")
            }
            
            if let data = data {
                print("data : \(data)")
            }
            
//            do{
//                var encodeData = try JSONEncoder().encode(data[)
//                print("encodeData: \(encodeData)")
//            }catch{
//                print("error : \(error)")
//            }
        }
        task.resume()
        
    }
}

