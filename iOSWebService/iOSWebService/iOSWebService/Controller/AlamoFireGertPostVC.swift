//
//  MyVCViewController.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 07/07/23.
//

import UIKit
import Alamofire

class AlamoFireGertPostVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//
//        AF.request("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c5a974d6ae66438b8d8ea823cfa26549")
//            .response { response in
//                debugPrint(response.response?.statusCode)
//            }
//
//        let header: HTTPHeaders = [
//            .accept("application/json")]
//
//        AF.request("http://reqres.in/api/users/2", headers: header)
//            .response { (response) in
//                debugPrint(response)
//            }
//
        //Get request
    AF.request("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c5a974d6ae66438b8d8ea823cfa26549").responseJSON { response in
        switch response.result {
        case .success(let value):
            print(value)
        case .failure(let error):
            print(error)
        }
    }
        
        //POST
        struct User: Codable {
            let email, password: String
        }
        
        let parameter = User(email: "eve.holt@reqres.in", password: "pistol")

        AF.request("https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c5a974d6ae66438b8d8ea823cfa26549",method: .post, parameters: parameter).responseJSON { response in
            switch response.result {
                case .success(let value) :
                    print(value)
            case .failure(let error) :
                    print(error)
                }
            }
    }
}
