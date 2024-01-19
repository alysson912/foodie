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
        view.backgroundColor = .yellow
        return view
    }()
    
    private func addViews(){
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
    private func setupConstraints(){
        backGroundView.pin(to: self)
        NSLayoutConstraint.activate([ ])
    }
    
}
