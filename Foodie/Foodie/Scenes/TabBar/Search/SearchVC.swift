//
//  SearchVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 18/01/24.
//

import UIKit

class SearchVC: UIViewController {
    
    private var screen: SearchScreen?

    override func loadView() {
        screen = SearchScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
