//
//  Coordinator.swift
//  LexoneSwiftLesson07-MVVM
//
//  Created by Константин Алехин on 30.06.2022.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
