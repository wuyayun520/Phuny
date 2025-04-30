
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let str_angleDetailValue:String = "www.alet reference card make term"
fileprivate let str_aspectTitle:String = "model"
fileprivate let str_giftExtraText:[Character] = ["l","e",".","c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let str_colorName:String = "后台播放\u{97f3}"
fileprivate let str_objectData:[Character] = ["乐","模","式","异","常",":"," "]

/*: ." :*/
fileprivate let str_buttonName:String = "image"

/*: "key_uid" :*/
fileprivate let str_readyData:String = "key_uidaction name jump"

/*: "Reachable via WiFi" :*/
fileprivate let str_betweenToolValue:String = "Reachround view shared"
fileprivate let str_titleFreeData:[Character] = ["a","b","l","e"," ","v","i","a"]
fileprivate let str_intimateName:[Character] = [" ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let str_levelData:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l"]
fileprivate let str_rowName:String = "adata"

/*: "Current network unavailable" :*/
fileprivate let str_shareCurrentValue:String = "count labelCurre"
fileprivate let str_sName:String = "bagwo"
fileprivate let str_textData:[Character] = ["v"]
fileprivate let str_barText:String = "ailamakee"

/*: "Network none" :*/
fileprivate let str_toTitle:String = "view layer will tap nameNetwor"

/*: "call_response_bgm" :*/
fileprivate let str_groupValue:String = "gap manager true name iconcall_r"
fileprivate let str_roomText:String = "bgshow"

/*: "Error playing BMG audio:  :*/
fileprivate let str_itemData:[Character] = ["E","r","r","o","r"," ","p"]
fileprivate let str_sharedCellContent:[Character] = ["l","a","y","i","n","g"," ","B","M","G"," ","a","u","d","i","o",":"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EveryLastBaseDelegate.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import UIKit
import UIKit

//: import WebKit
import WebKit

//: import AVFAudio
import AVFAudio

//: import FirebaseCrashlytics
import FirebaseCrashlytics

//: public class AppDelegateHelper: NSObject {
public class EveryLastBaseDelegate: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(str_angleDetailValue.prefix(5)) + str_aspectTitle.replacingOccurrences(of: "model", with: "pp") + String(str_giftExtraText)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: static let shared = AppDelegateHelper()
    static let shared = EveryLastBaseDelegate()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = SerrationWaitingController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(rootInitController),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: consLet_progressValue,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension EveryLastBaseDelegate {
    //: class func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    class func sash(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        EveryLastBaseDelegate.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        TalkingBenderTotalensityRequestThen.share.isTitle()
        //: AppDelegateHelper.shared.installNotificationObservers()
        EveryLastBaseDelegate.shared.observersConstraintInstall()
        //: AppDelegateHelper.shared.initGetCache()
        EveryLastBaseDelegate.shared.textGet()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        TalkingBenderTotalensityRequestThen.share.iconColor()
        //: AppDelegateHelper.shared.currApplication = application
        EveryLastBaseDelegate.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: EqualLogTool.writeDoing(msg: "后台播放音乐模式异常: \(error).")
            EqualLogTool.writeDoing(msg: (str_colorName + String(str_objectData)) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func toBackground(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        EveryLastBaseDelegate.shared.textTask()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func usagePickEquivalent(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        EveryLastBaseDelegate.shared.country()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        EveryLastBaseDelegate.shared.pathTask()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func enablelineWrite(_ application: UIApplication) {
        //: let unreadMsgCount = IndexStyleAppManager.share.unreadMessageNum
        let unreadMsgCount = IndexStyleAppManager.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func reply(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func cellAll(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        EveryLastBaseDelegate.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension EveryLastBaseDelegate {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func textGet() {
        //: IndexStyleAppManager.share.func__checkAppConfigModeNeedUpdate()
        IndexStyleAppManager.share.searchShow()
        //: IndexStyleAppManager.share.func__loadCurrentLoginInfoData()
        IndexStyleAppManager.share.burn()
    }

    //: @objc private func initRootController() {
    @objc private func rootInitController() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            EveryLastBaseDelegate.shared.sumroduce(currApplication!)
        }
        //: IndexStyleAppManager.share.func__listenRequestHasInit()
        IndexStyleAppManager.share.triumph()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (consLet_partyTitle.string(forKey: consLet_screenTitle)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            titleIn()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(IndexStyleAppManager.share.loginUid)
            Crashlytics.crashlytics().setUserID(IndexStyleAppManager.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(IndexStyleAppManager.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(IndexStyleAppManager.share.loginUid, forKey: "key_uid")
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            SoundPressureLevelTransactionObserver.shared.addUserTransactions()
            //: IndexStyleAppManager.share.request_HasInit = false
            IndexStyleAppManager.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            RoomGiftManager.share.freebeeWithCherryRed(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            DeviceManagerRequest.handle()
            //: } else {
        } else {
            //: if IndexStyleAppManager.share.loginSessionId.count > 0 {
            if IndexStyleAppManager.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                AdministratorReactiveCompatible.information { _ in
                }
                //: IndexStyleAppManager.share.func__cleanPrevLoginData()
                IndexStyleAppManager.share.clean()
            }
            //: func__setupLoginViewController()
            videoTimeTarget()
            //: IndexStyleAppManager.share.request_HasInit = true
            IndexStyleAppManager.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func titleIn() {
        //: func__setupRootViewController(type: .Taking)
        tipType(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func videoTimeTarget() {
        //: func__setupRootViewController(type: .Login)
        tipType(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func tipType(type: ShowViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            isSend(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.isSend(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func isSend(type: ShowViewType) {
        //: if checkRootTarBarController(type: type) {
        if pathType(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = CommenceThen(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func pathType(type: ShowViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is CommenceThen {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? CommenceThen {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension EveryLastBaseDelegate {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func observersConstraintInstall() {
        // 网络状态监听
        //: IndexStyleAppManager.share.startNotifierNetwork()
        IndexStyleAppManager.share.supportSystemCurrent()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(disappearMessage(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(consLet_iconText)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                ValueManager.shared.totalerlinkBar()
                //: self.func__setupTakingViewController()
                self.titleIn()
                //: IndexStyleAppManager.share.func__UserLoginChanged(isLogin: true)
                IndexStyleAppManager.share.playerIn(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(IndexStyleAppManager.share.loginUid)
                Crashlytics.crashlytics().setUserID(IndexStyleAppManager.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(IndexStyleAppManager.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(IndexStyleAppManager.share.loginUid, forKey: "key_uid")
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                SoundPressureLevelTransactionObserver.shared.addUserTransactions()
                //: if !IndexStyleAppManager.share.request_HasInit {
                if !IndexStyleAppManager.share.request_HasInit {
                    //: IndexStyleAppManager.share.request_HasInit = true
                    IndexStyleAppManager.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                DeviceManagerRequest.handle()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(consLet_askData)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: IndexStyleAppManager.share.func__UserLoginChanged(isLogin: false)
                IndexStyleAppManager.share.playerIn(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                JewishCalendarMonthThen.shared.afterRecord(userLoginOut: true)
                //: TalkingLocationManager.destroy()
                SommelierThen.harkDestroy()
                //: self.func__setupLoginViewController()
                self.videoTimeTarget()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (UtilizationKingfisherCompatible.shared as! UtilizationKingfisherCompatible).giftDown()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(consLet_barValue)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                DeviceManagerRequest.readOut { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: consLet_buildName, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func disappearMessage(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(str_betweenToolValue.prefix(5)) + String(str_titleFreeData) + String(str_intimateName)))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(str_levelData) + str_rowName.replacingOccurrences(of: "data", with: "r")))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            noblesseExtra(showMsg: (String(str_shareCurrentValue.suffix(5)) + "nt n" + str_sName.replacingOccurrences(of: "bag", with: "et") + "rk una" + String(str_textData) + str_barText.replacingOccurrences(of: "make", with: "bl")).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(str_toTitle.suffix(6)) + "k none"))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension EveryLastBaseDelegate {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func textTask() {
        //: checkAndEndBackgroundTask()
        pathTask()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.pathTask()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func pathTask() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func cellBgm() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = ResourceEffectTool.default.localType(name: (String(str_groupValue.suffix(6)) + "esponse_" + str_roomText.replacingOccurrences(of: "show", with: "m")))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            actionName()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(str_itemData) + String(str_sharedCellContent)) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func country() {
        //: stopSystemVibrate()
        memoryBy()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func actionName() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func memoryBy() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
