//
//  UserModel.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 12/07/23.
//

import Foundation

// MARK: - UserData
struct UserModel: Codable {
    let data: DataClass
    let support: Support
}

// MARK: - DataClass
struct DataClass: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
