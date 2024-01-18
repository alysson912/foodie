//
//  RequestVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 18/01/24.
//

import UIKit

class RequestVC: UIViewController {
    
    private var screen: RequestScreen?
    
    override func loadView() {
        screen = RequestScreen()
        view = screen
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
