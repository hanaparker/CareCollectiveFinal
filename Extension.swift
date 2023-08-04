//
//  Extension.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/3/23.
//

import Foundation
import UIKit

extension UIColor {
    
    static let universalBlue = UIColor().colorFromHex("E9E9E9")
    static let deepBlue = UIColor().colorFromHex("939FA7")
    static let sageGreen = UIColor().colorFromHex("8B9983")
    func colorFromHex(_ hex : String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.brown
        }
        
        var rgb : UInt32 = 0
        Scanner(string: hexString).scanHexInt32(&rgb)
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgb & 0x0000FF) / 255.0, alpha: 1.0)
    }
}

