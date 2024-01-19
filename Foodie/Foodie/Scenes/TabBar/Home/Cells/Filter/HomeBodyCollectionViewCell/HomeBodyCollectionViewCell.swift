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
        screen.setupConstraints(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private  func addViews(){
        contentView.addSubview(screen)
    }
    
    
   private func configConstraints(){
       screen.pin(to: contentView)
        NSLayoutConstraint.activate([
            
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
extension HomeBodyCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FilterCollectionViewCell.identifier, for: indexPath) as? FilterCollectionViewCell
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: frame.width, height: 550)
    }
}
