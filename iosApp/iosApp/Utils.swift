//
//  Utils.swift
//  iosApp
//

import Foundation
import UIKit

public let themeBaseColor = UIColor.init(hexString: "#48A9EE")
public let themeGrayColor = UIColor.init(hexString: "#212121")
public let themeLightGrayColor = UIColor.init(hexString: "#818181")
public let defaultDateFormat = "yyyy-MM-dd'T'HH:mm:ss"

public let endpointSite = "https://androidmakers.fr/"
public let endpointTwitter = "https://twitter.com/AndroidMakersFR"
public let endpointTwitterMota = "https://twitter.com/cafonsomota"
public let endpointGithub = "https://github.com/cmota/Android-Makers"

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        var hexInt: UInt32 = 0
        let scanner = Scanner(string: hexString)
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        scanner.scanHexInt32(&hexInt)
        
        let red = CGFloat((hexInt & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexInt & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexInt & 0xff) >> 0) / 255.0
        let alpha = alpha
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
