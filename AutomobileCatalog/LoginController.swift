//
//  LoginController.swift
//  AutomobileCatalog
//
//  Created by Eric Grant on 23.09.2020.
//

import Foundation
import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "screen_image")
        return iv
    }()
    
    private lazy var emailContainerView: UIView = {
        let image = UIImage(systemName: "envelope.badge", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))
        let view = Utillities().inputContainerView(withImage: image!, textField: emailTextField)
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let image = UIImage(systemName: "lock", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))
        let view = Utillities().inputContainerView(withImage: image!, textField: passwordTextField)
        return view
    }()
    
    private let emailTextField: UITextField = {
        let tf = Utillities().textField(withPlaceholder: "Email")
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = Utillities().textField(withPlaceholder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .chineseBlack
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillEqually
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor,
                     left: view.leftAnchor,
                     right: view.rightAnchor,
                     paddingLeft: 32,
                     paddingRight: 32)
    }
}
