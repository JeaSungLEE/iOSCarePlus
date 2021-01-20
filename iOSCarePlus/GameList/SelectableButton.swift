//
//  SelectableButton.swift
//  iOSCarePlus
//
//  Created by Jercy on 2021/01/06.
//

import UIKit

class SelectableButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setTitleColor(UIColor(named: "black"), for: .selected)
        setTitleColor(UIColor(named: "VeryLightPink"), for: .normal)
        tintColor = .clear
    }
}

//class MyStyles: NSObject {
//    static func fontForStyle(style: String) -> UIFont {
//        switch style {
//        case "p":
//            return UIFont.systemFont(ofSize: 18)
//        case "h1":
//            return UIFont.boldSystemFont(ofSize: 36)
//        case "h2":
//            return UIFont.boldSystemFont(ofSize: 24)
//        default:
//            return MyStyle.fontForStyle("p")
//        }
//    }
//}
//
//@IBDesignable
//class MyLabel: UILabel {
//    @IBInspectable var style: String = "p" {
//        didSet { self.font = MyStyle.fontForStyle(style) }
//    }
//}
