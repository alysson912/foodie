//
//  SheetFormVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 01/02/24.
//

import UIKit
import FirebaseFirestoreInternal

class SheetFormVC: UIViewController {
    
    private let service = StockProfileService()
    var screen: SheetFormScreen?
    private var firestore:Firestore?
    private var viewModel = SheetViewModel()
    override func loadView() {
        screen = SheetFormScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyboard()
        screen?.delegate(delegate: self)
        screen?.configTextFieldDelegate(delegate: self)
        firestore = Firestore.firestore()
        viewModel.fetch(.createCollection)
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
        textField.resignFirstResponder()
        return true
    }
}

extension SheetFormVC: SheetFormScreenProtocol {
    func actionRegisterButton(){
        guard let screen = self.screen else {return}
        
        
        
        self.dismiss(animated: true, completion: nil)
    }
}
