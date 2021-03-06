//
//  HomePageController.swift
//  Alat_V2
//
//  Created by Eva on 09/08/2017.
//  Copyright © 2017 Eva. All rights reserved.
//

import UIKit

class HomePageController: UIViewController {
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gradient_background")
        return imageView
    }()
    
    
    let containerView: UIView = {
        let view = UIView()
        return view
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Alat-icon-white")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let rightIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "phone")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let buttonsContainerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(textAndBackgroundRed , for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.cornerRadius = 7.5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    func handleLogin() {
        //        let homeController = HomeController(collectionViewLayout: UICollectionViewFlowLayout())
        //        let contentController = UINavigationController(rootViewController: homeController)
        //        let menuVC = SideMenuVC(collectionViewLayout: UICollectionViewFlowLayout())
        //        let rootViewController = RootVC(contentViewController: contentController, menuViewController: menuVC)
        //
        //        present(rootViewController, animated: false, completion: nil)
        
        
        
        let loginController = LoginController()
        present(loginController, animated: false, completion: nil)
    }
    
    
    func handleSignUp() {
        let getStartedLoginController = GetStartedLoginController()
        present(getStartedLoginController, animated: false , completion: nil)
     
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        present(loadingScreenWhiteBg, animated: false, completion: nil)
        
        
        
        view.addSubview(backgroundImageView)
        view.addSubview(containerView)
        containerView.addSubview(logoImageView)
        containerView.addSubview(rightIconImageView)
        containerView.addSubview(buttonsContainerView)
        buttonsContainerView.addSubview(signUpButton)
        buttonsContainerView.addSubview(loginButton)
        
        //setting constraints on subviews
        setupBackgroundImageView()
        setupContainerView()
        setuplogoImageView()
        setupRightIconImageView()
        setupButtonsContainerView()
        setupSignUpButton()
        setupLoginButton()
        
    }
        
    func setupBackgroundImageView() {
        
        backgroundImageView.anchorToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }
    
    func setupContainerView() {
        containerView.anchorToTop(top: backgroundImageView.topAnchor, left: backgroundImageView.leftAnchor, bottom: backgroundImageView.bottomAnchor, right: backgroundImageView.rightAnchor)
    }
    
    
    
    func  setuplogoImageView() {
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 65).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 65)
        
        
    }
    
    func setupRightIconImageView() {
        rightIconImageView.anchorWithConstantsToTop(top: containerView.topAnchor, left: nil, bottom: nil, right: containerView.rightAnchor, topConstant: 60, leftConstant: 0, bottomConstant: 0, rightConstant: 40)
        rightIconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        rightIconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
    }
    
    func setupButtonsContainerView() {
        buttonsContainerView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        buttonsContainerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60).isActive = true
        buttonsContainerView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.75).isActive = true
        buttonsContainerView.heightAnchor.constraint(equalToConstant: 112).isActive = true
        
    }
    
    func setupSignUpButton() {
        signUpButton.centerXAnchor.constraint(equalTo: buttonsContainerView.centerXAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: buttonsContainerView.topAnchor).isActive = true
        signUpButton.widthAnchor.constraint(equalTo: buttonsContainerView.widthAnchor).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    func setupLoginButton() {
        loginButton.centerXAnchor.constraint(equalTo: buttonsContainerView.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: buttonsContainerView.bottomAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: buttonsContainerView.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    
}



//Extends UIView class allows to easily specify constraints by calling either of the functions.
public extension UIView {
    
    func textAndBackgroundRed() -> UIColor {
        return UIColor(red: 178/255, green: 34/255, blue: 34/255, alpha: 1)
    }
    
    func textGray() -> UIColor {
        return UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
    }
    
    func otherComponentRed() -> UIColor {
        return UIColor(red: 128/255, green: 0/255, blue: 0/255, alpha: 1)
    }
    
    func anchorToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
        
        anchorWithConstantsToTop(top: top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
        
        
    }
    
    func anchorWithConstantsToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -rightConstant).isActive = true
        }
    }
    
}
