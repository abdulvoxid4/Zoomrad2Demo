//
//  TabBarVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class TabBarVC: UITabBarController {
    
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
//            self.navigationController?.setNavigationBarHidden(true, animated: animated)
        }

        
    override func viewDidLoad() {
//        self.navigationItem.hidesBackButton = true
        let homeVC =  UINavigationController(rootViewController: HomeVC())
        let paymentsVC = UINavigationController(rootViewController:PaymentsVC())
        let transferMoneyVC = UINavigationController(rootViewController:TransferMoneyVC())
        let helpVC = UINavigationController(rootViewController:HelpVC())
        let moreServicesVC = UINavigationController(rootViewController: MoreServicesVC())
        
        homeVC.tabBarItem.title = "Asosiy"
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarController?.tabBar.tintColor = .red
        
        paymentsVC.tabBarItem.title = "To`lovlar"
        paymentsVC.tabBarItem.image = UIImage(systemName: "creditcard")
        
        transferMoneyVC.tabBarItem.title = "O'tkazma"
        transferMoneyVC.tabBarItem.image = UIImage(systemName: "arrow.left.arrow.right")
        
        helpVC.tabBarItem.title = "Yordam"
        helpVC.tabBarItem.image = UIImage(systemName: "bubble.left.and.bubble.right")
        
        moreServicesVC.tabBarItem.title = "Ko'proq"
        moreServicesVC.tabBarItem.image = UIImage(systemName: "ellipsis.circle")
        
        viewControllers = [homeVC, paymentsVC, transferMoneyVC, helpVC, moreServicesVC]
        selectedIndex = 0
       tabBar.barTintColor = .rgb(73, 83, 96)
        
//        tabBar.isTranslucent = false
        
        // Set the title color for normal state
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)

        // Set the title color for selected state
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.rgb(102, 183, 144)], for: .selected)
        

    }
    

}
