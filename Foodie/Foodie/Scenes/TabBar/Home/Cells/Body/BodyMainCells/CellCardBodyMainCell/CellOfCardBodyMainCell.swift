//
//  CellCardBodyMainCell.swift
//  Foodie
//
//  Created by Alysson Menezes on 19/01/24.
//

import UIKit

class CellOfCardBodyMainCell: UICollectionViewCell {
    static let identifier: String = String(describing: CellOfCardBodyMainCell.self) // transforma o  que tiver aqui em string
    
    lazy var screen: CellOfCardBodyMainCellScreen = {
        let view = CellOfCardBodyMainCellScreen()
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
