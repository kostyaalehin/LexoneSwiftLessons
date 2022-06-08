//
//  ViewController.swift
//  LexoneSwiftLesson04-Coordinator
//
//  Created by Константин Алехин on 08.06.2022.
//

import UIKit

class FirstViewController: UIViewController, Storyboardable {

    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First VC"
    }

    @IBAction func openSecondVC(_ sender: Any) {
        coordinator?.openSecondVC()
    }

    @IBAction func openThirdVC(_ sender: Any) {
        coordinator?.openThirdVC()
    }


}

