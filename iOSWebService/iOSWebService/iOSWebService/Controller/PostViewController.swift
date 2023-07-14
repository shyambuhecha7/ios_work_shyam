//
//  PostViewController.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 06/07/23.
//

import UIKit

class PostViewController: UIViewController {
    
   
    struct User: Codable {
        let email: String
        let password: String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
      postRequest()
    }
    
    func postRequest(){
        
        guard let url = URL(string: "https://reqres.in/api/register") else {
            print("Can not create URL")
            return
        }
        
        let uploadUserModel = User(email: "eve.holt@reqres.in", password: "pistol")
        
        guard let jsonData = try? JSONEncoder().encode(uploadUserModel) else {
            print("Error : try to convert model to json data")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
       
        request.httpBody = jsonData
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard error == nil else {
                print("Error")
                return
            }
            
            guard let data = data else {
                print("Error: Did not receive data")
                return
            }
                       
            guard let response = response as? HTTPURLResponse, (200..<299) ~= response.statusCode else {
                
                print("HTTP request faield")
                return
            }
            print("response: \(response)")
            
            do {
                guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                    print("Error: Cannot convert data to JSON object")
                    return
                }
                guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                    print("Error: Cannot convert JSON object to Pretty JSON data")
                    return
                }
                guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                    print("Error: Couldn't print JSON in String")
                    return
                }
                print(prettyPrintedJson)
            } catch {
                print("Error: Trying to convert JSON data to string")
                return
            }
        }.resume()
    }
}

