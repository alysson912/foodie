//
//  ViewController.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

import UIKit

class HomeVC: UIViewController {
    
    private var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

