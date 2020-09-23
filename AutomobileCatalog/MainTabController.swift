//
//  MainTabController.swift
//  AutomobileCatalog
//
//  Created by Eric Grant on 23.09.2020.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        let list = ListController()
        list.tabBarItem.image = UIImage(systemName: "doc.text", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))
        
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(systemName: "magnifyingglass", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))
        
        let notification = NotificationsController()
        notification.tabBarItem.image = UIImage(systemName: "heart", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(systemName: "envelope", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))
        
        viewControllers = [list, explore, notification, conversations]
    }
    
}
