//
//  LoginVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

import UIKit

class LoginVC: UIViewController {
    
    private var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextFieldDelegate(delegate: self)
        
        
        
    }
    
    
}
extension LoginVC: LoginScreenProtocol {
    func actionLoginButton() {
        let homeVC = HomeVC()
        self.navigationController?.pushViewController(homeVC, animated: true )
    }
    
    func actionRegisterButton() {
        let vc = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true )
    }
    
    
}

extension LoginVC: UITextFieldDelegate {
    
}
