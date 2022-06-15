//
//  Dinamic.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 14.06.2022.
//

import Foundation

class Dinamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?

    func bin(_ listener: Listener?) {
        self.listener = listener
    }

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init (_ v: T) {
        value = v
    }
}
