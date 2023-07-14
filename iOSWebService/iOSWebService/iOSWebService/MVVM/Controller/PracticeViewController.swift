//
//  PracticeViewController.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 12/07/23.
//

import UIKit

class PracticeViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.getData()
    }
    
    func getData(){
        if let url = URL(string: "https://reqres.in/api/users/2") {
            let request = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: request){ (data,urlresponse,error) in
                
                guard let responseData = data else{
                    return
                }
                
                do{
                    let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                    print("json: \(json)")
                }catch{
                    print("Error: \(error.localizedDescription)")
                }
            }
            dataTask.resume()
        }
       
    }
 
}
