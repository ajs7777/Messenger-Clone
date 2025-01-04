//
//  User.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 01/01/25.
//

import Foundation
import FirebaseFirestore

struct User: Identifiable, Codable, Hashable {
    @DocumentID var uid: String?
    let fullName: String
    let email: String
    var profileImageUrl: String?
    
    var id : String {
        return uid ?? NSUUID().uuidString
    }
    
    static let MOCK_DATA = (
        User(fullName: "Bruce Wayne", email: "brucewayne@gmail.com", profileImageUrl: "bruce" )
        )
}
