//
//  MainViewComtroller.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 30.06.2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {

    @IBOutlet var mainLabel: UILabel!
    @IBAction func aboutButtonPressed(_ sender: Any) {
        coordinator?.showDetail()
    }

    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main screen loaded")
        mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
    }
}
