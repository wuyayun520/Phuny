
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nearTitle:[UInt8] = [0x6a,0x6d,0x6a,0x77,0x2b,0x60,0x6c,0x67,0x66,0x71,0x39,0x2a,0x23,0x6b,0x62,0x70,0x23,0x6d,0x6c,0x77,0x23,0x61,0x66,0x66,0x6d,0x23,0x6a,0x6e,0x73,0x6f,0x66,0x6e,0x66,0x6d,0x77,0x66,0x67]

/*: "#7166F9" :*/
fileprivate let str_propertyData:[Character] = ["#","7","1","6","6","F","9"]

/*: "party_seat_mike_close" :*/
fileprivate let str_sizeBackgroundName:String = "pato"
fileprivate let str_inputCookieText:String = "_miketo self"

/*: "party_seat_host" :*/
fileprivate let str_currentlyName:[Character] = ["p","a","r","t","y"]
fileprivate let str_playerName:[Character] = ["_","s","e","a","t","_","h","o","s","t"]

/*: "#FA9D33" :*/
fileprivate let str_normalSucceedCellValue:[Character] = ["#","F","A","9","D","3","3"]

/*: "party_seat_heartvalue" :*/
fileprivate let str_nameInviteText:[Character] = ["p","a","r","t","y","_","s","e","a","t","_","h","e","a","r","t","v","a","l"]
fileprivate let str_permissionHalfTitle:String = "background"

/*: "party_seat_lock" :*/
fileprivate let str_equalData:[UInt8] = [0xe3,0xf2,0xe1,0xe7,0xea,0xcc,0xe0,0xf6,0xf2,0xe7,0xcc,0xff,0xfc,0xf0,0xf8]

private func encephalonFill(line num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "party_seat_empty" :*/
fileprivate let str_clickName:String = "partargety"
fileprivate let str_frameTitle:String = "t_empview open tab track view"
fileprivate let str_birthdayPhotoGiftTitle:String = "TY"

/*: "99999+" :*/
fileprivate let str_addMidValue:[UInt8] = [0x54,0x54,0x54,0x54,0x54,0x46]

private func liveStyle(user num: UInt8) -> UInt8 {
    return num ^ 109
}

/*: "Unlock" :*/
fileprivate let str_succeedName:[Character] = ["U","n","l","o","c","k"]

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let str_modeName:[UInt8] = [0xac,0x90,0x9d,0xd8,0x8b,0x9d,0x99,0x8c,0xd8,0x91,0x8b,0xd8,0x94,0x97,0x9b,0x93,0x9d,0x9c,0xd4,0xd8,0x9b,0x94,0x91,0x9b,0x93,0xd8,0x97,0x96,0xd8,0x8c,0x90,0x9d,0xd8,0x9d,0x95,0x88,0x8c,0x81,0xd8,0x8b,0x9d,0x99,0x8c,0xd8,0x8c,0x97,0xd8,0x88,0x94,0x99,0x81]

private func equalMake(with num: UInt8) -> UInt8 {
    return num ^ 248
}

/*: "Under mic" :*/
fileprivate let str_labValue:String = "Unview progress"
fileprivate let str_everyText:[Character] = ["d","e","r"," ","m","i","c"]

/*: _ :*/
fileprivate let str_burnValue:String = "_"

/*: "male" :*/
fileprivate let str_atValue:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let str_styleData:[Character] = ["f","e","m","a","l","e"]

/*: "On mic" :*/
fileprivate let str_popValue:String = "data coin than seatOn mic"

/*: "Lock" :*/
fileprivate let str_stackBackValue:[Character] = ["L","o","c","k"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StepThen.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let consLet_errViewName = CGSize(width: (consLet_errorDeviceHeightData - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class StepThen: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = ServerTransformable()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupFromSubviews()
        //: setupSubViewsConstraint()
        remark()
        //: bindInteraction()
        bulge()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nearTitle.map{$0^3}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearTap(name: "party_seat_mike_close")
        v.image = UIImage.nearTap(name: (str_sizeBackgroundName.replacingOccurrences(of: "to", with: "rt") + "y_seat" + String(str_inputCookieText.prefix(5)) + "_close"))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearTap(name: "party_seat_host")
        v.image = UIImage.nearTap(name: (String(str_currentlyName) + String(str_playerName)))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: "#FA9D33")
        //: lab.font = UIFont.little(fontSize: 9)
        lab.font = UIFont.little(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.exceptEqual(fontSize: 12)
        lab.font = UIFont.exceptEqual(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: btn.setImage(UIImage.nearTap(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_nameInviteText) + str_permissionHalfTitle.replacingOccurrences(of: "background", with: "ue"))), for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension StepThen {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func prompt(_ seatNumber: Int, model: ServerTransformable) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: str_equalData.map{encephalonFill(line: $0)}, encoding: .utf8)! : (str_clickName.replacingOccurrences(of: "target", with: "t") + "_sea" + String(str_frameTitle.prefix(5)) + str_birthdayPhotoGiftTitle.lowercased())
            //: icon.image = UIImage.nearTap(name: imgStr)
            icon.image = UIImage.nearTap(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.cling(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == EqualSendReactiveCompatible.clout().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func nameExecute(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid)
        let isAnchor = (String(EqualSendReactiveCompatible.clout().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = ValueLabelReactiveCompatible(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.sizeTitle(cellTitleList: ["Unlock".localized])
                    //: vc.cancelColor = .appTitleColor()
                    vc.cancelColor = .appNameVisualProperty()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == "Unlock".localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            EqualSendReactiveCompatible.clout().roomSuccess(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    noblesseExtra(showMsg: String(bytes: str_modeName.map{equalMake(with: $0)}, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == IndexStyleAppManager.share.loginUid {
            if String(itemModel.uid) == IndexStyleAppManager.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = ValueLabelReactiveCompatible(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.sizeTitle(cellTitleList: [(String(str_labValue.prefix(2)) + String(str_everyText)).localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .appNameVisualProperty()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(str_labValue.prefix(2)) + String(str_everyText)).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        EqualSendReactiveCompatible.clout().starKey(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        consLet_contentData.postEqual(eventID: "\(consLet_buttonName)_\(IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = ValueLabelReactiveCompatible(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.sizeTitle(cellTitleList: ["On mic".localized, "Lock".localized])
                //: vc.cancelColor = .appTitleColor()
                vc.cancelColor = .appNameVisualProperty()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == "On mic".localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if EqualSendReactiveCompatible.clout().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            EqualSendReactiveCompatible.clout().starKey(type: 3,
                                                                    //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                    position: EqualSendReactiveCompatible.clout().partyModel.position,
                                                                    //: toPosition: position)
                                                                    toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            EqualSendReactiveCompatible.clout().starKey(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            consLet_contentData.postEqual(eventID: "\(consLet_itemValue)_\(IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == "Lock".localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        EqualSendReactiveCompatible.clout().roomSuccess(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if EqualSendReactiveCompatible.clout().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    EqualSendReactiveCompatible.clout().starKey(type: 3,
                                                            //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                            position: EqualSendReactiveCompatible.clout().partyModel.position,
                                                            //: toPosition: position)
                                                            toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    EqualSendReactiveCompatible.clout().starKey(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    consLet_contentData.postEqual(eventID: "\(consLet_itemValue)_\(IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension StepThen {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func re(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension StepThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupFromSubviews() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func remark() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bulge() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(nameExecute))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
