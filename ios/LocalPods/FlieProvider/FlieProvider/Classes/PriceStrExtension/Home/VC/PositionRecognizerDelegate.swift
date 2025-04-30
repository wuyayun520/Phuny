
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_bottomLabelText:String = "bg_sholab table top model push"
fileprivate let str_currentTitle:String = "isalabgualab"
fileprivate let str_succeedPicContent:String = "follow"
fileprivate let str_expressTableName:String = "instance data view mode_default"

/*: "#777777" :*/
fileprivate let str_emptyDataTitle:String = "#777777"

/*: "#333333" :*/
fileprivate let str_valueTitle:[Character] = ["#","3","3","3","3","3","3"]

/*: "Party" :*/
fileprivate let str_interactionContent:[Character] = ["P","a","r","t","y"]

/*: "Popular" :*/
fileprivate let str_leadingBindValue:String = "label recommend video model listPopular"

/*: "Nearby" :*/
fileprivate let str_loadText:String = "size copy color and playerNearby"

/*: "New" :*/
fileprivate let str_toData:[Character] = ["N","e","w"]

/*: "btn_popular_search_nor" :*/
fileprivate let str_makeName:[Character] = ["b","t","n","_","p","o","p","u","l","a"]
fileprivate let str_playerData:[Character] = ["r","_","s","e","a","r","c","h","_","n","o","r"]

/*: "icon_live_nor" :*/
fileprivate let str_rowValue:String = "fill leticon_"
fileprivate let str_bubbleSystemText:String = "NOR"

/*: "btn_popular_ranking_nor" :*/
fileprivate let str_sexData:String = "btn_gesture interval time input size"
fileprivate let str_sourceData:String = "ar_raif on voice aspect list"
fileprivate let str_errorName:String = "make let_nor"

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let str_userText:[UInt8] = [0x21,0x20,0x6e,0x61,0x6c,0x50,0x20,0x72,0x61,0x74,0x53,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x6f,0x6a,0x20,0x6f,0x74,0x20,0x65,0x63,0x6e,0x61,0x68,0x63,0x20,0x72,0x75,0x6f,0x79,0x20,0x6e,0x6f,0x20,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x74,0x61,0x72,0x67,0x6e,0x6f,0x43]

/*: "No, thanks" :*/
fileprivate let str_customData:String = "center letNo, t"

/*: "Find out more" :*/
fileprivate let str_makeTitle:[Character] = ["F","i","n","d"," ","o"]
fileprivate let str_liveData:String = "ut morenor session make true"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let str_listValue:String = "clickSlet size"
fileprivate let str_replyData:String = "rojequalt"
fileprivate let str_resultValue:String = "nmakel"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let str_toolName:[UInt8] = [0x58,0x61,0x5e,0x58,0x60,0x48,0x69,0x56,0x67,0x45,0x67,0x64,0x5f,0x5a,0x58,0x69,0x65,0x64,0x65,0x22,0x6a,0x65,0x68,0x3b,0x5e,0x63,0x59,0x64,0x6a,0x69,0x62,0x64,0x67,0x5a]

fileprivate func sizeRow(message num: UInt8) -> UInt8 {
    let value = Int(num) - 245
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_ageGiftData:[UInt8] = [0x9,0x24,0x24,0x27,0x3f,0x68,0x6d,0x8,0x68,0x3c,0x27,0x68,0x3b,0x2d,0x26,0x2c,0x68,0x31,0x27,0x3d,0x68,0x26,0x27,0x3c,0x21,0x2e,0x21,0x2b,0x29,0x3c,0x21,0x27,0x26,0x3b,0x77]

private func deviceUser(app num: UInt8) -> UInt8 {
    return num ^ 72
}

/*: "Cancel" :*/
fileprivate let str_primarySectionValue:String = "size add valueCance"
fileprivate let str_modelValue:[Character] = ["l"]

/*: "Settings" :*/
fileprivate let str_deviceCloseLetValue:String = "size view contactSettings"

/*: _ :*/
fileprivate let str_feeValue:String = "data"

/*: "male" :*/
fileprivate let str_makeValue:[UInt8] = [0x13,0x1f,0x12,0x1b]

/*: "female" :*/
fileprivate let str_toValue:String = "ftimemaltime"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PositionRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: class TalkingSocialViewController: TalkingBaseViewController {
class PositionRecognizerDelegate: ServiceRecognizerDelegate {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        ToViewManager.shared.straggle()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        ToViewManager.shared.equalMake()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.topEmpty()
        //: self.setupSubViewsConstraint()
        self.exhibitText()
        //: self.addNotification()
        self.notification()
        //: self.func__checkStarPlanNeedShow()
        self.child()
        //: self.func__turnOnSystemNotification()
        self.mediumModel()
        //: self.pushIsClubVideo()
        self.playEqual()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        viewTimer()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearTap(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.nearTap(name: (String(str_bottomLabelText.prefix(6)) + "uye_m" + str_currentTitle.replacingOccurrences(of: "lab", with: "n") + str_succeedPicContent.replacingOccurrences(of: "follow", with: "g") + String(str_expressTableName.suffix(8)))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: consLet_netViewValue, width: consLet_errorDeviceHeightData, height: consLet_messageText))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: "#777777")!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: "#333333")!
        //: segmentedDataSource.titleNormalFont = .loadEnable(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .loadEnable(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .loadEnable(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .loadEnable(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: "#333333")!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: consLet_netViewValue, width: consLet_errorDeviceHeightData, height: consLet_sessionName - consLet_clickReplaceName - consLet_netViewValue)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append("Party".localized)
        //: array.append("Popular".localized)
        array.append("Popular".localized)
        //: array.append("Nearby".localized)
        array.append("Nearby".localized)
        //: array.append("New".localized)
        array.append("New".localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == "Party".localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = DataStartObjectProtocol()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = OpenlyObjectProtocol()
                //: if i == "Popular".localized {
                if i == "Popular".localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == "Nearby".localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == "New".localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_makeName) + String(str_playerData))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ofMake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_rowValue.suffix(5)) + "live_" + str_bubbleSystemText.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(domiciliate), for: .touchUpInside)
        //: btn.isHidden = !(IndexStyleAppManager.share.appStatus == AppSkinStatus.special.rawValue && IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue && IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_sexData.prefix(4)) + "popul" + String(str_sourceData.prefix(5)) + "nking" + String(str_errorName.suffix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(souvenir), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension PositionRecognizerDelegate {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func playEqual() {
        //: if IndexStyleAppManager.share.loginUserMode.jumpType == 1 && IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue && IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if IndexStyleAppManager.share.loginUserMode.jumpType == 1, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue, IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: PostPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                PostPushManager.share.exceptBe(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func souvenir() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = AutomaticallyTabVc()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        consLet_contentData.postEqual(eventID: consLet_userValue)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func videoTimer() {
        //: if IndexStyleAppManager.share.appUserConfigMode.liveDialogInterval > 0 &&
        if IndexStyleAppManager.share.appUserConfigMode.liveDialogInterval > 0,
           //: IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue &&
           IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue,
           //: IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue
        {
            //: initLiveTipsTimer()
            neighbour()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(IndexStyleAppManager.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(IndexStyleAppManager.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func everyView() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.userRead() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: EqualViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! EqualViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if IndexStyleAppManager.share.appUserConfigMode.enableLive &&
        if IndexStyleAppManager.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !DecisionMakerReactiveCompatible.barIn().isLive,
           //: !TalkingSocketManager.shared.isTalking &&
           !JewishCalendarMonthThen.shared.isTalking,
           //: !TalkingSocketManager.shared.isCalling {
           !JewishCalendarMonthThen.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            QuantityWindowManager.shared.viewContent()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func neighbour() {
        //: let timeInterval = TimeInterval(IndexStyleAppManager.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(IndexStyleAppManager.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(everyView), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func viewTimer() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func domiciliate() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_indexName, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension PositionRecognizerDelegate {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func child() {
        //: guard IndexStyleAppManager.share.showWindow == true else { return }
        guard IndexStyleAppManager.share.showWindow == true else { return }
        //: IndexStyleAppManager.share.showWindow = false
        IndexStyleAppManager.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        EqualAlertShow.showConfig(title: nil,
                                    //: message: "Congratulation on your chance to join the Star Plan !",
                                    message: String(bytes: str_userText.reversed(), encoding: .utf8)!,
                                    //: leftBtnTitle: "No, thanks",
                                    leftBtnTitle: (String(str_customData.suffix(5)) + "hanks"),
                                    //: rightBtnTitle: "Find out more") {
                                    rightBtnTitle: (String(str_makeTitle) + String(str_liveData.prefix(7))))
        {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            AdjustThen.share.subRequest(key: (String(str_listValue.prefix(6)) + "tarP" + str_replyData.replacingOccurrences(of: "equal", with: "ec") + "pop-upsCa" + str_resultValue.replacingOccurrences(of: "make", with: "ce")))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            // 跳转巨星计划页
            //: PostPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            PostPushManager.share.scene(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            AdjustThen.share.subRequest(key: String(bytes: str_toolName.map{sizeRow(message: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func mediumModel() {
        // 有随机视频，不弹出开启推送弹窗
        //: if IndexStyleAppManager.share.loginUserMode.jumpType == 1 &&
        if IndexStyleAppManager.share.loginUserMode.jumpType == 1,
           //: IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue &&
           IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue,
           //: IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = consLet_partyTitle.bool(forKey: consLet_versionName)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        KeyPermissionTool.upStatus { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                consLet_partyTitle.set(true, forKey: consLet_versionName)
                //: TalkingAlertShow.alert(title: nil,
                EqualAlertShow.showConfig(title: nil,
                                            //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                            message: String(bytes: str_ageGiftData.map{deviceUser(app: $0)}, encoding: .utf8)!.localizedArguments(consLet_deviceData),
                                            //: leftBtnTitle: "Cancel".localized,
                                            leftBtnTitle: "Cancel".localized,
                                            //: rightBtnTitle: "Settings".localized) {
                                            rightBtnTitle: (String(str_deviceCloseLetValue.suffix(8))).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func ofMake() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = WhiteActivityObjectProtocol()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        consLet_contentData.postEqual(eventID: consLet_screenData)
    }

    /// 切换到party
    //: func switchParty() {
    func buttonOf() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension PositionRecognizerDelegate {
    /// 添加通知
    //: private func addNotification() {
    private func notification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        ToViewManager.shared.behindTitle()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(videoTimer),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: consLet_contentValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(viewTimer),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: consLet_askData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension PositionRecognizerDelegate: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            consLet_contentData.postEqual(eventID: "\(consLet_soundObjectValue)_\(IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? OpenlyObjectProtocol
            //: popularVC?.showSettingsAlertView()
            popularVC?.positionSize() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            consLet_contentData.postEqual(eventID: consLet_hugeTitle)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            consLet_contentData.postEqual(eventID: consLet_fileTitle)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension PositionRecognizerDelegate: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension PositionRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func topEmpty() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func exhibitText() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + consLet_netViewValue)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
