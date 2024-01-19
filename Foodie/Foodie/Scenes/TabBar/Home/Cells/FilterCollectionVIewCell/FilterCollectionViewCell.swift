//
//  FilterCollectionViewCell.swift
//  Foodie
//
//  Created by Alysson Menezes on 19/01/24.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
    static let identifier: String = String(describing: FilterCollectionViewCell.self) // transforma o  que tiver aqui em string
    
    lazy var screen: FilterCollectionViewCellScreen = {
        let view = FilterCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func addViews(){
        contentView.addSubview(screen)
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
        screen.pin(to: contentView)
        NSLayoutConstraint.activate([
        ])
    }
    
//     func setupCell(data: HomeModel){
//        screen.genericImageView.image = UIImage(named: data.image ?? "")
//    }
}
