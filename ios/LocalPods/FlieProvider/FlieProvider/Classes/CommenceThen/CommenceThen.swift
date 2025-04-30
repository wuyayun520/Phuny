
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#EEEEEE" :*/
fileprivate let str_maxData:String = "index height live begin#E"
fileprivate let str_tagValue:String = "atatE"

/*: "tabBar" :*/
fileprivate let str_frameName:String = "lab iftabBar"

/*: "user" :*/
fileprivate let str_contentLayerTitle:[Character] = ["u","s","e","r"]

/*: "icon" :*/
fileprivate let str_imageData:String = "itan"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommenceThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class CommenceThen: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: ShowViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = EqualHasDelegate()
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: ShowViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            addSignature()
            //: ProgressHUD.show()
            DeviceFailThen.callMake()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            DeviceManagerRequest.readOut { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: HiddenConversationListener.shared.func__addDelegate(self)
                HiddenConversationListener.shared.inventoryItem(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.lozenge()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.viewTypes(itemTypes: tarItemTypes as! [TextValueConvertible])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.bottomTypes(itemTypes: tarItemTypes)
                //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue && IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue && IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.nature(type: 0)
                    //: self.lastEventTime = Date().timeIntervalSince1970
                    self.lastEventTime = Date().timeIntervalSince1970
                }
                //: self.func__configViewDidLoad()
                self.positionDoing()

                //: if succeed && IndexStyleAppManager.share.loginUserMode.remindBindEmail == true {
                if succeed && IndexStyleAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: PostPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        PostPushManager.share.actuarialTable(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            bottomTypes(itemTypes: self.lozenge())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(removeFile),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: consLet_controlData,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(eventMake),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: consLet_successValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(liveSingle),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: consLet_indexName,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(eventMake),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: consLet_noTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(reportLog),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: consLet_appText,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: consLet_sessionName - consLet_clickReplaceName), size: CGSize(width: consLet_errorDeviceHeightData, height: consLet_clickReplaceName))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func addSignature() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: consLet_sessionName - consLet_clickReplaceName), size: CGSize(width: consLet_errorDeviceHeightData, height: consLet_clickReplaceName))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.listen(color: .white, size: CGSize(width: consLet_errorDeviceHeightData, height: consLet_clickReplaceName))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.listen(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: consLet_errorDeviceHeightData, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.produceColor()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: "tabBar")
    }

    //: func tabBarConentTypes() -> NSArray {
    func lozenge() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == ShowViewType.Login {
            //: return [TabBarItemType.Login]
            return [TextValueConvertible.Login]
            //: } else {
        } else {
//            if IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue {
//                return [TextValueConvertible.Social,
//                        TextValueConvertible.Moment,
//                        TextValueConvertible.Message,
//                        TextValueConvertible.Account]
//            } else {
//                if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue { // 女性
//                    return [TextValueConvertible.Social,
//                            TextValueConvertible.Moment,
//                            TextValueConvertible.Live,
//                            TextValueConvertible.Message,
//                            TextValueConvertible.Account]
//                } else { // 男性
//                    return [TextValueConvertible.Social,
//                            TextValueConvertible.Moment,
//                            TextValueConvertible.Randow,
//                            TextValueConvertible.Message,
//                            TextValueConvertible.Account]
//                }
//            }
            //: return [TabBarItemType.Social,
            return [TextValueConvertible.Social,
                    //: TabBarItemType.Moment,
                    TextValueConvertible.Moment,
                    //: TabBarItemType.Message,
                    TextValueConvertible.Message,
                    //: TabBarItemType.Account]
                    TextValueConvertible.Account]
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func bottomTypes(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = pickType(itemType: itemType as! TextValueConvertible)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = NameModelNavigationController(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! TextValueConvertible)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func pickType(itemType: TextValueConvertible) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
//            ret = PositionRecognizerDelegate()
            //: ret = TalkingClubVC()
            ret = ClubRecognizerDelegate()
        //: case .Moment:
        case .Moment:
//            ret = ParadigmViewController()
            //: ret = TalkingLikeVC()
            ret = VideoRecognizerDelegate()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = ScaleValueNavigationDelegate()

        //: case .Account:
        case .Account:
            //: ret = TalkingMaleMeController()
            ret = ResourceViewDelegate()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = PresentationReactiveCompatible()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = ErrorThen()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! NameModelNavigationController
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.registerName(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension CommenceThen {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func reportLog() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        uphold()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        nature(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = userRead(), vc is PositionRecognizerDelegate {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! PositionRecognizerDelegate).buttonOf()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func afterClick() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard EqualSendReactiveCompatible.clout().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid {
            if String(EqualSendReactiveCompatible.clout().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                EqualSendReactiveCompatible.clout().tin()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                noblesseExtra(showMsg: consLet_firstTotalLimitData)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard DecisionMakerReactiveCompatible.barIn().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            noblesseExtra(showMsg: consLet_netName)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = StabilisedReactiveCompatible()
        //: tabView.show()
        tabView.dataLoad()
    }

    //: func func__configViewDidLoad() {
    func positionDoing() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        EveryLastThen.share.withInit()
        //: AppManagerRequest.func__reportDeviceID()
        DeviceManagerRequest.conversation()
        //: func__getLoginUserConfig(true)
        removeFile(true)
    }

    //: func selectTabbar(type: Int) {
    func nature(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func eventMake() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.listTo()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func liveSingle() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard KeyPermissionTool.militaryPost() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = consLet_partyTitle.bool(forKey: consLet_imageTitle)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            DecisionMakerReactiveCompatible.barIn().equalLive()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        consLet_partyTitle.set(true, forKey: consLet_imageTitle)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = WhiteViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func conversationSession(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.sumimateHidde(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func freeAssociateUpwards() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        JewishCalendarMonthThen.shared.timeSocket()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func castType(type: TextValueConvertible = .Social) -> Bool {
        //: guard IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue else { return false }
        //: guard IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue else { return false }
        //: guard IndexStyleAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard IndexStyleAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard IndexStyleAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard IndexStyleAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !EqualSendReactiveCompatible.clout().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !DecisionMakerReactiveCompatible.barIn().isLive,
              //: !TalkingSocketManager.shared.isTalking,
              !JewishCalendarMonthThen.shared.isTalking,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !JewishCalendarMonthThen.shared.isCalling else { return false }
        //: let arr = IndexStyleAppManager.share.appUserConfigMode.popLiveTabArr
        let arr = IndexStyleAppManager.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            QuantityWindowManager.shared.viewContent()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension CommenceThen {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func removeFile(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        DeviceManagerRequest.location { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.freeAssociateUpwards()
                //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.reflection()
                    //: self.needShowLiveAlertView()
                    self.castType()
                    //: self.func__selectClubTabbar()
                    self.restriction()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.seeThrough()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func restriction() {
//        if IndexStyleAppManager.share.loginUserMode.jumpType == 1 {
//            return
//        }
//        switchRandowTabBarImage(isHidde: true)
//        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue, IndexStyleAppManager.share.appUserConfigMode.homeTab == "home" {
//            let type = 2
//            selectTabbar(type: type)
//            switchRandowTabBarImage(isHidde: false)
//        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func seeThrough() {
//        guard IndexStyleAppManager.share.loginUserMode.updateInfo == true else {
//            return
//        }
//        let manager = QuantityWindowManager.shared
//        manager.setHomePopUpWindow()

        //: if IndexStyleAppManager.share.loginUserMode.jumpType == 2, IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if IndexStyleAppManager.share.loginUserMode.jumpType == 2, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            NameCallManager.shared.keyMakeObserver()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension CommenceThen {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = TextValueConvertible(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                afterClick()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            conversationSession(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if castType(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        proportion()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == TextValueConvertible.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? ScaleValueNavigationDelegate
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.setThroughEveryLast()
            }
            //: } else if tabBarView.currentTabType == TabBarItemType.Moment.rawValue {
        } else if tabBarView.currentTabType == TextValueConvertible.Moment.rawValue {
            //: let vc = viewController.children.first as? TalkingLikeVC
            let vc = viewController.children.first as? VideoRecognizerDelegate
            //: vc?.reloadAllVCData()
            vc?.everyEqual()
            //: } else if tabBarView.currentTabType == TabBarItemType.Social.rawValue {
        } else if tabBarView.currentTabType == TextValueConvertible.Social.rawValue {
            //: let vc = viewController.children.first as? TalkingClubVC
            let vc = viewController.children.first as? ClubRecognizerDelegate
            //: let currenTime  = Int(Date().timeIntervalSince1970)
            let currenTime = Int(Date().timeIntervalSince1970)
            //: if currenTime - Int(lastEventTime) > 10*60 {
            if currenTime - Int(lastEventTime) > 10 * 60 {
                //: lastEventTime = Date().timeIntervalSince1970
                lastEventTime = Date().timeIntervalSince1970
                //: vc?.removeAllData()
                vc?.beyondCurrentData()
                //: vc?.beginRequestData()
                vc?.feePosition()
            }

            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: ScaleValueNavigationDelegate.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! ScaleValueNavigationDelegate).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func proportion() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case TextValueConvertible.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            consLet_contentData.postEqual(eventID: consLet_nameData)
        //: case TabBarItemType.Randow.rawValue: break
        case TextValueConvertible.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case TextValueConvertible.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            consLet_contentData.postEqual(eventID: consLet_bottomName)
        //: case TabBarItemType.Message.rawValue:
        case TextValueConvertible.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            consLet_contentData.postEqual(eventID: consLet_clickUseName)
        //: case TabBarItemType.Account.rawValue:
        case TextValueConvertible.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            consLet_contentData.postEqual(eventID: consLet_screenValue)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - HiddenObjectProtocol

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension CommenceThen: HiddenObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func notBegin(count _: Int) {
        //: refreshUnreadIMMessageCount()
        exceptAdd()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func message(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json["user"]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo["icon"].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.terms(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func exceptAdd() {
        //: if HiddenConversationListener.shared.isConnection {
        if HiddenConversationListener.shared.isConnection {
            //: let unreadMsgCount = IndexStyleAppManager.share.unreadMessageNum
            let unreadMsgCount = IndexStyleAppManager.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.toGift(unread: unreadMsgCount, barType: .Message)
        }
    }
}
