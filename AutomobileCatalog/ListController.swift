//
//  ListController.swift
//  AutomobileCatalog
//
//  Created by Eric Grant on 23.09.2020.
//

import Foundation
import UIKit

class ListController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "small_logo"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
        
//        iv.setDimensions(width: 48, height: 48)
//        iv.layer.cornerRadius = 48 / 2
    }
}
