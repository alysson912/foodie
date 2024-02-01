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

    }
    



}
