//
//  SheetFormVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 01/02/24.
//

import UIKit

class SheetFormVC: UIViewController {
    
    private var screen: SheetFormScreen?
    
    override func loadView() {
        screen = SheetFormScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyboard()
        screen?.delegate(delegate: self)
        screen?.configTextFieldDelegate(delegate: self)
    }
    



}

extension SheetFormVC: UITextFieldDelegate {
    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("textFieldDidBeginEditing")
//    }
//    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        print("textFieldDidEndEditing")
//    }
//
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
}

extension SheetFormVC: SheetFormScreenProtocol {
    func actionRegisterButton() {
        print("Botando adicionar item clicado!")
    }
    
    
}
