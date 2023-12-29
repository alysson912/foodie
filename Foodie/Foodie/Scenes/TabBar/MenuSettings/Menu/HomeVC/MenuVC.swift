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
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetch(.mock)
        
    }
    
    
}

extension MenuVC: MenuProfileViewModelDelegate {
    func success() {
        screen?.configTableView(delegate: self, dataSource: self)
        screen?.tableView.reloadData()
    }
    
    func error(_ message: String) {
        print("deu ruim -> \(message)")
    }
    
    
}
extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section: section)
    }
    
    // remover description section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? { // passa uma view para que ela seja uma setion
        
        let view = SectionView()
        view.setupSection(description: viewModel.titleForSection(section: section))
        view.expandButton()
        return view
    }
    

    // reconfigurar tableViewCell 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuProfileTableViewCell.identifier, for: indexPath) as? MenuProfileTableViewCell
        cell?.setupCell(title: viewModel.titleCell(indexPath: indexPath))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

}
