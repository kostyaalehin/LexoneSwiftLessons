//
//  ViewOutputDeligate.swift
//  LexoneLesson03-MVP
//
//  Created by Константин Алехин on 06.06.2022.
//

import Foundation

protocol ViewOutputDeligate: AnyObject {
    func getData()
    func saveData()
    func getRandomCount()
}
