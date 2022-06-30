//
//  ViewModel.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 14.06.2022.
//

import Foundation
import UIKit.UIColor

class LoginViewModel {
    var statusText = Dinamic("")
    var statusColor = Dinamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))


    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login failed!"
            statusColor.value = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        } else {
            statusText.value = "You saccessfully logged in."
            statusColor.value = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
}
