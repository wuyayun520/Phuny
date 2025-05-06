
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let str_fromData:String = "#8A79fade to height"
fileprivate let str_cellValue:String = "Fcolor"

/*: "#E6BD8B" :*/
fileprivate let str_againData:String = "#Eas should let"
fileprivate let str_giftMessageData:String = "error plus as corner refuse6BD8B"

/*: "#F5F5F8" :*/
fileprivate let str_showValue:String = "info if info in view#F5F5F8"

/*: "333333" :*/
fileprivate let str_userValue:[Character] = ["3","3","3","3","3","3"]

/*: "FF2348" :*/
fileprivate let str_videoValue:String = "ff2348"

/*: "666666" :*/
fileprivate let str_tableData:String = "shared"
fileprivate let str_currentSignName:[Character] = ["6","6","6","6","6"]

/*: "999999" :*/
fileprivate let str_valueCenterContent:String = "onononononon"

/*: "7C74F4" :*/
fileprivate let str_bottomTitle:String = "result comment7C74F4"

/*: "B97AF8" :*/
fileprivate let str_hiddenValue:[Character] = ["B","9","7","A","F","8"]

/*: "#FF5C9D" :*/
fileprivate let str_rawValue:String = "bottom count if height manager#FF5C9D"

/*: "#EEEEEE" :*/
fileprivate let str_titleSizeValue:[Character] = ["#","E","E","E","E","E"]
fileprivate let str_contentText:String = "kit"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation

//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func computeImage(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func labelSumervalMedium() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: "#8A79F9")!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func beyondEnd() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: "#E6BD8B")!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func primaryColorBarContent() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: "#F5F5F8")!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func appNameVisualProperty() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: "333333")!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func everyUser() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: "FF2348")!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func frontColor() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: "666666")!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func bringHomeColor() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: "999999")!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func gradient() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: "7C74F4")!.cgColor, UIColor(hex: "B97AF8")!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func appInVisualProperty() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func produceColor() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: "#EEEEEE")!
    }

    //: class func getRandomColor() -> UIColor {
    class func colorAdd() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
