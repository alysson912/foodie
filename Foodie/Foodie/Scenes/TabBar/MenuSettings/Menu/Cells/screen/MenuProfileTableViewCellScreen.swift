//
//  MenuProfileTableViewCellScreen.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 02/08/23.
//

import UIKit

class MenuProfileTableViewCellScreen: UIView {
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var iconImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.backgroundColor = .darkGray
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 8
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    

    
    lazy var arrowImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = CustomColor.appGreen
        return image
    }()
    
    private func addViews(){
        addSubview(backGroundView)
        backGroundView.addSubview(iconImageView)
        backGroundView.addSubview(titleLabel)
        backGroundView.addSubview(arrowImageView)
       
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupSection(description: String){
        titleLabel.text = description
    }
    
    private func setupConstraints(){
        backGroundView.pin(to: self)
        NSLayoutConstraint.activate([
            
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.heightAnchor.constraint(equalToConstant: 45),
            iconImageView.widthAnchor.constraint(equalToConstant: 45),

            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            arrowImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            arrowImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            arrowImageView.heightAnchor.constraint(equalToConstant: 25),
            arrowImageView.widthAnchor.constraint(equalToConstant: 25),
  
        ])
    }
 
}
