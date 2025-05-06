
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "  " :*/
fileprivate let str_lineTapToData:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let str_nearName:[Character] = ["S","a","y"," ","s","o","m","e","t","h","i","n","g",".",".","."," "," "," "," "," "]

/*: "party_bottom_mic_open" :*/
fileprivate let str_addFlushName:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_","m","i","c"]
fileprivate let str_fieldValue:[Character] = ["_","o","p","e","n"]

/*: "party_bottom_mic_close" :*/
fileprivate let str_frameTitle:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_","m","i","c","_","c","l","o"]
fileprivate let str_tapName:String = "SE"

/*: "btn_video_gift_nor" :*/
fileprivate let str_addTitle:String = "btn_videokit from size image"
fileprivate let str_labelData:[Character] = ["_","g","i","f","t","_","n","o","r"]

/*: "btn_live_sx_nor" :*/
fileprivate let str_lineTitle:String = "for self databasebtn_li"
fileprivate let str_extraTitle:String = "ve_sxtarget let selection path"

/*: "btn_live_sx_pre" :*/
fileprivate let str_topData:[Character] = ["b","t","n","_","l","i","v","e","_"]
fileprivate let str_replyTitle:[Character] = ["s","x","_","p","r","e"]

/*: "#FF2348" :*/
fileprivate let str_arrayData:[Character] = ["#","F","F","2","3","4","8"]

/*: "Please contact the host to turn on the mic" :*/
fileprivate let str_playerTitle:[UInt8] = [0x63,0x69,0x6d,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x6f,0x74,0x20,0x74,0x73,0x6f,0x68,0x20,0x65,0x68,0x74,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: ", :*/
fileprivate let str_partyContent:[Character] = [","]

/*: "Please select an object" :*/
fileprivate let str_closeName:[Character] = ["P","l","e","a","s","e"," ","s","e"]
fileprivate let str_promotionEmptyReturnData:[Character] = ["l","e","c"]
fileprivate let str_titleValue:[Character] = ["t"," ","a","n"," ","o","b","j","e","c","t"]

/*: "toUid" :*/
fileprivate let str_labValue:String = "string view view stop lettoUid"

/*: "giftId" :*/
fileprivate let str_collectionText:[Character] = ["g","i","f","t","I"]
fileprivate let str_colorData:String = "D"

/*: "giftNum" :*/
fileprivate let str_awakeModeName:String = "table less elsegiftNum"

/*: "roomId" :*/
fileprivate let str_modelTitle:[Character] = ["r","o","o","m","I","d"]

/*: "pkgItemsetId" :*/
fileprivate let str_colorCallContent:[Character] = ["p","k","g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_lengthDataContent:[Character] = ["t","o","t","a","l","M"]
fileprivate let str_userQuantityTitle:String = "fCoinvideo return"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingObjectProtocol.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol IslamicCalendarMonthObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func viewBind()
}

//: class TalkingVoiceRoomBottomView: UIView {
class TalkingObjectProtocol: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: IslamicCalendarMonthObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        overPlayer()
        //: setupSubViewsConstraint()
        modelSub()
        //: HiddenConversationListener.shared.func__addDelegate(self)
        HiddenConversationListener.shared.inventoryItem(self)
        //: refreshRedCountStatus()
        vagaryStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelText.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_nearName)).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(beetle), for: .touchUpInside)
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
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_addFlushName) + String(str_fieldValue))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_frameTitle) + str_tapName.lowercased())), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pause), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_addTitle.prefix(9)) + String(str_labelData))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_addTitle.prefix(9)) + String(str_labelData))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enableLab), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_lineTitle.suffix(6)) + String(str_extraTitle.prefix(5)) + "_nor")), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_topData) + String(str_replyTitle))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(important), for: .touchUpInside)
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

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: HalfLabelViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = HalfLabelViewDelegate(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension TalkingObjectProtocol {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func format() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = EqualSendReactiveCompatible.clout().attribute(key: EqualSendReactiveCompatible.clout().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func cancelHide() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.me()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func beetle() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.viewBind()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func pause() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = EqualSendReactiveCompatible.clout().attribute(key: EqualSendReactiveCompatible.clout().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            EqualSendReactiveCompatible.clout().starKey(type: 4, position: EqualSendReactiveCompatible.clout().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            noblesseExtra(showMsg: String(bytes: str_playerTitle.reversed(), encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            EqualSendReactiveCompatible.clout().starKey(type: 5, position: EqualSendReactiveCompatible.clout().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func important() {
        //: PostPushManager.share.func__pushToChatListVC(isHalfView: true)
        PostPushManager.share.colorGroup(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func enableLab() {
        //: func__sendGift()
        elect()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension TalkingObjectProtocol {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func elect(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        RoomGiftManager.share.indexMake(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.funcUponSelectTotal(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func funcUponSelectTotal(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
        giftView.lifeStyle(needReload: true, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        userRead()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.userInSub(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.userInSub(allSelected: true)
        }
        //: giftView.showView()
        giftView.viewEnable()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: AwardModelType, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.messageNum(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func messageNum(giftModel: AwardModelType, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            noblesseExtra(showMsg: consLet_momentValue)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        for (_, model) in EqualSendReactiveCompatible.clout().mike() {
            //: if model.uid > 0, String(model.uid) != IndexStyleAppManager.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != IndexStyleAppManager.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            noblesseExtra(showMsg: (String(str_closeName) + String(str_promotionEmptyReturnData) + String(str_titleValue)).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params["toUid"] = toUid
        //: params["giftId"] = giftModel.gid
        params["giftId"] = giftModel.gid
        //: params["giftNum"] = giftNum
        params["giftNum"] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params["roomId"] = EqualSendReactiveCompatible.clout().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_colorCallContent))] = giftModel.pkgItemsetId
        }

        //: TalkingChatRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        ChatMakeReactiveCompatible.addCompletion(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.userResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.withTitle(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func withTitle(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_lengthDataContent) + String(str_userQuantityTitle.prefix(5)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_lengthDataContent) + String(str_userQuantityTitle.prefix(5)))] as! NSNumber
            //: IndexStyleAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            IndexStyleAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
        giftView.lifeStyle(needReload: false, mf_coin: IndexStyleAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func userResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - HiddenObjectProtocol【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension TalkingObjectProtocol: HiddenObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func notBegin(count _: Int) {
        //: refreshRedCountStatus()
        vagaryStatus()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func vagaryStatus() {
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

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension TalkingObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func overPlayer() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func modelSub() {
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
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
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
    }
}
