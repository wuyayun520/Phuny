
//: Declare String Begin

/*: "action" :*/
fileprivate let str_bottomContent:[UInt8] = [0x79,0x7b,0x6c,0x71,0x77,0x76]

private func mmIcon(key num: UInt8) -> UInt8 {
    return num ^ 24
}

/*: "category" :*/
fileprivate let str_makeData:[UInt8] = [0x92,0x90,0xa3,0x94,0x96,0x9e,0xa1,0xa8]

fileprivate func pointCell(from num: UInt8) -> UInt8 {
    let value = Int(num) + 209
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "label" :*/
fileprivate let str_makeValue:String = "playabeplay"

/*: "user_action" :*/
fileprivate let str_valueAddData:String = "extension playuser_a"
fileprivate let str_replyTitle:[Character] = ["c","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CeremonyReactiveCompatible.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics

//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class CeremonyReactiveCompatible: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = CeremonyReactiveCompatible()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func systemValue(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func underTip(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            "action": action,
            //: "category": category,
            String(bytes: str_makeData.map{pointCell(from: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters["label"] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        familyName(name: (String(str_valueAddData.suffix(6)) + String(str_replyTitle)), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func colorLive(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func familyName(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func takeAPowder(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
