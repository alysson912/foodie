//
//  MenuProfileTableViewCell.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 02/08/23.
//

import UIKit

class MenuProfileTableViewCell: UITableViewCell {
    
    static  let identifier: String =  String(describing: MenuProfileTableViewCell.self)
    
    let screen = MenuProfileTableViewCellScreen()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configScreen()
        setupConstraints()
        
    }
    
    private func configScreen(){
        selectionStyle = .none
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints(){
        screen.pin(to: contentView)
        NSLayoutConstraint.activate([
            
        ])
    }
    
    public func setupCell(data: MenuTitleCellList){
        screen.iconImageView.image = UIImage(systemName: data.iconImage ?? "")
        screen.titleLabel.text = data.titleMenuLabel
        screen.arrowImageView.image = UIImage(systemName: data.arrowIconimage ?? "")
    }
}
