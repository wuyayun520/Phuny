
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let str_timeText:String = "Pingsize make create"
fileprivate let str_regularValue:String = "eguvaluer"

/*: "PingFangSC-Medium" :*/
fileprivate let str_managerName:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","M","e","d","i"]
fileprivate let str_statusData:String = "UM"

/*: "PingFangSC-Semibold" :*/
fileprivate let str_userIndexText:String = "PingFangvalue key game"
fileprivate let str_pathData:String = "SC-Slayer to model model"

/*: "PingFangSC-Thin" :*/
fileprivate let str_layerText:String = "else casePing"
fileprivate let str_addData:String = "SC-Thintype log var"

/*: "PingFangSC-Light" :*/
fileprivate let str_itemData:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let str_colorText:String = "cell table add hidden domainPingFa"
fileprivate let str_matchValue:String = "LTRALIG"
fileprivate let str_contentTitle:String = "herror"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func loadEnable(type: MakeFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(str_timeText.prefix(4)) + "FangSC-R" + str_regularValue.replacingOccurrences(of: "value", with: "la")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(str_managerName) + str_statusData.lowercased()), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(str_userIndexText.prefix(8)) + String(str_pathData.prefix(4)) + "emibold"), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(str_layerText.suffix(4)) + "Fang" + String(str_addData.prefix(7))), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(str_itemData)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(str_colorText.suffix(6)) + "ngSC-U" + str_matchValue.lowercased() + str_contentTitle.replacingOccurrences(of: "error", with: "t")), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func exceptEqual(fontSize: CGFloat) -> UIFont {
        //: return UIFont.loadEnable(type: .Regular, fontSize: fontSize)
        return UIFont.loadEnable(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func little(fontSize: CGFloat) -> UIFont {
        //: return UIFont.loadEnable(type: .Medium, fontSize: fontSize)
        return UIFont.loadEnable(type: .Medium, fontSize: fontSize)
    }
}
