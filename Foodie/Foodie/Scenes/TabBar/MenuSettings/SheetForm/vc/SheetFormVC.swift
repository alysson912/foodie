//
//  SheetFormVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 01/02/24.
//

import UIKit
import FirebaseFirestoreInternal

class SheetFormVC: UIViewController {
    private var screen: SheetFormScreen?
    private var firestore:Firestore?
    private var viewModel = SheetViewModel()
    
 
    
    override func loadView() {
        screen = SheetFormScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegate(delegate: self)
        screen?.delegate(delegate: self)
        dismissKeyboard()
        firestore = Firestore.firestore()
    }
    

    
}
extension SheetFormVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension SheetFormVC: SheetFormScreenProtocol {
    func actionRegisterButton(){ // passar dados para salvar aqui
        viewModel.fetch(.createNewCollection(data: SheetModel(name: screen?.getName() ?? "", description: screen?.getDescription() ?? "", price: screen?.getPrice() ?? "")))
        self.dismiss(animated: true, completion: nil)
        
    }
}



