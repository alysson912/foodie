//
//  RegisterVCViewController.swift
//  LoginViewCode
//
//  Created by ALYSSON MENEZES on 17/05/22.
//

import UIKit


class RegisterVC: UIViewController {

    var registerScreen: RegisterScreen?
//    var auth : Auth?
//    var alert : Alert?
    
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
//        self.auth = Auth.auth()
//        self.alert = Alert(controller: self)
    }
}
     extension RegisterVC: UITextFieldDelegate {
         
         func textFieldDidEndEditing(_ textField: UITextField) {
             self.registerScreen?.validarTextFields()
         }
         
         func textFieldShouldReturn(_ texField: UITextField) -> Bool {
        texField.resignFirstResponder()
             
         return true
    }
}

extension RegisterVC: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
//        guard let register = self.registerScreen else { return }
//       
//  
//        
//        self.auth?.createUser(withEmail: register.getEmail(), password: register.getPassword(), completion: { (result, error) in
//            if error != nil{
//                self.alert?.getAlert(titulo: "Atenção", mensagem: " Error ao Cadastrar ")
//            }else {
//                self.alert?.getAlert(titulo: " Atenção", mensagem: "Cadastrado com Sucesso ! ", completion: {
//                    self.navigationController?.popViewController(animated: true)
//                })
//            }
//        })
        
    }
    
    
}
