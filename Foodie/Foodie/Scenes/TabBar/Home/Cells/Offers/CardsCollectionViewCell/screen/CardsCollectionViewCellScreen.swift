//
//  CardsCollectionViewCellScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class CardsCollectionViewCellScreen: UIView {
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var cardCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        collectionView.delaysContentTouches = false
        // TO DO: Register
        collectionView.register(OffersCardCollectionViewCell.self, forCellWithReuseIdentifier: OffersCardCollectionViewCell.identifier)
        let layout = UICollectionViewFlowLayout.init()
        // layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)// a collection nasce com a cell contendo a distancias respectivas
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        
        return collectionView
    }()
    
    public func setupCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        cardCollectionView.delegate = delegate
        cardCollectionView.dataSource = dataSource
    }
    
    private func addViews(){
        addSubview(backGroundView)
        backGroundView.addSubview(cardCollectionView)
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
        backGroundView.pin(to: self)
        cardCollectionView.pin(to: self)
        NSLayoutConstraint.activate([
        ])
    }
}
