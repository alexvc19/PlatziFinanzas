//
//  CustomBar.swift
//  PlatziFinanzas
//
//  Created by Alejandro Velasco on 30/08/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation

if #available(iOS 13.0, *) {
              let navBarAppearance = UINavigationBarAppearance()
              navBarAppearance.configureWithOpaqueBackground()
              navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
              navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
              navBarAppearance.backgroundColor = UIColor.init(named: "GreenColor")
              navigationController?.navigationBar.standardAppearance = navBarAppearance
              navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
          }
