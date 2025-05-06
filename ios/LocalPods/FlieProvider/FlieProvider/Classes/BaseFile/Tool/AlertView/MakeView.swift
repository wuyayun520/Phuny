
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_playerTitle:[UInt8] = [0xe5,0xe2,0xe5,0xf8,0xa4,0xef,0xe3,0xe8,0xe9,0xfe,0xb6,0xa5,0xac,0xe4,0xed,0xff,0xac,0xe2,0xe3,0xf8,0xac,0xee,0xe9,0xe9,0xe2,0xac,0xe5,0xe1,0xfc,0xe0,0xe9,0xe1,0xe9,0xe2,0xf8,0xe9,0xe8]

private func reloadlySize(leading num: UInt8) -> UInt8 {
    return num ^ 140
}

/*: "Licensing" :*/
fileprivate let str_defineName:String = "self var return cardLi"
fileprivate let str_angleManagerData:String = "censinkit"

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let str_keyTitle:[UInt8] = [0x64,0x8f,0x7e,0x8b,0x91,0x86,0x8b,0x84,0x3d,0x89,0x86,0x80,0x82,0x8b,0x80,0x82,0x90,0x3d,0x91,0x8c,0x3d,0x8f,0x82,0x80,0x82,0x86,0x93,0x82,0x3d,0x7f,0x82,0x91,0x91,0x82,0x8f,0x3d,0x93,0x86,0x81,0x82,0x8c,0x3d,0x80,0x7e,0x89,0x89,0x90,0x3d,0x7e,0x8b,0x81,0x3d,0x82,0x7e,0x8f,0x8b,0x3d,0x8a,0x8c,0x8f,0x82,0x3d,0x8a,0x8c,0x8b,0x82,0x96]

fileprivate func endTrade(name num: UInt8) -> UInt8 {
    let value = Int(num) + 227
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let str_contentText:[UInt8] = [0xf2,0x13,0x10,0xc,0xbe,0xd,0xc,0xbe,0xe1,0xff,0xb,0x3,0x10,0xff,0xbe,0xff,0xc,0x2,0xbe,0x10,0x3,0x1,0xd,0x10,0x2,0x7,0xc,0x5,0xbe,0xe,0x3,0x10,0xb,0x7,0x11,0x11,0x7,0xd,0xc,0x11,0xbe,0x7,0xc,0xbe,0x11,0x3,0x12,0x12,0x7,0xc,0x5,0x11,0xbe,0x12,0xd,0xbe,0x13,0x11,0x3,0xbe,0x12,0x6,0x3,0xbe,0x4,0x3,0xff,0x12,0x13,0x10,0x3,0xbe,0xe,0x10,0xd,0xe,0x3,0x10,0xa,0x17]

fileprivate func contentTitle(deadline num: UInt8) -> UInt8 {
    let value = Int(num) - 158
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_modeTitle:String = "index stringCancel"

/*: "Open" :*/
fileprivate let str_sexValue:String = "any head center dismissOpen"

/*: "icon_peimisionlic_camera" :*/
fileprivate let str_momentHiddenTitle:String = "icon_pcolor self load true"
fileprivate let str_contentData:String = "ionsize"

/*: "icon_peimissionlic_mic" :*/
fileprivate let str_transactionValue:String = "view leticon_p"
fileprivate let str_viewText:String = "onlexceptc"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeView.swift
//  FlieProvider
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class MakeView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.counternalRepresentation()
        //: self.setupSubViewsConstraint()
        self.phaseOfTheMoon()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_playerTitle.map{reloadlySize(leading: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: lb.font = UIFont.little(fontSize: 20)
        lb.font = UIFont.little(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(str_defineName.suffix(2)) + str_angleManagerData.replacingOccurrences(of: "kit", with: "g")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: lb.font = UIFont.exceptEqual(fontSize: 16)
        lb.font = UIFont.exceptEqual(fontSize: 16)
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue && IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: str_keyTitle.map{endTrade(name: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: str_contentText.map{contentTitle(deadline: $0)}, encoding: .utf8)!.localized
        }
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle("Cancel".localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.bringHomeColor(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.labelSumervalMedium().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nameSizeBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle("Open".localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(liveClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension MakeView {
    //: func show() {
    func receiveEnable() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func nameSizeBy() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func liveClick() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
        //: cancleBtnClick()
        nameSizeBy()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func pastIcon(type: EventFilePermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.nearTap(name: "icon_peimisionlic_camera")
                icon.image = UIImage.nearTap(name: (String(str_momentHiddenTitle.prefix(6)) + "eimis" + str_contentData.replacingOccurrences(of: "size", with: "li") + "c_camera"))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.nearTap(name: "icon_peimissionlic_mic")
                icon.image = UIImage.nearTap(name: (String(str_transactionValue.suffix(6)) + "eimissi" + str_viewText.replacingOccurrences(of: "except", with: "i") + "_mic"))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.nearTap(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.nearTap(name: (String(str_momentHiddenTitle.prefix(6)) + "eimis" + str_contentData.replacingOccurrences(of: "size", with: "li") + "c_camera"))
                    //: } else {
                } else {
                    //: icon.image = UIImage.nearTap(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.nearTap(name: (String(str_transactionValue.suffix(6)) + "eimissi" + str_viewText.replacingOccurrences(of: "except", with: "i") + "_mic"))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension MakeView {
    // 添加视图
    //: private func setupSubviews() {
    private func counternalRepresentation() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func phaseOfTheMoon() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
