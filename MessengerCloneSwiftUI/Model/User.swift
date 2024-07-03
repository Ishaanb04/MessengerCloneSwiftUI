//
//  User.swift
//  MessengerCloneSwiftUI
//
//  Created by Ishaan Bhasin on 7/3/24.
//

import SwiftUI

struct User: Hashable, Identifiable{
    let id: String
    var name: String
    var imageName: String
    
    init(id: String = UUID().uuidString, name: String, imageName: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
}


extension User{
    static let MOCK_USER: [User] = [
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman"),
        .init(name: "Batman", imageName: "batman")
    ]
}
