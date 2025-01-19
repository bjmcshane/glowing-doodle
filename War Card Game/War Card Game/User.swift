//
//  User.swift
//  War Card Game
//
//  Created by Brendan McShane on 1/19/25.
//

import Foundation
import SwiftData

@Model
class User: Identifiable {
    var id: String
    var name: String
    var email: String
    
    init(name: String, email: String) {
        self.id = UUID.init().uuidString
        self.name = name
        self.email = email
    }
}
