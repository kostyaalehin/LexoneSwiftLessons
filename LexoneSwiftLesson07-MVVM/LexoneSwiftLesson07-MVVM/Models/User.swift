//
//  User.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 14.06.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "kostyaay", password: "12345")
    ]
}
