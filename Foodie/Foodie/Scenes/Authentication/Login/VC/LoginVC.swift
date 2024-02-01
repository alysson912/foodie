//
//  LoginVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

import UIKit
import FirebaseAuth


class LoginVC: UIViewController {
    
    private var screen: LoginScreen?
    var auth: Auth?
    var alert: Alert?
    
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyboard()
        screen?.delegate(delegate: self)
        screen?.configTextFieldDelegate(delegate: self)
        auth = Auth.auth()
        alert = Alert(controller: self) // instanciando alert e informando qual classe que vai apresentar o alert
        
    }
    
    
}
extension LoginVC: LoginScreenProtocol {
    func actionLoginButton() {
        
        guard let login = screen else { return }
        
        auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { usuario, error in
            
            if error != nil {
                self.alert?.getAlert(titulo: "Atenção", mensagem: "Dados Incorretos,verifique e tente Novamente!!")
            } else {
                if usuario == nil {
                    self.alert?.getAlert(titulo: "Atenção", mensagem: "Tivemos um problema inesperado, tente novamente mais tarde")
                } else {
                    let VC = HomeVC()
                    let navVC = UINavigationController(rootViewController: VC)
                    navVC.modalPresentationStyle = .fullScreen
                    self.present(navVC, animated: true, completion: nil)
                }
            }
            
        })
    }
    
    func actionRegisterButton() {
        let vc = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true )
    }
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        self.screen?.validarTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
}
