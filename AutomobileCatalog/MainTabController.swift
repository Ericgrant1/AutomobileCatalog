//
//  MainTabController.swift
//  AutomobileCatalog
//
//  Created by Eric Grant on 23.09.2020.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .chineseBlack
        button.setImage(UIImage(systemName: "text.badge.plus", withConfiguration: UIImage.SymbolConfiguration(weight: .regular)), for: .normal)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor,
                            right: view.rightAnchor,
                            paddingBottom: 64,
                            paddingRight: 16,
                            width: 56,
                            height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    func configureViewControllers() {
        
        let list = ListController()
        let nav1 = templateNavigationController(image: UIImage(systemName: "doc.text", withConfiguration: UIImage.SymbolConfiguration(weight: .regular)), rootViewController: list)
        
        let explore = ExploreController()
        let nav2 = templateNavigationController(image: UIImage(systemName: "magnifyingglass", withConfiguration: UIImage.SymbolConfiguration(weight: .regular)), rootViewController: explore)
        
        let notification = NotificationsController()
        let nav3 = templateNavigationController(image: UIImage(systemName: "heart", withConfiguration: UIImage.SymbolConfiguration(weight: .regular)), rootViewController: notification)
        
        let conversations = ConversationsController()
        let nav4 = templateNavigationController(image: UIImage(systemName: "envelope", withConfiguration: UIImage.SymbolConfiguration(weight: .regular)), rootViewController: conversations)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController:  rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
}
