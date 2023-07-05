//
//  RegisterViewController.swift
//  ios_webservices
//
//  Created by Shyam Buhecha on 05/07/23.
//

import UIKit

struct User: Codable {
    let email, password: String
}
class RegisterViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    var user = ["email": "password"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        
        guard let email = tfEmail.text, let password = tfPassword.text else {
            if tfEmail.text?.isEmpty ?? false && ((tfPassword.text?.isEmpty) ?? false) {
                return
            }
            return
        }
        
        let user = User(email:email,password:password)
        
        guard let url = URL(string: "https://reqres.in/api/register") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(user)
            request.httpBody = jsonData
        } catch {
            print("Error: \(error)")
        }
        
        let task = URLSession.shared.dataTask(with: request) { (data,response,error) in
            if let error = error {
                print("error: \(error)")
                return
            }
            
            if let data = data {
                do{
                    let jsonResponse = try JSONSerialization.data(withJSONObject: data)
                    print("response: \(jsonResponse)")
                }catch {
                    print("error : \(error)")
                }
            }
        }
        task.resume()
    }
}
