//
//  ViewInputDeligate.swift
//  LexoneLesson03-MVP
//
//  Created by Константин Алехин on 06.06.2022.
//

import Foundation

protocol ViewInputDeligate: AnyObject {
    func setupInitialState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}
