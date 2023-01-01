//
//  LoginViewController.swift
//  coordinator-pattern-demo
//
//  Created by Abhishek Ravi on 30/12/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.view.backgroundColor = UIColor.white
    }
    
    @IBAction func buttonLoginAction(_ sender: Any) {
        let viewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let loginNavigationController = UINavigationController(rootViewController: viewController)
        UIApplication.shared.keyWindow?.rootViewController = loginNavigationController
    }
    
    
    @IBAction func buttonSignupAction(_ sender: Any) {
        let viewController = SignupViewController(nibName: "SignupViewController", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
