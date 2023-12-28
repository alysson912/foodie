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
    


    
    private func configTabBarController() {
       let homeViewController = UINavigationController(rootViewController: HomeVC())
//        let warningViewController = UINavigationController(rootViewController: WarningViewController())
        let settingsViewController = UINavigationController(rootViewController: MenuVC())
//
        setViewControllers([homeViewController, settingsViewController], animated: true)
        
        tabBar.tintColor = .white
        tabBar.tintColor = .red
        tabBar.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        tabBar.alpha = 0.9
        tabBar.isTranslucent = false
        
        guard let items = tabBar.items else {return}
        
        items[0].title = "Home"
        items[0].image = UIImage(systemName: "house.fill")
//
        items[1].title = "Settings"
        items[1].image = UIImage(systemName: "gearshape")
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
