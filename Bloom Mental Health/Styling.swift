//
//  Structures.swift
//  Bloom Mental Health
//
//  Created by Jonathan Chi on 9/11/23.
//

import Foundation
import UIKit

class Style {
    enum TextStyle {
        
        case title
        case subtitle
        case subsubtitle
        case information
        case button
    }

    struct TextAttributes {
        let font: UIFont
        let color: UIColor
        let backgroundColor: UIColor?

        init(font: UIFont, color: UIColor, backgroundColor: UIColor? = nil) {
            self.font = font
            self.color = color
            self.backgroundColor = backgroundColor
        }
    }

    // MARK: - General Properties
    let backgroundColor: UIColor
    let preferredStatusBarStyle: UIStatusBarStyle

    let attributesForStyle: (_ style: TextStyle) -> TextAttributes

    init(backgroundColor: UIColor,
         preferredStatusBarStyle: UIStatusBarStyle = .default,
         attributesForStyle: @escaping (_ style: TextStyle) -> TextAttributes)
    {
        self.backgroundColor = backgroundColor
        self.preferredStatusBarStyle = preferredStatusBarStyle
        self.attributesForStyle = attributesForStyle
    }

    // MARK: - Convenience Getters
    func font(for style: TextStyle) -> UIFont {
        return attributesForStyle(style).font
    }

    func color(for style: TextStyle) -> UIColor {
        return attributesForStyle(style).color
    }

    func backgroundColor(for style: TextStyle) -> UIColor? {
        return attributesForStyle(style).backgroundColor
    }
}


extension Style {
    static var myApp: Style {
        return Style(
            backgroundColor: .black,
            preferredStatusBarStyle: .lightContent,
            attributesForStyle: { $0.myAppAttributes }
        )
    }
}

private extension Style.TextStyle {
    var myAppAttributes: Style.TextAttributes {
        switch self {
        case .title:
            return Style.TextAttributes(font: .myAppTitle, color: UIColor(red: 87/255, green: 57/255, blue: 38/255, alpha: 1))
        case .subtitle:
            return Style.TextAttributes(font: .myAppSubtitle, color: UIColor(red: 87/255, green: 57/255, blue: 38/255, alpha: 1))
    
        case .subsubtitle:
            return Style.TextAttributes(font: .myAppSubSubtitle, color: UIColor(red: 87/255, green: 57/255, blue: 38/255, alpha: 1))
            
        case .information:
            return Style.TextAttributes(font: .myAppInformation, color: UIColor(red: 87/255, green: 57/255, blue: 38/255, alpha: 1))
        case .button:
            return Style.TextAttributes(font: .myAppButton, color: UIColor(red: 87/255, green: 57/255, blue: 38/255, alpha: 1))
        }
    }
}

//blue: rgba(185, 222, 230, 1);
//purple: rgba(170, 184, 234, 1);
//yellow: rgba(254, 234, 121, 1);
// light purple: rgba(243, 232, 255, 1);
//brown for text: rgba(87, 57, 38, 1);
//red for text: rgba(234, 107, 107, 1);



extension UIFont {
    static var myAppTitle: UIFont {
        return UIFont(name: "EpilogueRoman-Medium", size: 44.28)!
    }
    static var myAppSubtitle: UIFont {
        
        return UIFont(name: "EpilogueRoman-Bold", size: 22)!
    }
    
    static var myAppButton: UIFont {
        return UIFont(name: "EpilogueRoman-Bold", size: 14)!
    }
    
    static var myAppSubSubtitle: UIFont {
        return UIFont(name: "Rubik", size: 14)!
    }
    
    static var myAppInformation: UIFont {
        return UIFont(name: "Georgia", size: 12)!
    }
    
    
}

extension UIColor {
    static var blue : UIColor {
        return UIColor(red: 185/255, green: 222/255, blue: 230/255, alpha: 1)
    }
    static var purple : UIColor {
        return UIColor(red: 170/255, green: 184/255, blue: 234/255, alpha: 1)
    }
    static var yellow : UIColor {
        return UIColor(red: 254/255, green: 234/255, blue: 121/255, alpha: 1)
    }
    static var red : UIColor {
        return UIColor(red: 234/255, green: 107/255, blue: 107/255, alpha: 1)
    }
    static var brown : UIColor {
        return UIColor(red: 0.342, green: 0.224, blue: 0.151, alpha: 1)
    }
    static var white : UIColor {
        return UIColor(red: 0.957, green: 0.953, blue: 0.945, alpha: 1)
    }
    
    
}

