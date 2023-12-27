//
//  HomeScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow //UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        return view
    }()
    
    private func addViews() {
        addSubview(backGroundView)
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
        NSLayoutConstraint.activate( [
            
        ])
    }
}
