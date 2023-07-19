//
//  ApiService.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 07/07/23.
//

import Foundation

class APIServices: NSObject {
    private var sourcesURL = URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData(completion: @escaping (EmployeeModel) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) {(data,urlResponse,error) in
            
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let employeeData = try! jsonDecoder.decode(EmployeeModel.self, from: data)
                print("DATA : \(employeeData)")
                completion(employeeData)
            }
        }.resume()
    }
}
