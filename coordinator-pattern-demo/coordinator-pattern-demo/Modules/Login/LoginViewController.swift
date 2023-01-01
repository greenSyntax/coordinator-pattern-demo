//
//  LoginViewController.swift
//  coordinator-pattern-demo
//
//  Created by Abhishek Ravi on 30/12/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.view.backgroundColor = UIColor.white
    }
    
    @IBAction func buttonLoginAction(_ sender: Any) {
        coordinator?.routeToHome()
    }
    
    
    @IBAction func buttonSignupAction(_ sender: Any) {
        coordinator?.routeToSignUp()
    }
    
}
