//
//  ViewController.swift
//  LexoneLesson03-MVP
//
//  Created by Константин Алехин on 03.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        self.viewOutputDeligate?.getRandomCount()
    }

    private var count = 0
    private var testData: [Crypto] = []
    private let presenter = Presenter()
    weak private var viewOutputDeligate: ViewOutputDeligate?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInpurDeligate(viewInputDeligate: self)
        self.viewOutputDeligate = presenter
        self.viewOutputDeligate?.getData()
    }


}

extension ViewController: ViewInputDeligate {
    func setupInitialState() {
        displayData(i: count)
    }

    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }

    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }

}
