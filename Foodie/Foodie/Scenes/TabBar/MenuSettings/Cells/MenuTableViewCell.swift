//
//  MenuTableViewCell.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    static let identifier = String(describing: MenuTableViewCell.self)
    
    lazy var screen: MenuTableViewCellScreen = {
       let view = MenuTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func addViews(){
        contentView.addSubview(screen)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints(){
        screen.pin(to: self)
    }
    
    /**
     public func configCell(width model: SettingsOption) {
         label.text = model.title
         iconImageView.image = model.icon
         iconContainer.backgroundColor = model.iconBackgroundColor
     }
     
     */
}
