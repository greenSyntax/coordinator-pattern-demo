//
//  Coordinator.swift
//  coordinator-pattern-demo
//
//  Created by Abhishek Ravi on 02/01/23.
//

import UIKit

/*
 Isolates the Navigation Logic of the app from ViewController
 */
protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}
