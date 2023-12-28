//
//  HomeScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var viewBackGround: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor =  UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.clipsToBounds = true
        searchBar.layer.cornerRadius = 20
        searchBar.placeholder = "Pesquise pelo nome:"
        return searchBar
    }()
    
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none // retirando linhas
        tableView.showsVerticalScrollIndicator = false // desativando scrool indicator
        // TO DO: Register
         tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return tableView
    }()
    
    public func setupTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    private func addViews(){
        addSubview(viewBackGround)
        viewBackGround.addSubview(searchBar)
        viewBackGround.addSubview(tableView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstrains() {
        viewBackGround.pin(to: self)
        NSLayoutConstraint.activate( [
            
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            searchBar.heightAnchor.constraint(equalToConstant: 46),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 15),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
