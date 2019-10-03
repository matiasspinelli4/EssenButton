//
//  EssenButton.swift
//  Essen
//
//  Created by Matías Spinelli on 02/10/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

enum EssenButtonStyle: String {
    case bordered
    case filled
    case normal
    case disabled
}

@IBDesignable
public class EssenButton: UIButton {

    // MARK: - Inspectables
    @IBInspectable var borderLineWidth: CGFloat = 2 {
        didSet {
            layer.borderWidth = borderLineWidth
        }
    }
    
    @IBInspectable var borderLineColor: UIColor = .white {
        didSet {
            layer.borderColor = borderLineColor.cgColor
            setTitleColor(borderLineColor, for: UIControl.State.normal)
        }
    }
    
    @IBInspectable var borderLineRadius: CGFloat = 10 {
        didSet {
            layer.cornerRadius = borderLineRadius
        }
    }
    
    @IBInspectable var stringStyle: String = "" {
        didSet {
            buttonStyle = EssenButtonStyle(rawValue: stringStyle)
        }
    }
    
    // MARK: - Essen Button Style
    var buttonStyle: EssenButtonStyle? {
        didSet {
            switch buttonStyle {
            case .bordered?:
                borderLineWidth = 2
                borderLineColor = .bondiBlue
                backgroundColor = .clear
                setTitleColor(.bondiBlue, for: .normal)
            case .filled?:
                borderLineWidth = 0
                backgroundColor = .bondiBlue
                setTitleColor(.white, for: .normal)
            case .normal?:
                borderLineWidth = 0
                backgroundColor = .clear
                setTitleColor(.bondiBlue, for: .normal)
            case .disabled?:
                borderLineWidth = 0
                backgroundColor = .whisperWhite
                setTitleColor(.darkGray, for: .normal)
            case .none:
                break
            }
            titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
            borderLineRadius = 10
        }
    }
}

