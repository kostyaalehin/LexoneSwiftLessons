//
//  UserData.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 30.06.2022.
//

import Foundation

struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Kostya", city: "Perm", email: "test@mail.com", phone: "+79998887766")
}
