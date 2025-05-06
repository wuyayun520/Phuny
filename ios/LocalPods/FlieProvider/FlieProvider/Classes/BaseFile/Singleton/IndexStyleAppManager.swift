
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let str_extraKitData:String = "appear"
fileprivate let str_frameData:String = "HPSESSIinside"

/*: "UID" :*/
fileprivate let str_progressValue:String = "indexID"

/*: "Any" :*/
fileprivate let str_managerData:[Character] = ["A","n","y"]

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let str_frameName:[UInt8] = [0xe,0x28,0x3e,0x29,0x19,0x3a,0x28,0x32,0x38,0x12,0x35,0x3d,0x34,0x8,0x3e,0x2f,0x2f,0x32,0x35,0x3c,0x74,0x2e,0x28,0x3e,0x29,0xf,0x3a,0x3c,0x75,0x31,0x28,0x34,0x35]

/*: "获取数据" :*/
fileprivate let str_underData:[Character] = ["获","\u{53d6}","数","据"]

/*: "json 解析失败" :*/
fileprivate let str_makeToolValue:String = "write cookiejson "
fileprivate let str_layerToValue:String = "解析失\u{8d25}"

/*: "request_HasInit" :*/
fileprivate let str_itemTitle:[Character] = ["r"]
fileprivate let str_sizeData:[Character] = ["e","q","u","e","s","t","_","H","a","s","I","n","i","t"]

/*: "Reachable via WiFi" :*/
fileprivate let str_viewEqualIfText:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let str_mainValue:String = "print view hidden modelReacha"
fileprivate let str_sessionValue:String = "a Cellulareturn data"
fileprivate let str_appearUpValue:[Character] = ["r"]

/*: "Network not reachable" :*/
fileprivate let str_cellData:String = "title pathNetwo"
fileprivate let str_nearTitle:String = "send video title text imagerk no"
fileprivate let str_iconTimeData:String = "chphotole"

/*: "Not reachable" :*/
fileprivate let str_serverData:[Character] = ["N","o","t"," ","r","e","a","c","h","a","b"]
fileprivate let str_modelValue:[Character] = ["l","e"]

/*: "Unable to start notifier" :*/
fileprivate let str_bottomData:String = "Unabldo asset self"
fileprivate let str_pathTitle:String = "if image self remark returntart not"
fileprivate let str_infoValue:[Character] = ["i","f","i","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexStyleAppManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class IndexStyleAppManager: NSObject {
public class IndexStyleAppManager: NSObject {
    //: @objc static public let share = IndexStyleAppManager()
    @objc public static let share = IndexStyleAppManager()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = DominoUserModel() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = IsoclinalReactiveCompatible() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = TotalensityInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = LabelHandyJSON() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: CountensityNetworkStatus = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return FailHashable.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return FailHashable.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: TalkingBenderTotalensityRequestThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (str_extraKitData.replacingOccurrences(of: "appear", with: "P") + str_frameData.replacingOccurrences(of: "inside", with: "D")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: TalkingBenderTotalensityRequestThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == "UID" {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func equalSet() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = DominoUserModel()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        consLet_limitTableValue = "Any".localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        consLet_deviceText = "Any".localized
    }
}

//: extension IndexStyleAppManager {
extension IndexStyleAppManager {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func playerIn(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(IndexStyleAppManager.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            consLet_partyTitle.set(IndexStyleAppManager.share.loginUserMode.userID, forKey: consLet_screenTitle)
            //: } else {
        } else {
            //: HiddenConversationListener.shared.func__LogingOut()
            HiddenConversationListener.shared.currentExecute()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            consLet_partyTitle.removeObject(forKey: consLet_screenTitle)
            //: func__cleanPrevLoginData()
            clean()
//            TalkingBenderTotalensityRequestThen.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            RoomGiftManager.share.freebeeWithCherryRed(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func searchShow() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = consLet_partyTitle.dictionary(forKey: consLet_tableValue)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<LabelHandyJSON>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: IndexStyleAppManager.share.appConfigMode = configModel
            IndexStyleAppManager.share.appConfigMode = configModel
        }
        //: if let status = IndexStyleAppManager.share.reachability?.connection, status != .unavailable {
        if let status = IndexStyleAppManager.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            equidistant()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(liveNote(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func equidistant() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        DeviceManagerRequest.dataCompletion { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func burn() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = consLet_partyTitle.dictionary(forKey: consLet_keyPartyTitle)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<DominoUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func clean() {
        //: func__reSet()
        equalSet()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        consLet_partyTitle.removeObject(forKey: consLet_keyPartyTitle)
//        let oldServerUrl: String = TalkingBenderTotalensityRequestThen.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func barDown() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.ofAllVideo() + String(bytes: str_frameName.map{$0^91}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.judgeImagePathTitle(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<UserBlockHandyJSON>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: "获取数据")
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(str_makeToolValue.suffix(5)) + str_layerToValue))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func triumph() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(str_itemTitle) + String(str_sizeData)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    DeviceManagerRequest.noApp()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func supportSystemCurrent() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(str_viewEqualIfText)))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(str_mainValue.suffix(6)) + "ble vi" + String(str_sessionValue.prefix(9)) + String(str_appearUpValue)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(str_cellData.suffix(5)) + String(str_nearTitle.suffix(5)) + "t rea" + str_iconTimeData.replacingOccurrences(of: "photo", with: "ab")))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(str_serverData) + String(str_modelValue)))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(str_bottomData.prefix(5)) + "e to s" + String(str_pathTitle.suffix(8)) + String(str_infoValue)))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func liveNote(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            equidistant()
        }
    }
}
