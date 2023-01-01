//
//  AppCordinator.swift
//  coordinator-pattern-demo
//
//  Created by Abhishek Ravi on 02/01/23.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func routeToHome() {
        let viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func routeToSignUp() {
        let viewController = SignupViewController(nibName: "SignupViewController", bundle: nil)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func routeToAbout() {
        let viewController = AboutViewController(nibName: "AboutViewController", bundle: nil)
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
