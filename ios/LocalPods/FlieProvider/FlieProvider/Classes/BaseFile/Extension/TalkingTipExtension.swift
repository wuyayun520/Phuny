
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let str_pushFrameValue:String = "string user menu selfJDSta"
fileprivate let str_normalTitle:String = "path self asrSty"

/*: "JDStatusBarStyleError" :*/
fileprivate let str_modeColorData:String = "after in makeJDSta"
fileprivate let str_cameraData:[Character] = ["r","S","t","y","l","e","E","r","r","o","r"]

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let str_rangeData:String = "female make view extension clickJDSt"
fileprivate let str_makeData:String = "succeed jumprStyle"

/*: "2AB572" :*/
fileprivate let str_bottomAddForData:String = "more"
fileprivate let str_equalData:String = "AB5file"

/*: "F05E5E" :*/
fileprivate let str_normalData:String = "FitemE5E"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: import JDStatusBarNotification
import JDStatusBarNotification

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func viewIntervalimate(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.firstMomentPlayer(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_pushFrameValue.suffix(5)) + "tusBa" + String(str_normalTitle.suffix(4)) + "leDefault"))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func noblesseExtra(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.firstMomentPlayer(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_modeColorData.suffix(5)) + "tusBa" + String(str_cameraData)))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func scaleMsg(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.firstMomentPlayer(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_rangeData.suffix(4)) + "atusBa" + String(str_makeData.suffix(6)) + "Success"))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func firstMomentPlayer(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.toMagnitude(token: consLet_limitText, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(str_modeColorData.suffix(5)) + "tusBa" + String(str_cameraData)) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
