//
//  CardsCollectionViewCell.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class CardsCollectionViewCell: UICollectionViewCell {
    static let identifier: String = String(describing: CardsCollectionViewCell.self) // transforma o  que tiver aqui em string
    
    lazy var screen: CardsCollectionViewCellScreen = {
        let view = CardsCollectionViewCellScreen()
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
        screen.setupCollectionView(delegate: self, dataSource: self)
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
extension CardsCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OffersCardCollectionViewCell.identifier, for: indexPath) as? OffersCardCollectionViewCell
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 35, height: 180)
    }
}
