//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Liron Ezer on 09/03/2023.
//

import UIKit

/// Controller to house tabs and routes tab controllers
final class RMTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }
    
    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
    
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: episodeVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations",
                                       image: UIImage(systemName: "globe"),
                                       tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                       image: UIImage(systemName: "tv"),
                                       tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 1)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true
        )
    }
    
}

