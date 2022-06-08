//
//  Coordinator.swift
//  LexoneSwiftLesson04-Coordinator
//
//  Created by Константин Алехин on 08.06.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }

    func start()
}
