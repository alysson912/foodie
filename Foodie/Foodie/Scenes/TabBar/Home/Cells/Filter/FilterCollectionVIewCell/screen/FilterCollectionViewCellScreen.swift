//
//  FilterCollectionViewCellScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 19/01/24.
//

import UIKit

class FilterCollectionViewCellScreen: UIView {
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemOrange
        return view
    }()
    
    lazy var genericLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Filtro"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        return label
    }()
    
    private func addViews(){
        addSubview(backGroundView)
        backGroundView.addSubview(genericLabel)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints(){
        backGroundView.pin(to: self)
        NSLayoutConstraint.activate([
        
            genericLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            genericLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
