//
//  HomeTableViewCellSreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class HomeTableViewCellSreen: UIView {
    
    
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        collectionView.delaysContentTouches = false
        // TO DO: Register
        collectionView.register(CardsCollectionViewCell.self, forCellWithReuseIdentifier: CardsCollectionViewCell.identifier)
        let layout = UICollectionViewFlowLayout.init()
       // layout.sectionInset = UIEdgeInsets(top: 10, left: 24, bottom: 10, right: 24)// a collection nasce com a cell contendo a distancias respectivas
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        
        return collectionView
    }()
    
    public func setupCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    private func addViews(){
        addSubview(collectionView)
        
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
        collectionView.pin(to: self)
        NSLayoutConstraint.activate( [
            
        ])
    }
}
