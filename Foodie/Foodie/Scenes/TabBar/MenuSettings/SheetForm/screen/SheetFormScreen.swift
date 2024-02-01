//
//  SheetFormScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 01/02/24.
//

import UIKit

class SheetFormScreen: UIView {

    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow//UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cadastro"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    private func addViews() {
        addSubview(backGroundView)
        backGroundView.addSubview(titleLabel)
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
        backGroundView.pin(to: self)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
