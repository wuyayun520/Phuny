
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let str_equalValue:[Character] = ["%","0","2","h","h","x"]

/*: "APNS Token =  :*/
fileprivate let str_pathPageValue:String = "makeNS"
fileprivate let str_mainData:String = " Tokefor curve send table"

/*: "APNS Token Error:  :*/
fileprivate let str_centerTitle:[Character] = ["A","P","N","S"," ","T","o","k","e","n"," ","E","r","r","o"]
fileprivate let str_pathContent:String = "r: view title"

/*: ." :*/
fileprivate let str_blockName:[Character] = ["."]

/*: "token =  :*/
fileprivate let str_handValue:[Character] = ["t","o","k","e","n"," ","="," "]

/*: "extra" :*/
fileprivate let str_disappearValue:String = "extmaina"

/*: "Unable to register for remote notifications: :*/
fileprivate let str_hiddenValue:[UInt8] = [0x4e,0x75,0x7a,0x79,0x77,0x7e,0x3b,0x6f,0x74,0x3b,0x69,0x7e,0x7c,0x72,0x68,0x6f,0x7e,0x69,0x3b,0x7d,0x74,0x69,0x3b,0x69,0x7e,0x76,0x74,0x6f,0x7e,0x3b,0x75,0x74,0x6f,0x72,0x7d,0x72,0x78,0x7a,0x6f,0x72,0x74,0x75,0x68,0x21]

private func streetSmart(equal num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "token" :*/
fileprivate let str_userSelectedText:[UInt8] = [0xfc,0xf7,0xf3,0xed,0xf6]

fileprivate func infoSucceed(kit num: UInt8) -> UInt8 {
    let value = Int(num) - 136
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "FCMToken" :*/
fileprivate let str_touchModelShareTitle:[Character] = ["F","C","M","T","o","k","e"]
fileprivate let str_tableTitle:String = "script"

/*: _LocalPush" :*/
fileprivate let str_sourceData:String = "_Localself if commit"
fileprivate let str_viewTitle:[Character] = ["P","u","s","h"]

/*: "identifier" :*/
fileprivate let str_resultName:[Character] = ["i","d","e","n","t"]
fileprivate let str_starName:[Character] = ["i","f","i","e","r"]

/*: "fcm_options" :*/
fileprivate let str_colorData:[Character] = ["f","c","m"]
fileprivate let str_commentName:String = "_optionsfee enable in"

/*: "image" :*/
fileprivate let str_centerName:[UInt8] = [0x71,0x75,0x79,0x7f,0x7d]

private func mediumName(player num: UInt8) -> UInt8 {
    return num ^ 24
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let str_tableValue:[UInt8] = [0xcb,0xb1,0x81,0xc8,0xb1,0x9d,0xcb,0xa3,0x85,0xc4,0xad,0xac,0xc4,0xad,0xb7,0xca,0xb2,0x88,0xd,0x0,0x0,0xd,0xca,0xb9,0x85,0xcb,0xa5,0x9a,0xcb,0xb1,0x87,0xcb,0xa3,0xa5,0xcb,0xb0,0xae,0x5,0x3,0x43,0x42,0x59,0x69,0x48,0x59,0x48,0x5f,0x40,0x44,0x43,0x48,0x49,0x4]

private func hiddenCurrent(title num: UInt8) -> UInt8 {
    return num ^ 45
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let str_appData:[Character] = ["本","\u{5730}","\u{63a8}","送","\u{901a}","\u{77e5}"]
fileprivate let str_enableValue:String = "failure--"
fileprivate let str_versionName:[Character] = [" ","用","户","\u{672a}","\u{6388}","\u{6743}","(",".","d","e","n","i","e","d",")"]

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let str_addData:[Character] = ["本","地","推","\u{9001}","通","知"," ","-","-"," ","用","户","未","授","权","(",".","e","p","h","e","m","e","r","a"]
fileprivate let str_bottomCenterName:String = "model if interaction modell)"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let str_pageName:String = "本地\u{63a8}送"
fileprivate let str_succeedData:[Character] = ["用","户","未","\u{6388}","权"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EveryLastBaseDelegate+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import Foundation
import Foundation

//: import FirebaseCore
import FirebaseCore

//: import FirebaseMessaging
import FirebaseMessaging

//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension EveryLastBaseDelegate {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func inscribe(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (str_pathPageValue.replacingOccurrences(of: "make", with: "AP") + String(str_mainData.prefix(5)) + "n = ") + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: EqualLogTool.writeDoing(msg: "APNS Token Error: \(error).")
                EqualLogTool.writeDoing(msg: (String(str_centerTitle) + String(str_pathContent.prefix(3))) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: "token = \(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func sexDown(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains("extra") {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo["extra"] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    EveryLastThen.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    EveryLastThen.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func colorNow(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: str_hiddenValue.map{streetSmart(equal: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func changeHandler(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            EveryLastThen.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            EveryLastThen.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains("extra") {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo["extra"] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                EveryLastThen.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                EveryLastThen.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func ikon(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = ["token": fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(str_touchModelShareTitle) + str_tableTitle.replacingOccurrences(of: "script", with: "n"))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension EveryLastBaseDelegate {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func userUrl(uid: String? = nil,
                       //: title: String? = nil,
                       title: String? = nil,
                       //: body: String,
                       body: String,
                       //: imageUrl: String? = nil) {
                       imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(consLet_deviceData)" + (String(str_sourceData.prefix(6)) + String(str_viewTitle))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(String(str_resultName) + String(str_starName)): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    titleImage(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: consLet_netTitle)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(str_colorData) + String(str_commentName.prefix(8)))] = ["image": newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    titleImage(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: str_tableValue.map{hiddenCurrent(title: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (String(str_appData) + str_enableValue.replacingOccurrences(of: "failure", with: " ") + String(str_versionName)))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (String(str_addData) + String(str_bottomCenterName.suffix(2))))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (str_pageName + "通知 -- " + String(str_succeedData)))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func titleImage(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(String(str_resultName) + String(str_starName))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func gestureAppear(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
