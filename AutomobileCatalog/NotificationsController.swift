//
//  NotificationsController.swift
//  AutomobileCatalog
//
//  Created by Eric Grant on 23.09.2020.
//

import Foundation
import UIKit

class NotificationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
}
