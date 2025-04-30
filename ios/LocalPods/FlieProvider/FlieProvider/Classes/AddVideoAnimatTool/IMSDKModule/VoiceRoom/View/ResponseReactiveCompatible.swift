
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_lineData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Followers" :*/
fileprivate let str_arrayAtValue:[Character] = ["F","o","l","l","o","w"]
fileprivate let str_dataValue:String = "ertransaction"

/*: "Following" :*/
fileprivate let str_panMaxToData:String = "Followcontent mask"
fileprivate let str_aboutText:String = "ielectiong"

/*: "#E6E6E6" :*/
fileprivate let str_bubbleCornerValue:[Character] = ["#","E","6","E","6","E","6"]

/*: "btn_message_more" :*/
fileprivate let str_homeIconName:String = "label message falsebtn_me"
fileprivate let str_contentViewData:String = "MORE"

/*: "UID:  :*/
fileprivate let str_timeData:[Character] = ["U","I","D",":"," "]

/*: "level_ :*/
fileprivate let str_processorName:String = "self iflevel_"

/*: "Gift" :*/
fileprivate let str_managerLayerMakeName:[UInt8] = [0x74,0x66,0x69,0x47]

/*: "Mike" :*/
fileprivate let str_labelName:[UInt8] = [0xf7,0x13,0x15,0xf]

fileprivate func mainStyle(index num: UInt8) -> UInt8 {
    let value = Int(num) - 170
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Follow" :*/
fileprivate let str_birthText:[UInt8] = [0xd2,0xfb,0xf8,0xf8,0xfb,0xe3]

private func ginMill(video num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "gift_voice_card" :*/
fileprivate let str_officialData:String = "GIFT"
fileprivate let str_roomTapData:String = "button true_card"

/*: "btn_party_voice_nor" :*/
fileprivate let str_makeValue:String = "btn_pposition let hidden record"
fileprivate let str_componentData:String = "oicthe"

/*: "btn_party_voice_pre" :*/
fileprivate let str_itemProfileName:String = "array view if map varbtn_p"
fileprivate let str_communicationName:String = "OICE"

/*: "attentionUid" :*/
fileprivate let str_infoName:String = "aview"
fileprivate let str_requestMakeData:[Character] = ["t","e","n","t","i","o","n","U","i","d"]

/*: "source" :*/
fileprivate let str_changeText:[Character] = ["s","o","u","r","c","e"]

/*: "Kick out" :*/
fileprivate let str_numberData:String = "if rightKick out"

/*: "Unmute" :*/
fileprivate let str_awakeTitle:[Character] = ["U","n","m","u","t","e"]

/*: "Mute" :*/
fileprivate let str_labelColorViewText:String = "Muteto max true make error"

/*: "Kick off" :*/
fileprivate let str_atName:String = "Kick offextra as error add data"

/*: "Block" :*/
fileprivate let str_contentMessageTitle:String = "Blockgroup let to false"

/*: "Report" :*/
fileprivate let str_addYouData:String = "return table layer ingredient minimizeReport"

/*: "#F6F6F6" :*/
fileprivate let str_indexName:[Character] = ["#","F","6","F","6","F"]
fileprivate let str_fillValue:String = "request"

/*: "Confirm to kick out the room?" :*/
fileprivate let str_viewData:[Character] = ["C","o","n","f","i","r","m"," ","t","o"," ","k","i","c","k"]
fileprivate let str_textData:String = " outleading return conversation view"
fileprivate let str_nameValue:String = " room?view self var"

/*: "Cancel" :*/
fileprivate let str_directionValue:[Character] = ["C","a","n","c","e","l"]

/*: "Sure" :*/
fileprivate let str_touchData:String = "Suretitle type"

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let str_viewValue:[UInt8] = [0x5d,0x6e,0x79,0x3c,0x65,0x73,0x69,0x3c,0x6f,0x69,0x6e,0x79,0x3c,0x65,0x73,0x69,0x3c,0x6b,0x7d,0x72,0x68,0x3c,0x68,0x73,0x3c,0x7f,0x7d,0x72,0x7f,0x79,0x70,0x3c,0x68,0x74,0x79,0x3c,0x71,0x69,0x68,0x79,0x23]

private func pathTop(mode num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "Confirm" :*/
fileprivate let str_frameName:[Character] = ["C","o","n","f","i","r","m"]

/*: "The mute has been lifted~" :*/
fileprivate let str_rowValue:String = "self size passThe m"
fileprivate let str_videoName:String = "s been player type tap"
fileprivate let str_lineName:String = "lifted~as make session identity else"

/*: "Confirm to kick off the seat?" :*/
fileprivate let str_valueGiftTransformName:String = "Confirnone image video check result"
fileprivate let str_actionTitle:String = " kick self super self or to"
fileprivate let str_filePlayerContent:String = "seat?video on view self"

/*: "OK" :*/
fileprivate let str_videoData:String = "lab"

/*: "Shielding Success" :*/
fileprivate let str_groupTitle:String = "Shieldingmedium type action to log"
fileprivate let str_normalTitle:String = " Successextension let make load left"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResponseReactiveCompatible.swift
//  AbroadTalking
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomCardViewDelegate: NSObjectProtocol {
@objc protocol MakeObjectProtocol: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func belowPop(uid: String, nickname: String)

    //: func func__giftUserClick(uid: String)
    func objectUp(uid: String)

    //: func func__muteUserMickClick(uid: String, mikeStatus: Int, position: Int)
    func header(uid: String, mikeStatus: Int, position: Int)

    //: func func__followUserSucess(uid: String)
    func undo(uid: String)
}

//: class TalkingVoiceRoomCardView: UIView {
class ResponseReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: KeyValueConvertible?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
    var liveUserId = String(EqualSendReactiveCompatible.clout().partyModel.streamerInfo.uid) // 主播ID

    //: var userModel = TalkingUserInfoModel.init()
    var userModel = MonthLabelHandyJSON()

    //: open weak var delegate: TalkingVoiceRoomCardViewDelegate?
    open weak var delegate: MakeObjectProtocol?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == IndexStyleAppManager.share.loginUserMode.userID {
        if uid == IndexStyleAppManager.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        noFinish()
        //: setupSubViewsConstraint()
        imageSelect()
        //: reqUserCardInfo()
        cubeInfo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_lineData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 12)
        label.font = .loadEnable(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.bringHomeColor()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snap), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 15)
        label.font = .loadEnable(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.appNameVisualProperty()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 13)
        label.font = .loadEnable(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.bringHomeColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .bringHomeColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(str_arrayAtValue) + str_dataValue.replacingOccurrences(of: "transaction", with: "s")).localized
        //: lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 12)
        lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 15)
        lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .bringHomeColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(str_panMaxToData.prefix(6)) + str_aboutText.replacingOccurrences(of: "election", with: "n")).localized
        //: lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 12)
        lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 15)
        lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: "#E6E6E6")
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.nearTap(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_homeIconName.suffix(6)) + "ssage_" + str_contentViewData.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(timeUnitClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: EqualMuteView = {
        //: let v = TalkingLiveRoomMuteView()
        let v = EqualMuteView()
        //: v.viewType  = .voiceRoom
        v.viewType = .voiceRoom
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingVoiceRoomCardView {
extension ResponseReactiveCompatible {
    //: func reqUserCardInfo() {
    func cubeInfo() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId, roomId: TalkingVoiceRoomManager.shared().partyModel.roomId) { succeed, result, errorModel in
        DecisionMakerReactiveCompatible.mainTo(uid: self.uid, streamerUid: liveUserId, roomId: EqualSendReactiveCompatible.clout().partyModel.roomId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<MonthLabelHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.statusOf()
            }
        }
    }

    //: func setUserCardData() {
    func statusOf() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = "UID: \(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.net(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.nearTap(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.nearTap(name: "level_\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            listenerSex(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func listenerSex(sex _: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if self.userModel.isOnMike {
        if self.userModel.isOnMike {
            //: dataSource.append("Gift")
            dataSource.append("Gift")
            //: if liveUserId == IndexStyleAppManager.share.loginUserMode.userID && self.userModel.mikeStatus != 0  {
            if liveUserId == IndexStyleAppManager.share.loginUserMode.userID, self.userModel.mikeStatus != 0 { // 当前用户是主播非自己闭麦  闭麦/开麦 按钮
                //: dataSource.append("Mike")
                dataSource.append("Mike")
            }
        }
        //: dataSource.append("@")
        dataSource.append("@")

        //: if self.userModel.isAttention == false {
        if self.userModel.isAttention == false {
            //: dataSource.append("Follow")
            dataSource.append("Follow")
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btnStr = dataSource[i]
            let btnStr = dataSource[i]
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.accessibilityLabel = btnStr
            btn.accessibilityLabel = btnStr
            //: btn.setTitleColor(UIColor.appThemeColor(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.labelSumervalMedium(), for: UIControl.State.normal)
            //: if btnStr == "Gift" {
            if btnStr == "Gift" {
                //: btn.setImage(UIImage.nearTap(name: "gift_voice_card"), for: .normal)
                btn.setImage(UIImage.nearTap(name: (str_officialData.lowercased() + "_voice" + String(str_roomTapData.suffix(5)))), for: .normal)
                //: }else if btnStr == "Mike"{
            } else if btnStr == "Mike" {
                //: btn.setImage(UIImage.nearTap(name: "btn_party_voice_nor"), for: .normal)
                btn.setImage(UIImage.nearTap(name: (String(str_makeValue.prefix(5)) + "arty_v" + str_componentData.replacingOccurrences(of: "the", with: "e") + "_nor")), for: .normal)
                //: btn.setImage(UIImage.nearTap(name: "btn_party_voice_pre"), for: .selected)
                btn.setImage(UIImage.nearTap(name: (String(str_itemProfileName.suffix(5)) + "arty_v" + str_communicationName.lowercased() + "_pre")), for: .selected)
                //: if self.userModel.mikeStatus != 2 {
                if self.userModel.mikeStatus != 2 {
                    //: btn.isSelected = true
                    btn.isSelected = true
                }
                //: }else{
            } else {
                //: btn.titleLabel?.font = UIFont.little(fontSize: 15)
                btn.titleLabel?.font = UIFont.little(fontSize: 15)
                //: btn.setTitle(btnStr.localized, for: UIControl.State.normal)
                btn.setTitle(btnStr.localized, for: UIControl.State.normal)
            }
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(namePoint(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: "#E6E6E6")
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func namePoint(sender: UIButton) {
        //: let accessLabel = sender.accessibilityLabel ?? ""
        let accessLabel = sender.accessibilityLabel ?? ""
        //: switch accessLabel {
        switch accessLabel {
        //: case "Gift":
        case "Gift":
            //: self.delegate?.func__giftUserClick(uid: self.userModel.uid)
            self.delegate?.objectUp(uid: self.userModel.uid)
            //: self.dismiss()
            self.bringHome()
        //: case "Mike":
        case "Mike":
            //: self.delegate?.func__muteUserMickClick(uid: self.userModel.uid, mikeStatus: self.userModel.mikeStatus, position: self.userModel.mikePosition)
            self.delegate?.header(uid: self.userModel.uid, mikeStatus: self.userModel.mikeStatus, position: self.userModel.mikePosition)
            //: self.dismiss()
            self.bringHome()
        //: case "@":
        case "@":
            //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
            self.delegate?.belowPop(uid: self.userModel.uid, nickname: self.userModel.nickname)
            //: self.dismiss()
            self.bringHome()
        //: case "Follow":
        case "Follow":
            //: freshfollowUser(sender: sender)
            removeFreshfollow(sender: sender)
        //: default: break
        default: break
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func removeFreshfollow(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        blankImage(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
                //: self.delegate?.func__followUserSucess(uid: self.userModel.uid)
                self.delegate?.undo(uid: self.userModel.uid)
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func blankImage(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(str_infoName.replacingOccurrences(of: "view", with: "t") + String(str_requestMakeData))] = uid
        //: dict["source"] = "2"
        dict["source"] = "2"
        //: TalkingChatRequestTool.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        ChatMakeReactiveCompatible.statusElement(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func snap() {
        //: PostPushManager.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        PostPushManager.share.miniskirt(uid: self.userModel.uid)
        //: self.dismiss()
        self.bringHome()
    }
}

//: extension TalkingVoiceRoomCardView {
extension ResponseReactiveCompatible {
    //: @objc func moreBtnClick() {
    @objc func timeUnitClick() {
        //: var titleArray: [String] = []
        var titleArray: [String] = []
        /// 主播 & 用户在房间内
        //: if liveUserId == IndexStyleAppManager.share.loginUserMode.userID && self.userModel.isInRoom {
        if liveUserId == IndexStyleAppManager.share.loginUserMode.userID, self.userModel.isInRoom {
            //: titleArray.append("Kick out".localized)
            titleArray.append("Kick out".localized)
            //: if self.userModel.isPartyMute {
            if self.userModel.isPartyMute {
                //: titleArray.append("Unmute".localized)
                titleArray.append("Unmute".localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append("Mute".localized)
            }
            //: if self.userModel.isOnMike {
            if self.userModel.isOnMike {
                //: titleArray.append("Kick off".localized)
                titleArray.append("Kick off".localized)
            }
            //: if !self.userModel.inMyBlackList {
            if !self.userModel.inMyBlackList {
                //: titleArray.append("Block".localized)
                titleArray.append("Block".localized)
            }
        }
        //: titleArray.append("Report".localized)
        titleArray.append("Report".localized)

        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.OrientationConfig.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = SequenceDataSource.spectrumArray(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: "#F6F6F6")!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func nextShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: self.userRead()?.view ?? OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func bringHome() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingVoiceRoomCardView: DropDownMenuViewDelegate {
extension ResponseReactiveCompatible: StoreViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func star(index _: Int, title: String) {
        //: switch title {
        switch title {
        //: case "Kick out".localized:  // 踢出房间
        case "Kick out".localized: // 踢出房间
            //: TalkingAlertShow.alert(title: nil, message: "Confirm to kick out the room?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Sure".localized) {
            EqualAlertShow.showConfig(title: nil, message: (String(str_viewData) + String(str_textData.prefix(4)) + " the" + String(str_nameValue.prefix(6))).localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Sure".localized) {
                //: } rightBlock: {
            } rightBlock: {
                //: ProgressHUD.show()
                DeviceFailThen.callMake()
                //: TalkingVoiceRoomReqTool.req_VoiceRoomKickout(targetUid: self.userModel.uid, roomId: TalkingVoiceRoomManager.shared().partyModel.roomId) { succeed, result, errorModel in
                HeritageReqTool.doButton(targetUid: self.userModel.uid, roomId: EqualSendReactiveCompatible.clout().partyModel.roomId) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    DeviceFailThen.theAdd()
                    //: self.dismiss()
                    self.bringHome()
                }
            }
        //: case "Unmute".localized: // 解除禁言
        case "Unmute".localized: // 解除禁言
            //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
            EqualAlertShow.showConfig(title: nil, message: String(bytes: str_viewValue.map{pathTop(mode: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                //: } rightBlock: {
            } rightBlock: {
                //: ProgressHUD.show()
                DeviceFailThen.callMake()
                //: TalkingVoiceRoomReqTool.req_VoiceRoomUnMute(targetUid: self.userModel.uid, roomID:TalkingVoiceRoomManager.shared().partyModel.roomId, completion: { succeed, result, errorModel in
                HeritageReqTool.explainRequestCompletion(targetUid: self.userModel.uid, roomID: EqualSendReactiveCompatible.clout().partyModel.roomId, completion: { succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    DeviceFailThen.theAdd()
                    //: if succeed {
                    if succeed {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                        self.scaleMsg(showMsg: (String(str_rowValue.suffix(5)) + "ute ha" + String(str_videoName.prefix(7)) + String(str_lineName.prefix(7))).localized)
                    }
                    //: self.dismiss()
                    self.bringHome()
                    //: })
                })
            }
        //: case "Mute".localized: // 设置禁言
        case "Mute".localized: // 设置禁言
            //: muteView.showView()
            muteView.duringUser()
            //: muteView.targetUid = self.userModel.uid
            muteView.targetUid = self.userModel.uid
            //: self.dismiss()
            self.bringHome()

        //: case "Kick off".localized: /// 踢下麦
        case "Kick off".localized: /// 踢下麦
            //: TalkingAlertShow.alert(title: nil, message: "Confirm to kick off the seat?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Sure".localized) {
            EqualAlertShow.showConfig(title: nil, message: (String(str_valueGiftTransformName.prefix(6)) + "m to" + String(str_actionTitle.prefix(6)) + "off the " + String(str_filePlayerContent.prefix(5))).localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Sure".localized) {
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: self.userModel.uid.intValue, type: 3, position: self.userModel.mikePosition)
                EqualSendReactiveCompatible.clout().roomSuccess(uid: self.userModel.uid.intValue, type: 3, position: self.userModel.mikePosition)
                //: self.dismiss()
                self.bringHome()
            }

        //: case "Report".localized:
        case "Report".localized:
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = ValueDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.thirdView(view: nil)
        //: case "Block".localized:
        case "Block".localized:
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            EqualAlertShow.showConfig(title: nil, message: consLet_messageName, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                EqualAlertShow.postBegin()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                EqualAlertShow.postBegin()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                HiddenRequestManager.clickIcon(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Shielding Success".localized)
                        self.scaleMsg(showMsg: (String(str_groupTitle.prefix(9)) + String(str_normalTitle.prefix(8))).localized)
                        //: self.dismiss()
                        self.bringHome()
                    }
                }
            }
        //: default: break
        default: break
        }
    }
}

//: extension TalkingVoiceRoomCardView {
extension ResponseReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func noFinish() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topIcon)
        self.addSubview(topIcon)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func imageSelect() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView).offset(-33)
            make.top.equalTo(contentView).offset(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(consLet_errorDeviceHeightData / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-consLet_errorDeviceHeightData / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(consLet_errorDeviceHeightData / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.userRead()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.userRead()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.bringHome()
        }
    }
}
