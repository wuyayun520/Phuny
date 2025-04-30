
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_layerWithText:[UInt8] = [0x6c,0x71,0x6c,0x77,0x2b,0x66,0x72,0x67,0x68,0x75,0x3d,0x2c,0x23,0x6b,0x64,0x76,0x23,0x71,0x72,0x77,0x23,0x65,0x68,0x68,0x71,0x23,0x6c,0x70,0x73,0x6f,0x68,0x70,0x68,0x71,0x77,0x68,0x67]

fileprivate func landmarkTitle(drag num: UInt8) -> UInt8 {
    let value = Int(num) - 3
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "  " :*/
fileprivate let str_cookieContent:String = "  "

/*: "Say something...     " :*/
fileprivate let str_sizeTitle:String = "Say scurve play"
fileprivate let str_scaleStreamName:String = "hing.to for cell"
fileprivate let str_makeInfoValue:[Character] = [".","."," "," "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let str_lineValue:String = "btn_vinsert image view manager"
fileprivate let str_requestLabelData:String = "color"
fileprivate let str_labValue:String = "return let vareo_gif"

/*: "btn_live_gd_nor" :*/
fileprivate let str_insideBarName:[Character] = ["b","t","n","_","l","i","v","e","_","g","d","_","n","o","r"]

/*: "btn_live_gd_pre" :*/
fileprivate let str_fieldValue:String = "btn_limanager self instance"
fileprivate let str_rawDomainName:String = "cleare"

/*: "btn_live_sx_nor" :*/
fileprivate let str_makeValue:String = "btn_ligift style var"
fileprivate let str_labelUserValue:[Character] = ["_","n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let str_addValue:String = "self share view true makebtn_live_"
fileprivate let str_giftTitle:String = "sx_prefile self count normal"

/*: "#FF2348" :*/
fileprivate let str_groupTableData:String = "page make than create next#FF2348"

/*: "btn_live_yx_nor" :*/
fileprivate let str_viewCallTitle:String = "sound varbtn_li"
fileprivate let str_upName:[Character] = ["_","n","o","r"]

/*: "btn_live_yx_pre" :*/
fileprivate let str_kitEndText:[Character] = ["b","t","n","_","l","i","v","e","_","y","x","_","p","r","e"]

/*: "toUid" :*/
fileprivate let str_emptyName:String = "toUidresult error the numb data"

/*: "giftId" :*/
fileprivate let str_makeData:[Character] = ["g","i","f","t","I"]
fileprivate let str_limitName:String = "product"

/*: "giftNum" :*/
fileprivate let str_viewSectionTitle:[Character] = ["g","i","f","t","N"]
fileprivate let str_imageName:[Character] = ["u","m"]

/*: "pkgItemsetId" :*/
fileprivate let str_rawValue:[Character] = ["p","k","g","I","t","e","m","s","e","t"]
fileprivate let str_topToTitle:[Character] = ["I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_fatalTitle:[Character] = ["t","o","t","a","l"]
fileprivate let str_iconData:String = "equal render factor guardMfCoin"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockManagerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol BankManagerViewDelegate: NSObjectProtocol {
    //: func func__commentBtnClick()
    func operation()
}

//: class TalkingLiveRoomBottomView: UIView {
class BlockManagerDelegate: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: BankManagerViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        before()
        //: setupSubViewsConstraint()
        sawLog()
        //: HiddenConversationListener.shared.func__addDelegate(self)
        HiddenConversationListener.shared.inventoryItem(self)
        //: refreshRedCountStatus()
        viewOpen()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_layerWithText.map{landmarkTitle(drag: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_sizeTitle.prefix(5)) + "omet" + String(str_scaleStreamName.prefix(5)) + String(str_makeInfoValue)).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.fullMoon(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(memberData), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_lineValue.prefix(5)) + str_requestLabelData.replacingOccurrences(of: "color", with: "id") + String(str_labValue.suffix(6)) + "t_nor")), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_lineValue.prefix(5)) + str_requestLabelData.replacingOccurrences(of: "color", with: "id") + String(str_labValue.suffix(6)) + "t_nor")), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pinText), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_insideBarName))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_fieldValue.prefix(6)) + "ve_gd_p" + str_rawDomainName.replacingOccurrences(of: "clear", with: "r"))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toAGreaterExtentSumMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_makeValue.prefix(6)) + "ve_sx" + String(str_labelUserValue))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_addValue.suffix(9)) + String(str_giftTitle.prefix(6)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(chat), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: "#FF2348")
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_viewCallTitle.suffix(6)) + "ve_yx" + String(str_upName))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_kitEndText))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(endRandom), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: HalfLabelViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = HalfLabelViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: SafetyMarginMoreView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = SafetyMarginMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: DeviceViewDelegate = {
        //: let v = TalkingLiveRoomGamesView()
        let v = DeviceViewDelegate()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension BlockManagerDelegate {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func memberData() {
        //: delegate?.func__commentBtnClick()
        delegate?.operation()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func pinText() {
        //: func__sendGift()
        anFunc()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func chat() {
        //: PostPushManager.share.func__pushToChatListVC(isHalfView: true)
        PostPushManager.share.colorGroup(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func toAGreaterExtentSumMove() {
        //: moreView.showView()
        moreView.giftHorse()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func endRandom() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.demonstrateLoad(from: .LiveRoom)
    }
}

// MARK: - HiddenObjectProtocol【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension BlockManagerDelegate: HiddenObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func notBegin(count _: Int) {
        //: refreshRedCountStatus()
        viewOpen()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func viewOpen() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [HiddenConversationListener.shared.topConvList, HiddenConversationListener.shared.norConvList]
        let convLists = [HiddenConversationListener.shared.topConvList, HiddenConversationListener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension BlockManagerDelegate {
    //: func func__sendGift() {
    func anFunc() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        RoomGiftManager.share.indexMake(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.beforePush()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func beforePush() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
        giftView.lifeStyle(needReload: true, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        userRead()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.viewEnable()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AwardModelType, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.localNum(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func localNum(giftModel: AwardModelType, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            noblesseExtra(showMsg: consLet_momentValue)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params["toUid"] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params["giftId"] = giftModel.gid
        //: params["giftNum"] = giftNum
        params["giftNum"] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_rawValue) + String(str_topToTitle))] = giftModel.pkgItemsetId
        }

        //: TalkingChatRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        ChatMakeReactiveCompatible.tableCampOut(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.videoViewCancel(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.fastening(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.headUp(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func headUp(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_fatalTitle) + String(str_iconData.suffix(6)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_fatalTitle) + String(str_iconData.suffix(6)))] as! NSNumber
            //: IndexStyleAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            IndexStyleAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
        giftView.lifeStyle(needReload: false, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func videoViewCancel(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard IndexStyleAppManager.share.loginUserMode.status != 1 else {
            guard IndexStyleAppManager.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    noblesseExtra(showMsg: errorStr)
                }
                //: return
                return
            }
            //: PostPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            PostPushManager.share.chromaticColourMakeEnd(clickEvent: consLet_pathName, sufficient: false)
            //: giftView.dismissView()
            giftView.viewDrop()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ServiceThen(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.show()
            view.addName()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                noblesseExtra(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension BlockManagerDelegate {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func locationPost(_ liveModel: DomicileModelType) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue,
        if IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func before() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func sawLog() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
