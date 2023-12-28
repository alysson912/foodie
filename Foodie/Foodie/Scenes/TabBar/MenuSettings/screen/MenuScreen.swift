//
//  SettingsScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class MenuScreen: UIView {
    
    lazy var viewBackGround: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow//UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine // retirando linhas
        tableView.showsVerticalScrollIndicator = false // desativando scrool indicator
        // TO DO: Register
         tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: MenuTableViewCell.identifier)
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        tableView.isScrollEnabled = false
        return tableView
    }()
    
    public func setupTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    private func addViews() {
        addSubview(viewBackGround)
        viewBackGround.addSubview(tableView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints() {
        viewBackGround.pin(to: self)
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0),
        ])
    }
}
