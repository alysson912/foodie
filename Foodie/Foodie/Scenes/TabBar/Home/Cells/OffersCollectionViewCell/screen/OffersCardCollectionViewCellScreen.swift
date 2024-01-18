//
//  OffersCardCollectionViewCellScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 18/01/24.
//

import UIKit

class OffersCardCollectionViewCellScreen: UIView {
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemIndigo //UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    
    private func addViews(){
        addSubview(backGroundView)
       
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor =  UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints(){
        backGroundView.pin(to: self)
      
        NSLayoutConstraint.activate([
        ])
    }
}
