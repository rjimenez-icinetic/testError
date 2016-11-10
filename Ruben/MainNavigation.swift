//
//  MainNavigation.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Foundation
import SlideMenuControllerSwift

class MainNavigation {

    var rootViewController: UIViewController!
    
    lazy var mainController: UIViewController! = {
        return MainMenuViewController()
    }()

    var loginViewController: LoginViewController?
    
    init() {
        
        loginViewController = LoginViewController()
        loginViewController!.loginService = BasicAuthLoginService(appId: "92f7c6c5-06f3-4207-b608-a04e5046a0ef")
        loginViewController!.mainViewController = mainController
        
        rootViewController = UINavigationController(rootViewController: loginViewController!)
    }
    
    func logout() {
    
        if let loginViewController = loginViewController, mainViewController = loginViewController.mainViewController {
            
            LoginManager.sharedInstance.reset()
            
            mainViewController.dismissViewControllerAnimated(true, completion: {
            
                self.mainController = nil
                loginViewController.mainViewController = self.mainController
            })
        }
    }
		
}

