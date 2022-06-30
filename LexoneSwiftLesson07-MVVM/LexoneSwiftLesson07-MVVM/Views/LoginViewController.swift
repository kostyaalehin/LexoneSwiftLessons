//
//  ViewController.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 14.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBAction func loginButton(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: (passField.text ?? ""))
    }
    @IBOutlet weak var label: UILabel!

    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    var viewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }

    func bindViewModel() {
        viewModel.statusText.bin({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel.statusColor.bin({ (statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}

