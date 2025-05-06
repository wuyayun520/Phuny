
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let str_socialData:[UInt8] = [0x5e,0x4c,0x49,0x5d,0x50,0x4c,0x5e,0x66,0x5b,0x4f,0x50,0x59,0x4b,0x66,0x59,0x4c,0x4d,0x59,0x4c,0x5a,0x4f,0x4a,0x56,0x50,0x55,0x66,0x55,0x56,0x5b,0x50,0x4d,0x50,0x4a,0x48,0x5b,0x50,0x56,0x55]

fileprivate func makeSharedObject(pic num: UInt8) -> UInt8 {
    let value = Int(num) - 7
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "goodsId" :*/
fileprivate let str_createTitle:String = "sayods"
fileprivate let str_cellValue:String = "self self itemId"

/*: "source" :*/
fileprivate let str_kitData:String = "sorankc"
fileprivate let str_userValue:[Character] = ["e"]

/*: "type" :*/
fileprivate let str_selectedTitle:[Character] = ["t","y","p","e"]

/*: "title" :*/
fileprivate let str_likeViewText:[Character] = ["t","i","t","l","e"]

/*: "url" :*/
fileprivate let str_officialText:String = "urmention"

/*: "money" :*/
fileprivate let str_listMakeValue:String = "temponey"

/*: "Other" :*/
fileprivate let str_pushName:String = "Otherabout bottom"

/*: "show" :*/
fileprivate let str_commitData:[Character] = ["s","h","o","w"]

/*: "target" :*/
fileprivate let str_mLayerName:[Character] = ["t"]
fileprivate let str_userModelData:String = "nextrget"

/*: "eventName" :*/
fileprivate let str_screenText:[Character] = ["e","v","e","n","t","N"]
fileprivate let str_voiceName:String = "amanagere"

/*: "jsonString" :*/
fileprivate let str_topLayerContent:[Character] = ["j"]
fileprivate let str_reportValue:[Character] = ["s","o","n","S","t","r","i","n","g"]

/*: "coin" :*/
fileprivate let str_digitalValue:[Character] = ["c","o","i","n"]

/*: "uid" :*/
fileprivate let str_styleListText:String = "udatad"

/*: "未实现的js事件： :*/
fileprivate let str_voiceTitle:[Character] = ["未","\u{5b9e}","现","的","j","s","\u{4e8b}","件","："]

/*: "Retry After or Go to \"Feedback\" to contact us" :*/
fileprivate let str_actionName:[UInt8] = [0x39,0xe,0x1f,0x19,0x12,0x4b,0x2a,0xd,0x1f,0xe,0x19,0x4b,0x4,0x19,0x4b,0x2c,0x4,0x4b,0x1f,0x4,0x4b,0x49,0x2d,0xe,0xe,0xf,0x9,0xa,0x8,0x0,0x49,0x4b,0x1f,0x4,0x4b,0x8,0x4,0x5,0x1f,0xa,0x8,0x1f,0x4b,0x1e,0x18]

private func modelRow(dimension num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "Apple" :*/
fileprivate let str_normalCallValue:String = "perform title info if sharedApple"

/*: " apple支付充值失败： :*/
fileprivate let str_makeText:String = "\u{f8ff} app"

/*: "payResultCallback();" :*/
fileprivate let str_appToName:[Character] = ["p","a","y","R","e","s","u","l","t","C","a","l","l","b","a","c","k","(",")"]
fileprivate let str_roomName:String = "little"

/*: "USD" :*/
fileprivate let str_modelText:String = "firstSD"

/*: "amount" :*/
fileprivate let str_managerControlFileName:[UInt8] = [0xd4,0xe0,0xe2,0xe8,0xe1,0xe7]

fileprivate func marginOfSafety(birth num: UInt8) -> UInt8 {
    let value = Int(num) - 115
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let str_modelValue:[UInt8] = [0x99,0x9b,0x8a,0xad,0x87,0x8d,0x8a,0x9b,0x93,0xb0,0x91,0x8a,0x97,0x98,0x97,0x9d,0x9f,0x8a,0x97,0x91,0x90,0x8a,0xad,0x8a,0x9f,0x8a,0x8b,0x8d,0xd6,0x8a,0x8c,0x8b,0x9b,0xd7]

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let str_tapCellValue:[UInt8] = [0xcf,0xcd,0xdc,0xfb,0xd1,0xdb,0xdc,0xcd,0xc5,0xe6,0xc7,0xdc,0xc1,0xce,0xc1,0xcb,0xc9,0xdc,0xc1,0xc7,0xc6,0xdc,0xfb,0xdc,0xc9,0xdc,0xdd,0xdb,0x80,0xce,0xc9,0xc4,0xdb,0xcd,0x81]

/*: "mfBean" :*/
fileprivate let str_beginValue:[UInt8] = [0x80,0x8b,0xaf,0x88,0x8c,0x83]

/*: "%.2f" :*/
fileprivate let str_intimateSizeName:String = "label self bottom self%.2f"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualViewController+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit

//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let consLet_errorValue = NSNotification.Name(rawValue: String(bytes: str_socialData.map{makeSharedObject(pic: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension EqualViewController {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func imageDown(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = BeginConvertible(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.onDoing(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            toLogin()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            nameUpType(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json["type"].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                consLet_windowData = consLet_userText
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                consLet_windowData = consLet_userText
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            enrich(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            raze(title: json["title"].stringValue, url: json["url"].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payType: "Other")
            typeDoing(price: Double(json["money"].stringValue) ?? 0, payType: "Other")

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            giftShow(show: json["show"].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            allUrl(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: PostPushManager.share.func__pushToPriveteChatVC(chatID: OverdoReactiveCompatible.getCustomerServiceID())
            PostPushManager.share.birthday(chatID: OverdoReactiveCompatible.use())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json["target"].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: PostPushManager.share.func__pushToSubscribePageWebVC()
                PostPushManager.share.nearQuitShow()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = AtPhotoDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                sectionClick()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                plan(type: TextValueConvertible.Moment)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: consLet_changeNameData,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                plan(type: TextValueConvertible.Account)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                plan(type: TextValueConvertible.Social)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                plan(type: TextValueConvertible.Message)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = ViewDataSource()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                plan(type: TextValueConvertible.Moment)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json["type"].intValue
            //: changeNotifaStatus(type: type)
            micType(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            viewPoint()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            noneParty(eventName: json[(String(str_screenText) + str_voiceName.replacingOccurrences(of: "manager", with: "m"))].stringValue, jsonStr: json[(String(str_topLayerContent) + String(str_reportValue))].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            roomData(coin: json["coin"].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            deleteRefresh()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            individualVibrate()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            DeviceManagerRequest.readOut { _, _, _ in
                //: if IndexStyleAppManager.share.loginUserMode.jumpType == 1 {
                if IndexStyleAppManager.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.onDoing(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: PostPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                        PostPushManager.share.exceptBe(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: PostPushManager.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            PostPushManager.share.birthday(chatID: json["uid"].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: PostPushManager.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            PostPushManager.share.miniskirt(uid: json["uid"].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: PostPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            PostPushManager.share.seeThroughEvent(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.onDoing(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            gapUrl(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(str_voiceTitle)) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果支付订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func enrich(type _: String, productId: String, payType: InvisibleType) {
        //: applePay(productId: productId, payType: payType)
        nameUpType(productId: productId, payType: payType)
    }

    /// 苹果支付
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func nameUpType(productId: String, source: Int = -1, payType: InvisibleType) {
        //: if IndexStyleAppManager.share.loginUid.isEmptyString {
        if IndexStyleAppManager.share.loginUid.isEmptyString {
            //: return
            return
        }

        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { type, reportMoney in
        SoundPressureLevelTransactionObserver.shared.errorObserve(productId: productId, payType: payType, source: index) { type, reportMoney in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch type {
                switch type {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    DeviceFailThen.picToast(String(bytes: str_actionName.map{modelRow(dimension: $0)}, encoding: .utf8)!.localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney)
                    transferMore(price: reportMoney)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: refreshCoin(price: reportMoney, payType: "Apple")
                    typeDoing(price: reportMoney, payType: "Apple")
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(type.rawValue)")
                    printLog(message: (str_makeText + "le支付充值失败：") + "\(type.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func raze(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = LabelPositionReactiveCompatible()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.computeImage(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(playerHead), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = ["url": url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func playerHead(button: LabelPositionReactiveCompatible) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?["url"] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        textExecuteView()
    }

    /// 退出登录
    //: private func needLogin() {
    private func toLogin() {
        //: guard Int(IndexStyleAppManager.share.loginUid) ?? 0 > 0 else {
        guard Int(IndexStyleAppManager.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: consLet_askData,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果支付成功验证通过
    /// - Parameter price: 充值金额
    //: func appleIAPVeritySucceed(price: Double) {
    func transferMore(price: Double) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(str_appToName) + str_roomName.replacingOccurrences(of: "little", with: ";"))) { _, _ in
        }
        //: refreshCoin(price: price, payType: "Apple")
        typeDoing(price: price, payType: "Apple")
    }

    /// 支付成功刷新个人信息【apple/paypal】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payType: 类型
    //: private func refreshCoin(price: Double, payType: String) {
    private func typeDoing(price: Double, payType: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_barValue, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_exploreScreenValue, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_controlData, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_RESIDUALINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_timeKeyValue, object: nil)

        // 成功埋点
        //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
        AdjustThen.share.uncolored(price: price, currency: "USD")
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payType, price: price, currency: "USD")
        CeremonyReactiveCompatible.share.takeAPowder(payType: payType, price: price, currency: "USD")

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if consLet_windowData.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            consLet_contentData.selectEvent(eventID: consLet_windowData, parameterStr: ["amount": price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_errorValue, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func giftShow(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func sectionClick() {
        //: if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isSuccessed.rawValue {
            //: return
            return
                //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.unknown.rawValue {
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
            //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = StyleViewController()
            //: PostPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            PostPushManager.share.overDoinglineVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
        }
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func plan(type: TextValueConvertible) {
        guard let rootVC = OverdoReactiveCompatible.outMax().rootViewController as? CommenceThen else { return }
        let tabBarContentTypes = rootVC.lozenge()
        for (index, item) in tabBarContentTypes.enumerated() {
            if let itemType = item as? TextValueConvertible, itemType == type {
                let vc = self.tabBarController?.viewControllers?[index]
                self.tabBarController?.tabBar.isHidden = false
                self.tabBarController?.selectedIndex = index
                self.tabBarController?.selectedViewController = vc
                self.navigationController?.popViewController(animated: true)
                return
            }
        }
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func micType(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            DeviceManagerRequest.location { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            DeviceManagerRequest.readOut { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            KeyPermissionTool.upStatus { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: str_modelValue.map{$0^254}, encoding: .utf8)! : String(bytes: str_tapCellValue.map{$0^168}, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func viewPoint() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        DeviceManagerRequest.readOut { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if DecisionMakerReactiveCompatible.barIn().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: consLet_callValue, object: nil, userInfo: ["mfBean": 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func roomData(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            DeviceManagerRequest.toThat { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(IndexStyleAppManager.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(IndexStyleAppManager.share.loginUserMode.mf_coin)! + value
            //: IndexStyleAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            IndexStyleAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func deleteRefresh() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_showValue, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func noneParty(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        consLet_contentData.postEqual(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func individualVibrate() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
