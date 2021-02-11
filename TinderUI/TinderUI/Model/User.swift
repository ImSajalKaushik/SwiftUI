//
//  User.swift
//  QuizApp
//
//  Created by Sajal Kaushik on 13/01/21.
//

import SwiftUI




struct User: Identifiable {
    let id = UUID()
    let name: String
    let profession: String
    let gender: String
    let image: String
    let age: Int
    var width: CGFloat = .zero
    var degree: Double = .zero
    
//    init(name: String, profession: String, image: String, gender: String, age: Int) {
//        self.name = name
//        self.profession = profession
//        self.age = age
//        self.image = image
//        self.gender = gender
//    }
    
}

extension User {
    func getAll() -> [User] {
        var users = [User]()
        users.append(User(name: "Sajal Kaushik", profession: "SDE", gender: "M", image: "sk", age: 20))
        users.append(User(name: "Sajal Kaushik", profession: "SDE", gender: "M", image: "sk", age: 20))
        users.append(User(name: "Sajal Kaushik", profession: "SDE", gender: "M", image: "sk", age: 20))
        users.append(User(name: "Sajal Kaushik", profession: "SDE", gender: "M", image: "sk", age: 20))
        users.append(User(name: "Sajal Kaushik", profession: "SDE", gender: "M", image: "sk", age: 20))
        users.append(User(name: "Sajal Kaushik", profession: "SDE", gender: "M", image: "sk", age: 20))
        return users
    }
}
