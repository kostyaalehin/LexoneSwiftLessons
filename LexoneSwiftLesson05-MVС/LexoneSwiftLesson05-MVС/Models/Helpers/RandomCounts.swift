//
//  RandomCounts.swift
//  LexoneSwiftLesson05-MVС
//
//  Created by Константин Алехин on 09.06.2022.
//

import Foundation

class RandomCount {

    func getRandomCount(data: [Crypto]) -> Int {
        let randomCount = Int.random(in: 0..<data.count)
        return randomCount
    }
}
