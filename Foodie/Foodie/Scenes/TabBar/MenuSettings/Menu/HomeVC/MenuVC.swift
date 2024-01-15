//
//  ViewController.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 31/07/23.
//

import UIKit

class MenuVC: UIViewController {
    
    private var screen: MenuScreen?
    private let viewModel: MenuProfileViewModel = MenuProfileViewModel()
    
    override func loadView() {
        screen = MenuScreen()
        view = screen
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //    screen?.configTableView(delegate: self, dataSource: self)
        viewModel.delegate(delegate: self)
        viewModel.fetch(.mock)
        
    }
    
    
}

extension MenuVC: MenuProfileViewModelDelegate {
    func success() {
        DispatchQueue.main.async {
            self.screen?.configTableView(delegate: self, dataSource: self)
            self.screen?.tableView.reloadData()
        }
    }
    
    func error(_ message: String) {
        print("deu ruim -> \(message)")
    }
}


extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfSections
        
    }


    // reconfigurar tableViewCell 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuProfileTableViewCell.identifier, for: indexPath) as? MenuProfileTableViewCell
        cell?.setupCell(data: viewModel.loadCurrenDatat(indexPath: indexPath))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }

}
