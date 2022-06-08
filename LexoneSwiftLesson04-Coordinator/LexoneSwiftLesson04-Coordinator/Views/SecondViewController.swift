//
//  SecondViewController.swift
//  LexoneSwiftLesson04-Coordinator
//
//  Created by Константин Алехин on 08.06.2022.
//

import UIKit

class SecondViewController: UIViewController, Storyboardable {

    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second VC"
    }

    @IBAction func openFirstVC(_ sender: Any) {
        coordinator?.openFirstVC()
    }

    @IBAction func oprnThirdVC(_ sender: Any) {
        coordinator?.openThirdVC()
    }

}
