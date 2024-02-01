//
//  HomeScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var viewBackGround: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor =  UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        collectionView.delaysContentTouches = false
        // TO DO: Register
        collectionView.register(HomeBodyCollectionViewCell.self, forCellWithReuseIdentifier: HomeBodyCollectionViewCell.identifier)
        collectionView.register(CardsCollectionViewCell.self, forCellWithReuseIdentifier: CardsCollectionViewCell.identifier)
        collectionView.register(CardBodyCollectionViewCell.self, forCellWithReuseIdentifier: CardBodyCollectionViewCell.identifier)
        let layout = UICollectionViewFlowLayout.init()
        collectionView.setCollectionViewLayout(layout, animated: false)
        
        return collectionView
    }()
    
    public func setupCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    private func addViews(){
        addSubview(viewBackGround)
        viewBackGround.addSubview(collectionView)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstrains() {
        viewBackGround.pin(to: self)
        NSLayoutConstraint.activate( [ 
            collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
}
