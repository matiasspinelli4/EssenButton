//
//  UIColorExtension.swift
//  Essen
//
//  Created by Matías Spinelli on 02/10/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

public extension UIColor {
    
    static var bondiBlue: UIColor {
        if let color = UIColor(named: "bondiBlue", in: Bundle(for: EssenButton.self), compatibleWith: nil) {
            return color
        } else {
            return UIColor(red: 1.0, green: 171.0, blue: 178.0, alpha: 1.0)
        }
    }
    
    static var whisperWhite: UIColor {
        if let color = UIColor(named: "whisperWhite", in: Bundle(for: EssenButton.self), compatibleWith: nil) {
            return color
        } else {
            return UIColor(red: 235.0, green: 235.0, blue: 235.0, alpha: 1.0)
        }
    }
}
