//
//  SettingsVC.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class MenuVC: UIViewController {

    private var screen: MenuScreen?
    
    override func loadView() {
        screen = MenuScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.setupTableView(delegate: self, dataSource: self)
      
    }
    

}
extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.identifier, for: indexPath) as? MenuTableViewCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
}
