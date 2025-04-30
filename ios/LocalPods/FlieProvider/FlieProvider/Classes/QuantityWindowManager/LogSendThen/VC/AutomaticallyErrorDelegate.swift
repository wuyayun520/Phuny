
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_everyText:String = "color equal view#201E"
fileprivate let str_managerTargetName:String = "view0"

/*: "#1F1624" :*/
fileprivate let str_sourceValue:String = "lab case with var#1F1624"

/*: "quick_video_topview" :*/
fileprivate let str_finishPathData:String = "quat"
fileprivate let str_collectionData:String = "make key icon leto_topvie"
fileprivate let str_touchImageText:String = "content"

/*: "btn_back_white" :*/
fileprivate let str_shareText:String = "slide"
fileprivate let str_availableName:String = "button gift class trytn_b"

/*: "Random Video" :*/
fileprivate let str_minValue:[Character] = ["R","a","n","d","o","m"," "]
fileprivate let str_panText:[Character] = ["V","i","d","e","o"]

/*: "icon_rank_coin" :*/
fileprivate let str_pathContent:[Character] = ["i","c"]
fileprivate let str_labData:String = "for index background backgroundon_r"

/*: "btn_quick_back_nor" :*/
fileprivate let str_statusValue:[Character] = ["b","t","n","_","q","u","i","c","k","_","b","a","c"]
fileprivate let str_pathName:String = "k_norwhite var self path"

/*: "icon_video_skip" :*/
fileprivate let str_saveData:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s"]
fileprivate let str_scaleLastTitle:String = "kvideo"

/*: "#9610FF" :*/
fileprivate let str_sizeImageTitle:[Character] = ["#","9","6","1","0","F","F"]

/*: "#8566FF" :*/
fileprivate let str_fullData:String = "make succeed#8566FF"

/*: "icon_coin_match_line" :*/
fileprivate let str_deviceButtonActualContent:[Character] = ["i","c","o","n","_"]
fileprivate let str_targetData:[Character] = ["c","o","i","n","_","m","a","t","c","h","_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let str_toName:[UInt8] = [0x74,0x78,0x6d,0x7a,0x71,0x50,0x7d]

private func areaLive(bar num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "source" :*/
fileprivate let str_bottomContent:[UInt8] = [0x80,0x9c,0x86,0x81,0x90,0x96]

/*: "type" :*/
fileprivate let str_modelValue:[UInt8] = [0xd3,0xde,0xd7,0xc2]

/*: "uid" :*/
fileprivate let str_messageValue:String = "UID"

/*: "fromFreeCall" :*/
fileprivate let str_cellText:[Character] = ["f","r","o","m","F"]
fileprivate let str_modelWithTitle:[Character] = ["r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let str_gestureHeadValue:[UInt8] = [0x64,0x6d,0x63]

/*: "requestCall" :*/
fileprivate let str_modeTopTitleData:String = "reviewue"
fileprivate let str_showName:[Character] = ["s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let str_bottomResultToData:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let str_titleData:String = "onReequal self guard as"
fileprivate let str_callValue:[Character] = ["l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AutomaticallyErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class AutomaticallyErrorDelegate: ServiceRecognizerDelegate {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = RoomResultModel() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        sweepUnderTheRugPress()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        cap()
        //: setupSubViewsConstraint()
        observerConstraint()
        //: refreshUI()
        track()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(sweepUnderTheRugPress),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: consLet_exploreScreenValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        JewishCalendarMonthThen.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        JewishCalendarMonthThen.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.belowUpSize(colors: [UIColor(hex: "#201E50")!.cgColor, UIColor(hex: "#1F1624")!.cgColor], size: CGSize(width: consLet_errorDeviceHeightData, height: consLet_sessionName))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.nearTap(name: "quick_video_topview")
        topView.image = UIImage.nearTap(name: (str_finishPathData.replacingOccurrences(of: "at", with: "ic") + "k_vide" + String(str_collectionData.suffix(8)) + str_touchImageText.replacingOccurrences(of: "content", with: "w")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.nearTap(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.nearTap(name: (str_shareText.replacingOccurrences(of: "slide", with: "b") + String(str_availableName.suffix(4)) + "ack_white")), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(filter), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(consLet_netViewValue + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.little(fontSize: 17)
        titleLab.font = UIFont.little(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_minValue) + String(str_panText)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = LabelPositionReactiveCompatible()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.nearTap(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.nearTap(name: (String(str_pathContent) + String(str_labData.suffix(4)) + "ank_coin")), for: .normal)
        //: coinBtn.setImage(UIImage.nearTap(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.nearTap(name: (String(str_pathContent) + String(str_labData.suffix(4)) + "ank_coin")), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.appNameVisualProperty(), for: .normal)
        //: coinBtn.setTitle("\(IndexStyleAppManager.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(IndexStyleAppManager.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.loadEnable(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.loadEnable(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: TitleShowDataSource = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = TitleShowDataSource(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.filter()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_statusValue) + String(str_pathName.prefix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(chemicalElement), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_saveData) + str_scaleLastTitle.replacingOccurrences(of: "video", with: "ip"))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(filter), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(wearerSort), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: [UIColor(hex: "#9610FF")!.cgColor, UIColor(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [RoomResultModel] = //: return Array<RoomResultModel>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.nearTap(name: "icon_coin_match_line")
        view.image = UIImage.nearTap(name: (String(str_deviceButtonActualContent) + String(str_targetData)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension AutomaticallyErrorDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func filter() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func wearerSort() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = ["matchId": self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   "source": self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   "type": self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   "uid": self.currentModel.uid]
        //: if IndexStyleAppManager.share.loginUserMode.freeCallTimes > 0 && IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if IndexStyleAppManager.share.loginUserMode.freeCallTimes > 0, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_cellText) + String(str_modelWithTitle)))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = ["cmd": (str_modeTopTitleData.replacingOccurrences(of: "view", with: "q") + String(str_showName)), "data": data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        JewishCalendarMonthThen.shared.objectInfo(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        JewishCalendarMonthThen.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        JewishCalendarMonthThen.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func sweepUnderTheRugPress() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        DeviceManagerRequest.toThat { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! LabelPositionReactiveCompatible
            //: coinBtn.setTitle(IndexStyleAppManager.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(IndexStyleAppManager.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func chemicalElement() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        track()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension AutomaticallyErrorDelegate: QualityMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func sizeBy(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func subjugate(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: AutomaticallyErrorDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData["uid"] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = MetronymicThen()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = PastChatModel.videoRemove(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - ViewObjectProtocol

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension AutomaticallyErrorDelegate: ViewObjectProtocol {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func realize(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_titleData.prefix(4)) + "questCa" + String(str_callValue)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.noblesseExtra(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == ResourceBlockDefaultsSerializable.CallEnd.rawValue {
                //: clickBackButtonAction()
                filter()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == ResourceBlockDefaultsSerializable.MoneyLack.rawValue {
                //: guard IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue else { return }
                //: PostPushManager.share.func__jumpToWebRecharge(sufficient: false)
                PostPushManager.share.chromaticColourMakeEnd(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension AutomaticallyErrorDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func cap() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func observerConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(consLet_tabValue)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(consLet_halfTitle + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func track() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        roundByReceive()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.stain(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = JewishCalendarMonthViewController(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.userRead()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if IndexStyleAppManager.share.appStatus != AppSkinStatus.normal.rawValue {
        if IndexStyleAppManager.share.appStatus != FailHashable.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! LabelPositionReactiveCompatible
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            roundByReceive()
        }
    }

    //: func setPriceBtn() {
    func roundByReceive() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: IndexStyleAppManager.share.loginUserMode.freeCallTimes)
        let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: IndexStyleAppManager.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
