//
//  ViewController.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 14.06.2022.
//

import UIKit

class LoginViewController: UIViewController, Storyboardable {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBAction func loginButton(_ sender: Any) {
        viewModel!.userButtonPressed(login: (loginField.text ?? ""), password: (passField.text ?? ""))
        if ((viewModel?.isLoggedIn) != nil) {
            coordinator?.isLoggedIn = ((viewModel?.isLoggedIn) != nil)
            coordinator?.showMain(login: loginField.text ?? "")
        }
    }
    @IBOutlet weak var label: UILabel!

    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }

    func bindViewModel() {
        viewModel!.statusText.bin({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel!.statusColor.bin({ (statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}

