
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_talkValue:[UInt8] = [0x5e,0x63,0x5e,0x69,0x1d,0x58,0x64,0x59,0x5a,0x67,0x2f,0x1e,0x15,0x5d,0x56,0x68,0x15,0x63,0x64,0x69,0x15,0x57,0x5a,0x5a,0x63,0x15,0x5e,0x62,0x65,0x61,0x5a,0x62,0x5a,0x63,0x69,0x5a,0x59]

fileprivate func cellPriority(item num: UInt8) -> UInt8 {
    let value = Int(num) + 11
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "party_mini_close" :*/
fileprivate let str_colorValue:[Character] = ["p","a","r","t","y","_","m","i","n"]
fileprivate let str_userValue:String = "bottom makei_"
fileprivate let str_stopCallName:[Character] = ["c","l","o","s","e"]

/*: "party_mini_bg_left" :*/
fileprivate let str_justData:[UInt8] = [0x9f,0x8e,0x9d,0x9b,0x96,0xb0,0x82,0x86,0x81,0x86,0xb0,0x8d,0x88,0xb0,0x83,0x8a,0x89,0x9b]

private func labMessage(beat num: UInt8) -> UInt8 {
    return num ^ 239
}

/*: "party_mini_bg_right" :*/
fileprivate let str_picValue:String = "parlisty"
fileprivate let str_managerName:String = "_rightself net var"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityHiddenMiniView.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMiniView: TalkingBaseMiniView {
class QuantityHiddenMiniView: CountStepView {
    /// 悬浮窗是否在左侧
    //: private var isLeft = (LanguageManager.shared.direction == .rightToLeft)
    private var isLeft = (ServerLanguageManager.shared.direction == .rightToLeft)
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        userWith()
        //: addTapAndPanGestures()
        gestures()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_talkValue.map{cellPriority(item: $0)}, encoding: .utf8)!)
    }

    /// 重写父类拖拽响应事件
    //: override func panGestureEvent(sender: UIPanGestureRecognizer) {
    override func groupAction(sender: UIPanGestureRecognizer) {
        //: super.panGestureEvent(sender: sender)
        super.groupAction(sender: sender)
        //: bgImgView.isHidden = true
        bgImgView.isHidden = true
        //: closeBtn.isHidden = true
        closeBtn.isHidden = true
        //: guard sender.state == .ended else { return }
        guard sender.state == .ended else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.isLeft = (self.center.x <= ScreenWidth * 0.5)
            self.isLeft = (self.center.x <= consLet_errorDeviceHeightData * 0.5)
            //: self.setupSubViewsConstraint()
            self.userWith()
        }
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 20
        v.layer.cornerRadius = 20
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "party_mini_close"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_colorValue) + String(str_userValue.suffix(2)) + String(str_stopCallName))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fore), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomMiniView {
extension QuantityHiddenMiniView {
    /// 构建视频小窗口
    //: static func buildLiveMiniView() -> TalkingVoiceRoomMiniView {
    static func pickingsView() -> QuantityHiddenMiniView {
        //: let view = TalkingVoiceRoomMiniView(frame: .zero)
        let view = QuantityHiddenMiniView(frame: .zero)
        //: let position = TalkingSocketManager.shared.partyMiniPosition
        let position = JewishCalendarMonthThen.shared.partyMiniPosition
        //: let x = (position.x == 0) ? position.x : position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(consLet_sessionName - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        JewishCalendarMonthThen.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    /// 刷新直播小窗口
    //: func refreshMiniView() {
    func addTo() {
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        //: icon.setUrlImage(urlStr: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.headPic, options: optionsInfo)
        icon.cling(urlStr: EqualSendReactiveCompatible.clout().partyModel.streamerInfo.headPic, options: optionsInfo)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func fore() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        EqualSendReactiveCompatible.clout().sinceShared()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMiniView {
extension QuantityHiddenMiniView {
    //: private func setupSubViewsConstraint() {
    private func userWith() {
        //: bounds = CGRect(x: 0, y: 0, width: 55, height: 70)
        bounds = CGRect(x: 0, y: 0, width: 55, height: 70)

        //: let imageStr = isLeft ? "party_mini_bg_left" : "party_mini_bg_right"
        let imageStr = isLeft ? String(bytes: str_justData.map{labMessage(beat: $0)}, encoding: .utf8)! : (str_picValue.replacingOccurrences(of: "list", with: "t") + "_mini_bg" + String(str_managerName.prefix(6)))
        //: bgImgView.image = UIImage.nearTap(name: imageStr)
        bgImgView.image = UIImage.nearTap(name: imageStr)
        //: bgImgView.isHidden = false
        bgImgView.isHidden = false
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: icon.snp.remakeConstraints { make in
        icon.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.right.equalTo(-3)
                make.right.equalTo(-3)
                //: } else {
            } else {
                //: make.left.equalTo(3)
                make.left.equalTo(3)
            }
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: closeBtn.isHidden = false
        closeBtn.isHidden = false
        //: closeBtn.snp.remakeConstraints { make in
        closeBtn.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.left.equalTo(icon).offset(-3)
                make.left.equalTo(icon).offset(-3)
                //: } else {
            } else {
                //: make.right.equalTo(icon).offset(3)
                make.right.equalTo(icon).offset(3)
            }
            //: make.top.equalTo(icon).offset(-3)
            make.top.equalTo(icon).offset(-3)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
    }
}
