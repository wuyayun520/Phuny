
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_leadingName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#45003A" :*/
fileprivate let str_viewText:[Character] = ["#","4","5","0","0","3","A"]

/*: "#2D0059" :*/
fileprivate let str_infoValue:[Character] = ["#","2","D","0","0","5","9"]

/*: "party_close_btn" :*/
fileprivate let str_tipTotalTitle:String = "party_view user select return item"
fileprivate let str_countValue:String = "cell video locale_btn"

/*: "btn_party_minimal_nor" :*/
fileprivate let str_coinName:String = "color equal if let colorbtn_p"
fileprivate let str_centerPathData:String = "partyty"
fileprivate let str_itemValue:String = "mal_norself as pop"

/*: "Minimal" :*/
fileprivate let str_managerTouchUserName:String = "Minimallet effect view self to"

/*: "btn_party_quit_nor" :*/
fileprivate let str_errText:String = "btn_mode at win in"
fileprivate let str_mainName:String = "to request icon report exceptquit_no"
fileprivate let str_indexName:[Character] = ["r"]

/*: "Quit" :*/
fileprivate let str_iconData:String = "for quote rowQuit"

/*: "btn_party_close_nor" :*/
fileprivate let str_beName:String = "btn_character center"
fileprivate let str_noNorData:String = "_closemode load title error"

/*: "Close" :*/
fileprivate let str_sayAddTitle:String = "Closeif var player"

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let str_customName:[UInt8] = [0xaf,0x84,0xcb,0x92,0x84,0x9e,0xcb,0x9c,0x8a,0x85,0x9f,0xcb,0x9f,0x84,0xcb,0x88,0x87,0x84,0x98,0x8e,0xcb,0x9f,0x83,0x8e,0xcb,0x99,0x84,0x84,0x86,0xd4,0xcb,0xaa,0x8d,0x9f,0x8e,0x99,0xcb,0x88,0x87,0x84,0x98,0x82,0x85,0x8c,0xcb,0x9f,0x83,0x8e,0xcb,0x99,0x84,0x84,0x86,0xc7,0xcb,0x8a,0x87,0x87,0xcb,0x9e,0x98,0x8e,0x99,0x98,0xcb,0x9c,0x82,0x87,0x87,0xcb,0x89,0x8e,0xcb,0x99,0x8e,0x86,0x84,0x9d,0x8e,0x8f,0xcb,0x8d,0x99,0x84,0x86,0xcb,0x9f,0x83,0x8e,0xcb,0x99,0x84,0x84,0x86,0xc5]

private func quantityLabel(icon num: UInt8) -> UInt8 {
    return num ^ 235
}

/*: "Cancel" :*/
fileprivate let str_giftTopData:String = "Cancelactual if"

/*: "OK" :*/
fileprivate let str_imageName:String = "contentK"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RoomView.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class RoomView: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid)
    private let isAnchor = (String(EqualSendReactiveCompatible.clout().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupPhoneChecked()
        //: setupSubViewsConstraint()
        script()
        //: addNotifications()
        roomFront()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_leadingName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_tipTotalTitle.prefix(6)) + "clos" + String(str_countValue.suffix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subLike), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_coinName.suffix(5)) + str_centerPathData.replacingOccurrences(of: "party", with: "ar") + "_mini" + String(str_itemValue.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(largeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.little(fontSize: 17)
        lab.font = UIFont.little(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = "Minimal".localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_errText.prefix(4)) + "party_" + String(str_mainName.suffix(7)) + String(str_indexName))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(attracter), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.little(fontSize: 17)
        lab.font = UIFont.little(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = "Quit".localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_beName.prefix(4)) + "party" + String(str_noNorData.prefix(6)) + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(choice), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.little(fontSize: 17)
        lab.font = UIFont.little(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = "Close".localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension RoomView {
    /// 展示视图
    //: func show() {
    func instanceBind() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: OverdoReactiveCompatible.getWindow().addSubview(self)
        OverdoReactiveCompatible.outMax().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func subLike() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func largeClick() {
        //: self.dismiss()
        self.subLike()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        EqualSendReactiveCompatible.clout().noText()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func attracter() {
        //: self.dismiss()
        self.subLike()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        EqualSendReactiveCompatible.clout().sinceShared()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func choice() {
        //: let config = ShowAlertConfig()
        let config = ResourceAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        EqualAlertShow.pathFinish(message: String(bytes: str_customName.map{quantityLabel(icon: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            EqualSendReactiveCompatible.clout().sinceShared()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            HeritageReqTool.addTitle(roomId: EqualSendReactiveCompatible.clout().partyModel.roomId)
            //: self.dismiss()
            self.subLike()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension RoomView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupPhoneChecked() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func script() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(consLet_netViewValue + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((consLet_sessionName + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func roomFront() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(subLike),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: consLet_noTitle,
                                               //: object: nil)
                                               object: nil)
    }
}
