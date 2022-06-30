//
//  DetailViewController.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 30.06.2022.
//

import Foundation
import UIKit

class DetailViewController: UIViewController, Storyboardable {

    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!


    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Detail view loaded")
        updateUI()
    }

    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        cityLabel.text = viewModel?.model?.city
        emailLabel.text = viewModel?.model?.email
        phoneLabel.text = viewModel?.model?.phone
    }
}
