//
//  CardsCollectionViewCellScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class CardsCollectionViewCellScreen: UIView {
    
    
    lazy var genericImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "k1" )
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private func addViews(){
        addSubview(genericImageView)
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
        genericImageView.pin(to: self)
        NSLayoutConstraint.activate([
        ])
    }
}
