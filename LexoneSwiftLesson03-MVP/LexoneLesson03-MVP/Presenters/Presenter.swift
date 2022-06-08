//
//  Presentor.swift
//  LexoneLesson03-MVP
//
//  Created by Константин Алехин on 06.06.2022.
//

import Foundation

class Presenter {

    weak private var viewInputDeligate: ViewInputDeligate?
    var testData = Crypto.testData

    func setViewInpurDeligate(viewInputDeligate: ViewInputDeligate?) {
        self.viewInputDeligate = viewInputDeligate
    }

    private func loadTestData() {
        self.viewInputDeligate?.setupData(with: self.testData)
    }

    private func random() {
        let randomCount = Int.random(in: 0 ..< testData.count)
        self.viewInputDeligate?.displayData(i: randomCount)
    }
}

extension Presenter: ViewOutputDeligate {

    func getRandomCount() {
        random()
    }

    func getData() {
        self.loadTestData()
        self.viewInputDeligate?.setupInitialState()
    }

    func saveData() {

    }


}
