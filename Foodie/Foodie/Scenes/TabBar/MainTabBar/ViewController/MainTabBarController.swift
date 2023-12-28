//
//  MainTabBarController.swift
//  RastreioBF
//
//  Created by Jessica Bigal on 09/09/22.
//

import UIKit

class MainTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTabBarController()
        configNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    
    private func configTabBarController() {
       let homeViewController = UINavigationController(rootViewController: HomeVC())
//        let warningViewController = UINavigationController(rootViewController: WarningViewController())
//        let menuViewController = UINavigationController(rootViewController: MenuScreenVC())
//        
        setViewControllers([homeViewController], animated: true)
        
        tabBar.tintColor = .white
        tabBar.tintColor = .red
        tabBar.backgroundColor = .white
        tabBar.alpha = 0.9
        tabBar.isTranslucent = false
        
        guard let items = tabBar.items else {return}
        
        items[0].title = "Home"
        items[0].image = UIImage(systemName: "house.fill")
//
//        items[1].title = LC.trackingTitleTab.text
//        items[1].image = UIImage(systemName: LC.trackingIcon.text)
//        
//        items[2].title = LC.menuTitleTab.text
//        items[2].image = UIImage(systemName: LC.menuIcon.text)
    }
    
    private func configNavigationBar(){
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
}

extension UINavigationBar {
    func customNavigationBar() {
        prefersLargeTitles = false
        largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemPink]
        titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemPink]
    }
}
