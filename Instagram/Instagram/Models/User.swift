//
//  User.swift
//  Instagram
//
//  Created by Encora on 30/04/25.
//

struct User: Codable {
    var uid: String
    var email: String
    var profileImageURL: String
    var userName: String
    var searchName: [String]
    var bio: String
}
