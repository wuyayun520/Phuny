
//: Declare String Begin

/*: "plist" :*/
fileprivate let str_loadContent:String = "plcentert"

/*: "In app purchase" :*/
fileprivate let str_latValue:[Character] = ["I","n"," ","a","p","p"," ","p","u","r","c","h","a"]
fileprivate let str_eventFromToValue:[Character] = ["s","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdjustThen.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import UIKit
import UIKit

//: import Adjust
import Adjust

//: class TalkingAdjustManager: NSObject {
class AdjustThen: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = AdjustThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = {
        //: guard let url = PodspecBundle.bundle.url(forResource: PodspecName, withExtension: "plist") else {
        guard let url = KeyPodspecBundle.bundle.url(forResource: consLet_screenLiveContent, withExtension: "plist") else {
            //: return [String: String]()
            return [String: String]()
        }
        //: guard let data = try? Data(contentsOf: url) else {
        guard let data = try? Data(contentsOf: url) else {
            //: return [String: String]()
            return [String: String]()
        }
        //: let dict = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        let dict = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil)
        //: return dict as! [String: String]
        return dict as! [String: String]
        //: }()
    }()
}

//: extension TalkingAdjustManager {
extension AdjustThen {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func uncolored(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(str_latValue) + String(str_eventFromToValue))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func subRequest(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func baptiseShow(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
