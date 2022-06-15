//
//  ViewController.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()

    }

    func bindViewModel() {
        viewModel.statusText.bin({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
    }


}

