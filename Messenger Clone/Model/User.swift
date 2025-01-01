//
//  User.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 01/01/25.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    var id  = NSUUID().uuidString
    var fullName: String
    var email: String
    var imageUrl: String
    
    static let MOCK_DATA = (
        User(fullName: "Bruce Wayne", email: "brucewayne@gmail.com", imageUrl: "bruce" )
        )
}
