//
//  HomeScreen.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 31/07/23.
//

import UIKit

class MenuScreen: UIView {

    lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Settings"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect() , style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none // retirando linhas
        tableView.showsVerticalScrollIndicator = false // desativando scrool indicator
        // TO DO: Register
        tableView.register(MenuProfileTableViewCell.self, forCellReuseIdentifier: MenuProfileTableViewCell.identifier)
        tableView.backgroundColor = .red//UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        // tableView.transform = CGAffineTransform(scaleX: 1, y: -1) // tableView Contraria/ append item de baixo pra cima
        return tableView
    }()
    
    public func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
 
    
    private func addViews(){
        addSubview(headerView)
        headerView.addSubview(titleLabel)
        addSubview(tableView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .cyan
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 40),
            
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
       
        ])
    }
  
    
 
}
