//
//  MenuProfileTableViewCellScreen.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 02/08/23.
//

import UIKit

class MenuProfileTableViewCellScreen: UIView {
    
    lazy var iconImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "k1" )
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "teste"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    

    
    lazy var arrowImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "gsl" )
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .clear
        return image
    }()
    
    private func addViews(){
        addSubview(iconImageView)
        addSubview(titleLabel)
        addSubview(arrowImageView)
       
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
        NSLayoutConstraint.activate([
            
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.heightAnchor.constraint(equalToConstant: 65),
            iconImageView.widthAnchor.constraint(equalToConstant: 65),

            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            arrowImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            arrowImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            arrowImageView.heightAnchor.constraint(equalToConstant: 65),
            arrowImageView.widthAnchor.constraint(equalToConstant: 65),
  
        ])
    }
 
}
