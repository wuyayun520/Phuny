
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let str_miniValue:[Character] = ["b","g","_","m"]
fileprivate let str_managerName:String = "essarow"

/*: "777777" :*/
fileprivate let str_statusName:String = "controlcontrol7"
fileprivate let str_extraRawData:[Character] = ["7"]

/*: "I Like" :*/
fileprivate let str_attachValue:[Character] = ["I"," ","L","i","k","e"]

/*: "#FF2348" :*/
fileprivate let str_localColorValue:[Character] = ["#","F","F","2","3","4","8"]

/*: "Current network unavailable" :*/
fileprivate let str_cellViewValue:String = "Curresize round for"
fileprivate let str_managerData:String = "work unavcase else self moment"
fileprivate let str_fillName:[Character] = ["a","i","l","a","b","l","e"]

/*: "icon_yidu_pre" :*/
fileprivate let str_momentValue:[Character] = ["i","c","o","n","_","y","i","d"]
fileprivate let str_modeData:String = "u_preto back"

/*: "99+" :*/
fileprivate let str_writeAppName:String = "99+"

/*: "transform.rotation" :*/
fileprivate let str_underText:[Character] = ["t","r","a","n","s"]
fileprivate let str_requestSourceData:String = "plus"
fileprivate let str_videoContent:String = "orm.roreturn request return self bottom"

/*: "transform.scale" :*/
fileprivate let str_dataName:[Character] = ["t","r","a","n","s","f","o","r","m",".","s","c","a","l"]
fileprivate let str_sizeValue:[Character] = ["e"]

/*: "zoom&shake" :*/
fileprivate let str_blockText:String = "table data player in varzoom&"

/*: "yyyy-MM-dd" :*/
fileprivate let str_imageTitle:[Character] = ["y","y","y","y","-","M","M"]
fileprivate let str_scaleTitle:[Character] = ["-","d","d"]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_bottomText:[UInt8] = [0xbe,0xe9,0xe9,0xec,0xf4,0x9d,0xa2,0xbd,0x9d,0xf1,0xec,0x9d,0xf0,0xe2,0xeb,0xe1,0x9d,0xf6,0xec,0xf2,0x9d,0xeb,0xec,0xf1,0xe6,0xe3,0xe6,0xe0,0xde,0xf1,0xe6,0xec,0xeb,0xf0,0xbc]

fileprivate func tableItemNor(define num: UInt8) -> UInt8 {
    let value = Int(num) - 125
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_insideLabText:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let str_modeText:[Character] = ["S","e","t","t","i","n","g","s"]

/*: "badNumber" :*/
fileprivate let str_errorTitle:String = "badNumbertype var"

/*: "Who like me" :*/
fileprivate let str_requestItemPartyValue:String = "return var topWho "

/*: "Messages" :*/
fileprivate let str_contentValue:[Character] = ["M","e","s","s","a","g"]
fileprivate let str_dataValue:String = "ES"

/*: "isConnection" :*/
fileprivate let str_quoteText:String = "isConnecmake let direction"
fileprivate let str_viewControlData:[Character] = ["t","i","o","n"]

/*: "networkStatus" :*/
fileprivate let str_infoText:String = "image"
fileprivate let str_noName:String = "etwotopk"

/*: "unreadMessageNum" :*/
fileprivate let str_pullTitle:String = "unrepoint"
fileprivate let str_addName:String = "to background addgeNum"

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_ofData:[UInt8] = [0xc7,0xf2,0xa3,0xfc,0xf2,0xf8,0xa3,0xfa,0xe4,0xf1,0xf7,0xa3,0xf7,0xf2,0xa3,0xf0,0xe4,0xf5,0xee,0xa3,0xe4,0xef,0xef,0xa3,0xf0,0xe8,0xf6,0xf6,0xe4,0xea,0xe8,0xf6,0xa3,0xe4,0xf6,0xa3,0xf5,0xe8,0xe4,0xe7,0xc2]

fileprivate func externalBodyPart(label num: UInt8) -> UInt8 {
    let value = Int(num) + 125
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let str_infoValue:String = "make"

/*: "消息列表一键已读失败：code: :*/
fileprivate let str_resultValue:[Character] = ["消","息","列","表","一","键","已","读","失","\u{8d25}","：","c","o"]
fileprivate let str_locationValue:String = "de:in name list"

/*: , desc: :*/
fileprivate let str_roomName:[Character] = [","," ","d","e","s","c"]
fileprivate let str_afterName:String = ":"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleValueNavigationDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class ScaleValueNavigationDelegate: ServiceRecognizerDelegate {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        upAmimat()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        counterchangeCapacity()
        //: bindInteraction()
        dataEqual()
        //: func__turnOnSystemNotification()
        equalExecute()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 100 + consLet_tabValue))
        //: colorV.image = UIImage.nearTap(name: "bg_message_top")
        colorV.image = UIImage.nearTap(name: (String(str_miniValue) + str_managerName.replacingOccurrences(of: "row", with: "ge") + "_top"))
        //: colorV.contentMode = .scaleAspectFill
        colorV.contentMode = .scaleAspectFill
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: FindThen = {
        //: let V = TalkingNoticeTipView()
        let V = FindThen()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: ExpressReactiveCompatible = {
        //: let vc = QYSlideNavigationViewController()
        let vc = ExpressReactiveCompatible()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .loadEnable(type: .Medium, fontSize: 16)
        vc.titleFont = .loadEnable(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .loadEnable(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .loadEnable(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: "777777")!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.appNameVisualProperty()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: vc.isHidenBottomLine = true
        vc.isHidenBottomLine = true
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [ServiceRecognizerDelegate] = //        var arr = [self.chatListVC, ColorMonthThen()]
//        if IndexStyleAppManager.share.loginUserMode.callTabSwitch == 1 {
//            arr.insert(RowExpressRecognizerDelegate(), at: arr.count-1)
//        }
//        return arr
        //: return [self.chatListVC]
        [self.chatListVC]
    //: }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: PresentationCalorieChartDataSource = {
        //: let vc = TalkingChatListViewController()
        let vc = PresentationCalorieChartDataSource()
        //: vc.iLikeBlock = { [weak self] isShow in
        vc.iLikeBlock = { [weak self] isShow in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let showText = isShow ? "I Like":""
            let showText = isShow ? "I Like" : ""
            //: self.slideVC.selectedBtn?.setTitle(showText, for: .normal)
            self.slideVC.selectedBtn?.setTitle(showText, for: .normal)
        }
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = //        var arr = ["Messages".localized, "Who like me".localized]
//        if IndexStyleAppManager.share.loginUserMode.callTabSwitch == 1 {
//            arr.insert("Call".localized, at: arr.count-1)
//        }
//        return arr
        //: return ["I Like"]
        ["I Like"]
    //: }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: consLet_tabValue, width: consLet_errorDeviceHeightData, height: 30))
        //: tipView.font = UIFont.exceptEqual(fontSize: 14)
        tipView.font = UIFont.exceptEqual(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: "#FF2348")?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(str_cellViewValue.prefix(5)) + "nt net" + String(str_managerData.prefix(9)) + String(str_fillName)).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: HalfLabel = {
        //: let numbLabel = BadgeLab()
        let numbLabel = HalfLabel()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: HalfLabel = {
        //: let numbLabel = BadgeLab()
        let numbLabel = HalfLabel()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.nearTap(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_momentValue) + String(str_modeData.prefix(5)))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_momentValue) + String(str_modeData.prefix(5)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - StyleNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension ScaleValueNavigationDelegate: StyleNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func custom(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: PresentationCalorieChartDataSource.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            upAmimat()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: ColorMonthThen.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            consLet_contentData.postEqual(eventID: consLet_changeValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension ScaleValueNavigationDelegate {
    //: func setIsTopAll() {
    func setThroughEveryLast() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? PresentationCalorieChartDataSource
            //: vc?.resetToTopItemView()
            vc?.light()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.doinglineControl(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func streetwiseToCityState() {
        //: if IndexStyleAppManager.share.networkStatus != .Unavailable && HiddenConversationListener.shared.isConnection {
        if IndexStyleAppManager.share.networkStatus != .Unavailable, HiddenConversationListener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func curio(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func upAmimat() {
        //: let unreadMsgCount = IndexStyleAppManager.share.unreadMessageNum
        let unreadMsgCount = IndexStyleAppManager.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: consLet_keyName) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.pullSub()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func pullSub() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (String(str_underText) + str_requestSourceData.replacingOccurrences(of: "plus", with: "f") + String(str_videoContent.prefix(6)) + "tation"))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (String(str_dataName) + String(str_sizeValue)))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (String(str_blockText.suffix(5)) + "shake"))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func equalExecute() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        KeyPermissionTool.upStatus { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.pastTime(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.host(date: Date(), dateFormat: (String(str_imageTitle) + String(str_scaleTitle)))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = consLet_partyTitle.string(forKey: consLet_lineBarTitle), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.pastTime(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.pastTime(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = consLet_partyTitle.bool(forKey: consLet_statusData)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        consLet_partyTitle.set(true, forKey: consLet_statusData)
                        //: TalkingAlertShow.alert(title: nil,
                        EqualAlertShow.showConfig(title: nil,
                                                    //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                    message: String(bytes: str_bottomText.map{tableItemNor(define: $0)}, encoding: .utf8)!.localizedArguments(consLet_deviceData),
                                                    //: leftBtnTitle: "Cancel".localized,
                                                    leftBtnTitle: "Cancel".localized,
                                                    //: rightBtnTitle: "Settings".localized) {
                                                    rightBtnTitle: (String(str_modeText)).localized)
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
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func pastTime(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(consLet_netViewValue)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = consLet_sessionName - consLet_netViewValue - consLet_clickReplaceName
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(consLet_netViewValue + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = consLet_sessionName - self.noticeView.bottom - consLet_clickReplaceName
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension ScaleValueNavigationDelegate {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func indexVideo(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(str_errorTitle.prefix(9)))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension ScaleValueNavigationDelegate {
    /// UI
    //: private func createUI() {
    private func counterchangeCapacity() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(consLet_netViewValue)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(str_requestItemPartyValue.suffix(4)) + "like me").localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(str_contentValue) + str_dataValue.lowercased()).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func dataEqual() {
        //: HiddenConversationListener.shared.rx
        HiddenConversationListener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(str_quoteText.prefix(8)) + String(str_viewControlData)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.streetwiseToCityState()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: IndexStyleAppManager.share.rx.observeWeakly(Int.self, "networkStatus")
        IndexStyleAppManager.share.rx.observeWeakly(Int.self, (str_infoText.replacingOccurrences(of: "image", with: "n") + str_noName.replacingOccurrences(of: "top", with: "r") + "Status"))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.streetwiseToCityState()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: IndexStyleAppManager.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        IndexStyleAppManager.share.rx.observeWeakly(Int.self, (str_pullTitle.replacingOccurrences(of: "point", with: "a") + "dMessa" + String(str_addName.suffix(5))))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.curio(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = ResourceAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                EqualAlertShow.pathFinish(message: String(bytes: str_ofData.map{externalBodyPart(label: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: consLet_keyName)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: EqualLogTool.writeDoing(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        EqualLogTool.writeDoing(msg: (String(str_resultValue) + String(str_locationValue.prefix(3))) + "\(code), desc:\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(indexVideo(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: consLet_keyValue,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.host(date: Date(), dateFormat: (String(str_imageTitle) + String(str_scaleTitle)))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            consLet_partyTitle.set(today, forKey: consLet_lineBarTitle)
            //: self.func__hideNotificationTipView(hide: true)
            self.pastTime(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.equalExecute()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
