//
//  Shadow.swift
//  PlatziFinanzas
//
//  Created by Alejandro Velasco on 17/08/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit

extension UIView{
    var borderUIColor: UIColor{
        get {
            guard let color = layer.borderColor else {
                return UIColor.black
            }
            return UIColor(cgColor: color)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}
