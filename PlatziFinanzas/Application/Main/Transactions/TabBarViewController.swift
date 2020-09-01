//
//  TabBarViewController.swift
//  PlatziFinanzas
//
//  Created by Alejandro Velasco on 30/08/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
                      let navBarAppearance = UINavigationBarAppearance()
                      navBarAppearance.configureWithOpaqueBackground()
                      navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                      navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                      navBarAppearance.backgroundColor = UIColor.init(named: "GreenColor")
                      navigationController?.navigationBar.standardAppearance = navBarAppearance
                      navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
                  }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
