
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_stackTitle:[UInt8] = [0xd,0xa,0xd,0x10,0x4c,0x7,0xb,0x0,0x1,0x16,0x5e,0x4d,0x44,0xc,0x5,0x17,0x44,0xa,0xb,0x10,0x44,0x6,0x1,0x1,0xa,0x44,0xd,0x9,0x14,0x8,0x1,0x9,0x1,0xa,0x10,0x1,0x0]

private func shirtButton(name num: UInt8) -> UInt8 {
    return num ^ 100
}

/*: "Followers" :*/
fileprivate let str_playerValue:[Character] = ["F","o","l","l"]
fileprivate let str_rowData:String = "OWERS"

/*: "Following" :*/
fileprivate let str_endValue:[Character] = ["F","o","l","l","o","w","i","n"]
fileprivate let str_minName:String = "image"

/*: "#E6E6E6" :*/
fileprivate let str_bubbleText:String = "that name#E6E6E6"

/*: "btn_message_more" :*/
fileprivate let str_normalClearText:String = "cancel throughbtn_"
fileprivate let str_dayAccessValue:[Character] = ["o","r","e"]

/*: "UID:  :*/
fileprivate let str_titleValue:[Character] = ["U","I","D",":"," "]

/*: "level_ :*/
fileprivate let str_frameData:String = "strokevel"
fileprivate let str_endCenterName:[Character] = ["_"]

/*: "Follow" :*/
fileprivate let str_stackName:String = "Followintimate need"

/*: "Chat" :*/
fileprivate let str_addLastName:String = "male let make live letChat"

/*: "attentionUid" :*/
fileprivate let str_inputName:String = "amode"
fileprivate let str_fillValue:[Character] = ["e","n","t","i","o","n","U","i","d"]

/*: "source" :*/
fileprivate let str_makeName:String = "sourproducte"

/*: "Report" :*/
fileprivate let str_headData:String = "Reportelse edit for"

/*: "Block" :*/
fileprivate let str_showName:String = "Blockimage indicator effect case phone"

/*: "Muted" :*/
fileprivate let str_backTitle:String = "Mutedinfo position index lab property"

/*: "Mute" :*/
fileprivate let str_indexTitle:[Character] = ["M","u","t","e"]

/*: "#F6F6F6" :*/
fileprivate let str_locationTitle:[Character] = ["#","F"]
fileprivate let str_deviceData:String = "6F6F6view content add self"

/*: "Cancel" :*/
fileprivate let str_addData:String = "Cancemask raw"
fileprivate let str_selectedValue:String = "model"

/*: "OK" :*/
fileprivate let str_clickValue:String = "Oerror"

/*: "Kicked out of the live room" :*/
fileprivate let str_takeFinishName:String = "Kickup bind error make regular"
fileprivate let str_messageData:String = "make info toput of"
fileprivate let str_resultValue:String = "ve roomshow comment count"

/*: "uid" :*/
fileprivate let str_modeData:[UInt8] = [0x64,0x69,0x75]

/*: "Shielding Success" :*/
fileprivate let str_bottomGiftData:String = "manager"
fileprivate let str_addName:String = "hielcall"
fileprivate let str_picTitle:String = "CCESS"

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let str_backgroundImageTitle:[UInt8] = [0x78,0x4b,0x5c,0x19,0x40,0x56,0x4c,0x19,0x4a,0x4c,0x4b,0x5c,0x19,0x40,0x56,0x4c,0x19,0x4e,0x58,0x57,0x4d,0x19,0x4d,0x56,0x19,0x5a,0x58,0x57,0x5a,0x5c,0x55,0x19,0x4d,0x51,0x5c,0x19,0x54,0x4c,0x4d,0x5c,0x6]

private func letPop(video num: UInt8) -> UInt8 {
    return num ^ 57
}

/*: "Confirm" :*/
fileprivate let str_viewValue:String = "equal class window normal cellCo"
fileprivate let str_textValue:String = "npendingrm"

/*: "The mute has been lifted~" :*/
fileprivate let str_formatName:[Character] = ["T","h","e"," ","m","u","t","e"," ","h"]
fileprivate let str_detailTextValue:String = "abubble"
fileprivate let str_partyData:String = "to inside deadline bee"
fileprivate let str_addValue:String = "fted~let bar to image user"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToCardView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/12.
//

//: import UIKit
import UIKit

//: enum LiveUserCardType: Int {
enum KeyValueConvertible: Int {
    //: case user_me = 0
    case user_me = 0 // 当前用户

    //: case user_other
    case user_other // 别人
}

//: @objc protocol TalkingLiveUserCardViewDelegate: NSObjectProtocol {
@objc protocol TotalerpretationViewDelegate: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func funcListNickname(uid: String, nickname: String)
}

//: class TalkingLiveUserCardView: UIView {
class ToCardView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: KeyValueConvertible?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
    var liveUserId = String(DecisionMakerReactiveCompatible.barIn().liveRoomModel.streamerInfo.uid) // 主播ID
    //: var liveRoomDanmuID = TalkingLiveManager.shared().liveRoomModel.chatGroupId
    var liveRoomDanmuID = DecisionMakerReactiveCompatible.barIn().liveRoomModel.chatGroupId
    //: var userModel = TalkingUserInfoModel.init()
    var userModel = MonthLabelHandyJSON()

    //: open weak var delegate: TalkingLiveUserCardViewDelegate?
    open weak var delegate: TotalerpretationViewDelegate?

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
        removeTask()
        //: setupSubViewsConstraint()
        tableRange()
        //: reqUserCardInfo()
        tapInfo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_stackTitle.map{shirtButton(name: $0)}, encoding: .utf8)!)
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
        btn.addTarget(self, action: #selector(addBy), for: .touchUpInside)
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
        lab.text = (String(str_playerValue) + str_rowData.lowercased()).localized
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
        lab.text = (String(str_endValue) + str_minName.replacingOccurrences(of: "image", with: "g")).localized
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
        btn.setImage(UIImage.nearTap(name: (String(str_normalClearText.suffix(4)) + "message_m" + String(str_dayAccessValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(transactionTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: EqualMuteView = {
        //: let v = TalkingLiveRoomMuteView()
        let v = EqualMuteView()
        //: v.viewType  = .live
        v.viewType = .live
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingLiveUserCardView {
extension ToCardView {
    //: func reqUserCardInfo() {
    func tapInfo() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId) { succeed, result, errorModel in
        DecisionMakerReactiveCompatible.mainTo(uid: self.uid, streamerUid: liveUserId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<MonthLabelHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.nameHidden()
            }
        }
    }

    //: func setUserCardData() {
    func nameHidden() {
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
            clickSex(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func clickSex(sex: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if IndexStyleAppManager.share.loginUserMode.sex == sex {
        if IndexStyleAppManager.share.loginUserMode.sex == sex {
            //: dataSource = ["@"]
            dataSource = ["@"]
            //: } else {
        } else {
            //: dataSource = ["Follow", "@", "Chat"]
            dataSource = ["Follow", "@", "Chat"]
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: dataSource.remove(at: 0)
                dataSource.remove(at: 0)
            }
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.tag = 200 + i
            btn.tag = 200 + i
            //: btn.setTitleColor(UIColor.appThemeColor(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.labelSumervalMedium(), for: UIControl.State.normal)
            //: btn.titleLabel?.font = UIFont.little(fontSize: 15)
            btn.titleLabel?.font = UIFont.little(fontSize: 15)
            //: btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(componentSender(sender:)), for: UIControl.Event.touchUpInside)
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
    @objc func componentSender(sender: UIButton) {
        //: let tag = sender.tag - 200
        let tag = sender.tag - 200
        //: if IndexStyleAppManager.share.loginUserMode.sex == self.userModel.sex {
        if IndexStyleAppManager.share.loginUserMode.sex == self.userModel.sex {
            //: switch tag {
            switch tag {
            //: case 0:
            case 0:
                //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                self.delegate?.funcListNickname(uid: self.userModel.uid, nickname: self.userModel.nickname)
                //: self.dismiss()
                self.littleness()
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: } else {
        } else {
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.funcListNickname(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.littleness()
                //: break
                //: case 1:
                case 1:
                    //: PostPushManager.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    PostPushManager.share.birthday(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.littleness()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
                //: } else {
            } else {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: freshfollowUser(sender: sender)
                    removeReserve(sender: sender)
                //: break
                //: case 1:
                case 1:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.funcListNickname(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.littleness()
                //: break
                //: case 2:
                case 2:
                    //: PostPushManager.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    PostPushManager.share.birthday(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.littleness()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func removeReserve(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        doingPop(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func doingPop(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(str_inputName.replacingOccurrences(of: "mode", with: "tt") + String(str_fillValue))] = uid
        //: dict["source"] = "1"
        dict["source"] = "1"
        //: TalkingChatRequestTool.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        ChatMakeReactiveCompatible.statusElement(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func addBy() {
        //: PostPushManager.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        PostPushManager.share.miniskirt(uid: self.userModel.uid)
        //: self.dismiss()
        self.littleness()
    }
}

//: extension TalkingLiveUserCardView {
extension ToCardView {
    //: @objc func moreBtnClick() {
    @objc func transactionTo() {
        //: var titleArray = ["Report".localized, "Block".localized]
        var titleArray = ["Report".localized, "Block".localized]
        /// 主播
        //: if liveUserId == IndexStyleAppManager.share.loginUserMode.userID {
        if liveUserId == IndexStyleAppManager.share.loginUserMode.userID {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: titleArray.append("Muted".localized)
                titleArray.append("Muted".localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append("Mute".localized)
            }
        }
        //: if self.userModel.inMyBlackList {
        if self.userModel.inMyBlackList {
            //: titleArray.remove(at: 1)
            titleArray.remove(at: 1)
        }
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
    func equalPlayerShow() {
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
    @objc func littleness() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveUserCardView: DropDownMenuViewDelegate {
extension ToCardView: StoreViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func star(index: Int, title: String) {
        /// 举报
        //: if index == 0 {
        if index == 0 {
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = ValueDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.thirdView(view: nil)

            /// 拉黑
            //: } else if index == 1 {
        } else if index == 1 {
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
                        //: if self.liveUserId == IndexStyleAppManager.share.loginUserMode.userID {
                        if self.liveUserId == IndexStyleAppManager.share.loginUserMode.userID {
                            //: let toastStr = "Kicked out of the live room".localized
                            let toastStr = (String(str_takeFinishName.prefix(4)) + "ed o" + String(str_messageData.suffix(5)) + " the li" + String(str_resultValue.prefix(7))).localized
                            //: ProgressHUD.toast(toastStr)
                            DeviceFailThen.picToast(toastStr)

                            //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                            NotificationCenter.default.post(name: consLet_keyNoTitle,
                                                            //: object: nil,
                                                            object: nil,
                                                            //: userInfo: ["uid": self.userModel.uid])
                                                            userInfo: ["uid": self.userModel.uid])

                            //: }else {
                        } else {
                            //: let toastStr = "Shielding Success".localized
                            let toastStr = (str_bottomGiftData.replacingOccurrences(of: "manager", with: "S") + str_addName.replacingOccurrences(of: "call", with: "d") + "ing Su" + str_picTitle.lowercased()).localized
                            //: ProgressHUD.toast(toastStr)
                            DeviceFailThen.picToast(toastStr)
                        }
                        //: self.dismiss()
                        self.littleness()
                    }
                }
            }
            //: } else if index == 2 {
        } else if index == 2 {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                EqualAlertShow.showConfig(title: nil, message: String(bytes: str_backgroundImageTitle.map{letPop(video: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()
                    //: ProgressHUD.show()
                    DeviceFailThen.callMake()
                    //: TalkingAudienceManager().req_liveRoomUnmute(targetUid: self.userModel.uid, completion: { succeed, result, errorModel in
                    ServerReactiveCompatible().recreation(targetUid: self.userModel.uid, completion: { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        DeviceFailThen.theAdd()
                        //: if succeed {
                        if succeed {
                            //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                            self.scaleMsg(showMsg: (String(str_formatName) + str_detailTextValue.replacingOccurrences(of: "bubble", with: "s") + String(str_partyData.suffix(4)) + "n li" + String(str_addValue.prefix(5))).localized)
                        }
                        //: self.dismiss()
                        self.littleness()
                        //: })
                    })
                }
                //: } else {
            } else {
                //: muteView.showView()
                muteView.duringUser()
                //: muteView.targetUid = self.userModel.uid
                muteView.targetUid = self.userModel.uid
                //: self.dismiss()
                self.littleness()
            }
        }
    }
}

//: extension TalkingLiveUserCardView {
extension ToCardView {
    // 添加视图
    //: private func setupSubviews() {
    private func removeTask() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
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
    private func tableRange() {
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
            //: make.top.equalTo(-33)
            make.top.equalTo(-33)
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
            self.littleness()
        }
    }
}
