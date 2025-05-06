
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameData:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

/*: "icon_cover_toast" :*/
fileprivate let str_localData:String = "model video listener var managericon_co"
fileprivate let str_cellValue:String = "make from raw self labver_t"

/*: "OK" :*/
fileprivate let str_infoToContent:String = "ok"

/*: "Not for now" :*/
fileprivate let str_requestMoveTitle:String = "Not fotype not"
fileprivate let str_shareValue:[Character] = ["r"," ","n","o","w"]

/*: "Turn on" :*/
fileprivate let str_edgeData:String = "mode text falseTurn o"
fileprivate let str_effectValue:String = "N"

/*: "Live Certification off" :*/
fileprivate let str_indexViewValue:String = "Livefatal height"
fileprivate let str_actionTitle:String = "tificcovertio"
fileprivate let str_allowValue:[Character] = ["n"," ","o","f","f"]

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let str_selectedLittleData:[UInt8] = [0x8e,0xaa,0xa3,0x9f,0xb1,0xa3,0x5e,0xab,0x9f,0xa9,0xa3,0x5e,0xb1,0xb3,0xb0,0xa3,0x5e,0xb7,0xad,0xb3,0xb0,0x5e,0xa4,0x9f,0xa1,0xa3,0x5e,0xa7,0xb1,0x5e,0x9f,0xaa,0xb5,0x9f,0xb7,0xb1,0x5e,0xa7,0xac,0x5e,0xb2,0xa6,0xa3,0x5e,0xb4,0xa7,0xa2,0xa3,0xad,0x5e,0xb1,0xa1,0xb0,0xa3,0xa3,0xac]

fileprivate func contentQuantity(crop num: UInt8) -> UInt8 {
    let value = Int(num) - 62
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Current network unavailable" :*/
fileprivate let str_ofValue:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v"]
fileprivate let str_moreTitle:String = "ailablsingle"

/*: "Live Reminder" :*/
fileprivate let str_inputText:String = "Liveif make"
fileprivate let str_diskValue:String = "adder"

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let str_endValue:[UInt8] = [0xff,0xc9,0xd3,0x86,0xce,0xc7,0xd0,0xc3,0xc8,0x81,0xd2,0x86,0xd3,0xd5,0xc3,0xc2,0x86,0xdf,0xc9,0xd3,0xd4,0x86,0xc0,0xd4,0xc3,0xc3,0x86,0xd0,0xcf,0xc2,0xc3,0xc9,0x86,0xc9,0xd6,0xd6,0xc9,0xd4,0xd2,0xd3,0xc8,0xcf,0xd2,0xdf,0x86,0xdf,0xc3,0xd2,0x8a,0x86,0xd2,0xc7,0xca,0xcd,0x86,0xd2,0xc9,0x86,0xd5,0xc9,0xcb,0xc3,0xc9,0xc8,0xc3,0x86,0xc0,0xcf,0xd4,0xd5,0xd2,0x87]

private func listText(label num: UInt8) -> UInt8 {
    return num ^ 166
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftAlertView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum NameViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class GiftAlertView: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: BirdSEyeView?
    //: private var type = LiveAlertViewType.noFace
    private var type = NameViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: NameViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        upPath()
        //: setupSubViewsConstraint()
        listEqual()
        //: refreshUI()
        appearTo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameData.map{$0^50}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearTap(name: "icon_cover_toast")
        iamg.image = UIImage.nearTap(name: (String(str_localData.suffix(7)) + String(str_cellValue.suffix(5)) + "oast"))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.little(fontSize: 18)
        lab.font = UIFont.little(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.exceptEqual(fontSize: 16)
        lab.font = UIFont.exceptEqual(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 18)
        btn.titleLabel?.font = UIFont.little(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorPut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.little(fontSize: 16)
        btn.titleLabel?.font = UIFont.little(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.labelSumervalMedium(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(str_requestMoveTitle.prefix(6)) + String(str_shareValue)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.labelSumervalMedium().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fromEnable), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .appThemeColor()
        btn.backgroundColor = .labelSumervalMedium()
        //: btn.titleLabel?.font = UIFont.little(fontSize: 16)
        btn.titleLabel?.font = UIFont.little(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle("Turn on".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorPut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension GiftAlertView {
    //: func show() {
    func tokenShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func playerChange() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func fromEnable() {
        //: dismiss()
        playerChange()
    }

    //: @objc private func rightButtonClick() {
    @objc private func colorPut() {
        //: dismiss()
        playerChange()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            playerChange()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension GiftAlertView {
    // 刷新视图
    //: private func refreshUI() {
    private func appearTo() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_indexViewValue.prefix(4)) + " Cer" + str_actionTitle.replacingOccurrences(of: "cover", with: "a") + String(str_allowValue)).localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: str_selectedLittleData.map{contentQuantity(crop: $0)}, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_indexViewValue.prefix(4)) + " Cer" + str_actionTitle.replacingOccurrences(of: "cover", with: "a") + String(str_allowValue)).localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(str_ofValue) + str_moreTitle.replacingOccurrences(of: "single", with: "e")).localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(str_inputText.prefix(4)) + " Remin" + str_diskValue.replacingOccurrences(of: "add", with: "d")).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: str_endValue.map{listText(label: $0)}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func upPath() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func listEqual() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
