//
//  NftFilterCollectionViewCell.swift
//  appNFT
//
//  Created by ALYSSON DODO on 22/04/23.
//

import UIKit

class HomeBodyCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier: String = String(describing: HomeBodyCollectionViewCell.self) // transforma o  que tiver aqui em string
    
    private lazy var screen: HomeBodyCollectionViewCellScreen = {
        let view = HomeBodyCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func addViews(){
        contentView.addSubview(screen)
    }
    
    
   private func configConstraints(){
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
//    public func setupCell(filter: FilterNft){
//        screen.filterLabel.text = filter.title ?? ""
//        if filter.isSelected ?? false {
//            screen.filterLabel.backgroundColor = .purple
//        }else {
//            screen.filterLabel.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1)
//        }
//    }
    
}