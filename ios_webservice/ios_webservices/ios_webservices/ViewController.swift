//
//  ViewController.swift
//  ios_webservices
//
//  Created by Shyam Buhecha on 01/07/23.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataFromServer()
        
        //encoding
        struct Person: Codable {
            var name: String
            var age: Int
        }
       
        let person = Person(name: "Shyam", age: 21)
        let encoder = JSONEncoder()
        
        do{
            let jsonData = try encoder.encode(person)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                print(jsonString)
            }
        }catch{
            print("encoding errors: \(error)")
        }
        
        //decoding
        struct Person1: Codable {
            var name: String
            var age: Int
        }
        
        var jsonData: String = """
                    {
                     "name" : "Shyam"
                     "age" : 21
                    }
                  """
                    
        let data = jsonData.data(using: .utf8)!
        
        var decoder = JSONDecoder()
        
        do {
            let decodePerson = try decoder.decode(Person1.self, from: data)
            print(decodePerson)
        }catch {
            print("Decode error: \(error)")
        }
     
    }
    
    func getDataFromServer() {
        if let url = URL(string:"https://reqres.in/api/users?page=2") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest)  { data,urlResponse,error in
                guard let responseData = data else {
                    return
                }
               print("data : \(responseData)")
                if let urlResponse = urlResponse {
                    print("url response : \(urlResponse)")
                }
                if let error = error {
                    print("error : \(error.localizedDescription)")
                }
                
                do{
                    let json = try JSONSerialization.jsonObject(with: responseData,options: [])
                    print("json : \(json) ")
                }catch let error{
                    print("error : \(error.localizedDescription)")
                }
                
            }
            dataTask.resume()
        }
    }
   

    
    
    
}



