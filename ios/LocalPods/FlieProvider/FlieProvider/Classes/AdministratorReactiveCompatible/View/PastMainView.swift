
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_contextData:[UInt8] = [0x7a,0x7d,0x7a,0x67,0x3b,0x70,0x7c,0x77,0x76,0x61,0x29,0x3a,0x33,0x7b,0x72,0x60,0x33,0x7d,0x7c,0x67,0x33,0x71,0x76,0x76,0x7d,0x33,0x7a,0x7e,0x63,0x7f,0x76,0x7e,0x76,0x7d,0x67,0x76,0x77]

private func giftTable(to num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: "login_logo_icon" :*/
fileprivate let str_outsideValue:[Character] = ["l","o","g","i","n","_","l","o","g","o","_","i","c","o","n"]

/*: "FFFFFF" :*/
fileprivate let str_toName:String = "sizesizesize"

/*: "128CFF" :*/
fileprivate let str_frameName:String = "128CFview if last"
fileprivate let str_makeValue:[Character] = ["F"]

/*: "Privacy Policy" :*/
fileprivate let str_normalValue:[Character] = ["P","r","i","v","a","c","y"," ","P"]
fileprivate let str_transformText:String = "olijumpy"

/*: "Terms of Use" :*/
fileprivate let str_statusText:[Character] = ["T","e","r"]
fileprivate let str_cellValue:[Character] = ["m","s"," ","o","f"," ","U","s","e"]

/*: "Contact Us" :*/
fileprivate let str_regularName:String = "Contacrepresentation push normal"
fileprivate let str_labData:[Character] = ["t"," ","U","s"]

/*: "btn_login_phone_nor" :*/
fileprivate let str_equalCleanData:String = "btn_loequal let create"
fileprivate let str_modeAppName:[Character] = ["_","n","o","r"]

/*: "btn_login_email_nor" :*/
fileprivate let str_magnitudeName:String = "over from else self topbtn_l"
fileprivate let str_messageValue:String = "equalmai"
fileprivate let str_factorValue:[Character] = ["r"]

/*: "or" :*/
fileprivate let str_textData:String = "oclose"

/*: "btn_login_apple_nor" :*/
fileprivate let str_tableName:[Character] = ["b","t","n","_","l"]
fileprivate let str_tabName:String = "OGIN"
fileprivate let str_lineMomentTitle:String = "in view resultle_nor"

/*: "Continue with Apple" :*/
fileprivate let str_managerTitle:String = "message pic name countContin"
fileprivate let str_menuData:String = "ue wireturn color to true"

/*: "login_last_way_icon" :*/
fileprivate let str_videoText:String = "LOGIN"
fileprivate let str_bottomText:String = "WAY"
fileprivate let str_frameValue:String = "_iconview else return"

/*: "get json error" :*/
fileprivate let str_requestContent:[Character] = ["g","e","t"," ","j","s"]
fileprivate let str_fileLogLetValue:String = "image opon error"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PastMainView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainView: UIView {
class PastMainView: UIView {
    //: typealias BtnActionBlock = (_ type: LoginType) -> Void
    typealias BtnActionBlock = (_ type: VersionViewEquatable) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: BtnActionBlock?
    var btnBlock: BtnActionBlock?

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_contextData.map{giftTable(to: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.setupSubviews()
        self.doing()
        //: self.setupSubViewsConstraint()
        self.fromConstraint()
        //: self.bindInteraction()
        self.atomicTotal85()
    }

    // MARK: - Lazy load

    //: lazy var bgPlayer: SVGAPlayer = {
    lazy var bgPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var logoView: UIImageView = {
    lazy var logoView: UIImageView = {
        //: let imageView = UIImageView(image: UIImage.nearTap(name: "login_logo_icon"))
        let imageView = UIImageView(image: UIImage.nearTap(name: (String(str_outsideValue))))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var logoTitleLabel: UILabel = {
    lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 28.0)
        label.font = .loadEnable(type: .Semibold, fontSize: 28.0)
        //: label.textColor = UIColor(hex: "FFFFFF")
        label.textColor = UIColor(hex: "FFFFFF")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = AppName
        label.text = consLet_deviceData
        //: return label
        return label
        //: }()
    }()

    //: lazy var privacyBtn: UIButton = {
    lazy var privacyBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Privacy Policy".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_normalValue) + str_transformText.replacingOccurrences(of: "jump", with: "c")).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var termsUserBtn: UIButton = {
    lazy var termsUserBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)

        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Terms of Use".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_statusText) + String(str_cellValue)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contactBtn: UIButton = {
    lazy var contactBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)

        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Contact Us".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_regularName.prefix(6)) + String(str_labData)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var stackView: UIStackView = {
    lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 60.0
        v.spacing = 60.0
        //: return v
        return v
        //: }()
    }()

    //: lazy var phoneLoginBtn: UIButton = {
    lazy var phoneLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_login_phone_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_equalCleanData.prefix(6)) + "gin_phone" + String(str_modeAppName))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_login_phone_nor"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_equalCleanData.prefix(6)) + "gin_phone" + String(str_modeAppName))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var emailLoginBtn: UIButton = {
    lazy var emailLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_login_email_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_magnitudeName.suffix(5)) + "ogin_" + str_messageValue.replacingOccurrences(of: "equal", with: "e") + "l_no" + String(str_factorValue))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_login_email_nor"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_magnitudeName.suffix(5)) + "ogin_" + str_messageValue.replacingOccurrences(of: "equal", with: "e") + "l_no" + String(str_factorValue))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var otherLabel: UILabel = {
    lazy var otherLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font =  .loadEnable(type: .Regular, fontSize: 20)
        label.font = .loadEnable(type: .Regular, fontSize: 20)
        //: label.textColor =  UIColor(hex: "FFFFFF")
        label.textColor = UIColor(hex: "FFFFFF")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "or".localized
        label.text = "or".localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var otherLeftLine: UIView = {
    lazy var otherLeftLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        //: return view
        return view
        //: }()
    }()

    //: lazy var otherRightLine: UIView = {
    lazy var otherRightLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        //: return view
        return view
        //: }()
    }()

    //: lazy var appleLoginBtn: TalkingButton = {
    lazy var appleLoginBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton(type: .custom)
        let btn = LabelPositionReactiveCompatible(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageFillColor(color: UIColor(hex: "FFFFFF")!), for: .normal)
        btn.setBackgroundImage(UIImage.just(color: UIColor(hex: "FFFFFF")!), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_login_apple_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_tableName) + str_tabName.lowercased() + "_app" + String(str_lineMomentTitle.suffix(6)))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_login_apple_nor"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_tableName) + str_tabName.lowercased() + "_app" + String(str_lineMomentTitle.suffix(6)))), for: .highlighted)
        //: btn.setTitle("Continue with Apple".localized, for: .normal)
        btn.setTitle((String(str_managerTitle.suffix(6)) + String(str_menuData.prefix(5)) + "th Apple").localized, for: .normal)
        //: btn.setTitleColor(.appTitleColor(), for: .normal)
        btn.setTitleColor(.appNameVisualProperty(), for: .normal)
        //: btn.titleLabel?.textAlignment = .center
        btn.titleLabel?.textAlignment = .center
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: btn.isHidden = false
            btn.isHidden = false
            //: } else {
        } else {
            //: btn.isHidden = true
            btn.isHidden = true
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var lastLoginImgV: TalkingButton = {
    private lazy var lastLoginImgV: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: let ret = UIImage.nearTap(name: "login_last_way_icon")
        let ret = UIImage.nearTap(name: (str_videoText.lowercased() + "_last_" + str_bottomText.lowercased() + String(str_frameValue.prefix(5))))
        //: btn.setImage(ret, for: .normal)
        btn.setImage(ret, for: .normal)
//        btn.titleLabel?.font = UIFont.loadEnable(type: .Semibold, fontSize: 13)
//        btn.setTitleColor(.white, for: .normal)
//        btn.setTitle("Last Login".localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLoginMainView {
extension PastMainView {
    // 添加视图
    //: private func setupSubviews() {
    private func doing() {
        //: addSubview(bgPlayer)
        addSubview(bgPlayer)
        //: addSubview(logoView)
        addSubview(logoView)
        //: addSubview(logoTitleLabel)
        addSubview(logoTitleLabel)
        //: addSubview(privacyBtn)
        addSubview(privacyBtn)
        //: addSubview(termsUserBtn)
        addSubview(termsUserBtn)
        //: addSubview(contactBtn)
        addSubview(contactBtn)

        //: addSubview(stackView)
        addSubview(stackView)
        //: addSubview(phoneLoginBtn)
        addSubview(phoneLoginBtn)
        //: stackView.addArrangedSubview(phoneLoginBtn)
        stackView.addArrangedSubview(phoneLoginBtn)
        //: if IndexStyleAppManager.share.appConfigMode.enableEmailLogin == true {
        if IndexStyleAppManager.share.appConfigMode.enableEmailLogin == true {
            //: addSubview(emailLoginBtn)
            addSubview(emailLoginBtn)
            //: stackView.addArrangedSubview(emailLoginBtn)
            stackView.addArrangedSubview(emailLoginBtn)
        }

        //: addSubview(otherLabel)
        addSubview(otherLabel)
        //: addSubview(otherLeftLine)
        addSubview(otherLeftLine)
        //: addSubview(otherRightLine)
        addSubview(otherRightLine)
        //: addSubview(appleLoginBtn)
        addSubview(appleLoginBtn)
        //: addSubview(lastLoginImgV)
        addSubview(lastLoginImgV)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func fromConstraint() {
        //: bgPlayer.snp.makeConstraints { make in
        bgPlayer.snp.makeConstraints { make in
            //: make.top.bottom.leading.trailing.equalToSuperview()
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        //: logoView.snp.makeConstraints { make in
        logoView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(77)
            make.width.height.equalTo(77)
            //: make.top.equalTo(StatusBarHeight + actualHeight(h: 80))
            make.top.equalTo(consLet_netViewValue + actualHeight(h: 80))
        }
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(logoView.snp.bottom).offset(9)
            make.top.equalTo(logoView.snp.bottom).offset(9)
        }
        //: privacyBtn.snp.makeConstraints { make in
        privacyBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.bottom.equalToSuperview().offset(-kDeviceSafeBottomHeight-10)
            make.bottom.equalToSuperview().offset(-consLet_halfTitle - 10)
        }
        //: termsUserBtn.snp.makeConstraints { make in
        termsUserBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(privacyBtn)
            make.centerY.equalTo(privacyBtn)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.trailing.equalTo(privacyBtn.snp.leading).offset(-24)
            make.trailing.equalTo(privacyBtn.snp.leading).offset(-24)
        }
        //: contactBtn.snp.makeConstraints { make in
        contactBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(privacyBtn)
            make.centerY.equalTo(privacyBtn)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.leading.equalTo(privacyBtn.snp.trailing).offset(24)
            make.leading.equalTo(privacyBtn.snp.trailing).offset(24)
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(privacyBtn.snp.top).offset(-20)
            make.bottom.equalTo(privacyBtn.snp.top).offset(-20)
        }
        //: phoneLoginBtn.snp.makeConstraints { make in
        phoneLoginBtn.snp.makeConstraints { make in
            //: make.size.equalTo(CGSize(width: 51, height: 51))
            make.size.equalTo(CGSize(width: 51, height: 51))
        }
        //: if IndexStyleAppManager.share.appConfigMode.enableEmailLogin == true {
        if IndexStyleAppManager.share.appConfigMode.enableEmailLogin == true {
            //: emailLoginBtn.snp.makeConstraints { make in
            emailLoginBtn.snp.makeConstraints { make in
                //: make.size.equalTo(phoneLoginBtn)
                make.size.equalTo(phoneLoginBtn)
            }
        }

        //: otherLabel.snp.makeConstraints { make in
        otherLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(phoneLoginBtn.snp.top).offset(-18)
            make.bottom.equalTo(phoneLoginBtn.snp.top).offset(-18)
        }
        //: otherLeftLine.snp.makeConstraints { make in
        otherLeftLine.snp.makeConstraints { make in
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(actualWidth(w: 106))
            //: make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
            make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
        }

        //: otherRightLine.snp.makeConstraints { make in
        otherRightLine.snp.makeConstraints { make in
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(actualWidth(w: 106))
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.leading.equalTo(otherLabel.snp.trailing).offset(16)
            make.leading.equalTo(otherLabel.snp.trailing).offset(16)
        }
        //: appleLoginBtn.snp.makeConstraints { make in
        appleLoginBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.bottom.equalTo(otherLeftLine.snp.top).offset(-54)
            make.bottom.equalTo(otherLeftLine.snp.top).offset(-54)
        }

        //: appleLoginBtn.imageRectBlock = { (rect: CGRect) in
        appleLoginBtn.imageRectBlock = { (rect: CGRect) in
            //: if LanguageManager.shared.direction == .rightToLeft {
            if ServerLanguageManager.shared.direction == .rightToLeft {
                //: return CGRect(x: rect.width-30-9, y: (rect.height-37)/2, width: 30, height: 37)
                return CGRect(x: rect.width - 30 - 9, y: (rect.height - 37) / 2, width: 30, height: 37)
                //: } else {
            } else {
                //: return CGRect(x: 9, y: (rect.height-37)/2, width: 30, height: 37)
                return CGRect(x: 9, y: (rect.height - 37) / 2, width: 30, height: 37)
            }
        }
        //: appleLoginBtn.titleRectBlock = { (rect: CGRect) in
        appleLoginBtn.titleRectBlock = { (rect: CGRect) in
            //: return rect
            rect
        }
        // 展示上次登录提示
        //: let lastLogin = Defaults.string(forKey: TalkingLastLoginTypeCacheKey)
        let lastLogin = consLet_partyTitle.string(forKey: consLet_succeedText)
        //: guard lastLogin != nil else {
        guard lastLogin != nil else {
            //: lastLoginImgV.isHidden = true
            lastLoginImgV.isHidden = true
            //: return
            return
        }
        //: switch LoginType(rawValue: lastLogin!) {
        switch VersionViewEquatable(rawValue: lastLogin!) {
        //: case .AppleLogin:
        case .AppleLogin:
            //: lastLoginImgV.isHidden = appleLoginBtn.isHidden
            lastLoginImgV.isHidden = appleLoginBtn.isHidden
            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.trailing.equalTo(-15)
                make.trailing.equalTo(-15)
                //: make.bottom.equalTo(appleLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(appleLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if ServerLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .EmailLogin, .PwdEmailLogin:
        case .EmailLogin, .PwdEmailLogin:
            //: guard IndexStyleAppManager.share.appConfigMode.enableEmailLogin == true else {
            guard IndexStyleAppManager.share.appConfigMode.enableEmailLogin == true else {
                //: return }
                return
            }

            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(emailLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(emailLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(emailLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(emailLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if ServerLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .PhoneLogin, .PwdPhoneLogin:
        case .PhoneLogin, .PwdPhoneLogin:
            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(phoneLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(phoneLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(phoneLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(phoneLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if ServerLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: default:
        default:
            //: break
            break
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func atomicTotal85() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Login_Main_BG)
        let url = ResourceEffectTool.default.butterflyEffect(type: .Login_Main_BG)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.bgPlayer.videoItem = videoItem
                self.bgPlayer.videoItem = videoItem
                //: self.bgPlayer.startAnimation()
                self.bgPlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_requestContent) + String(str_fileLogLetValue.suffix(8))))
        }

        //: appleLoginBtn.rx.controlEvent(.touchUpInside)
        appleLoginBtn.rx.controlEvent(.touchUpInside)
            //: .asObservable().throttle(RxTimeInterval.seconds(2), scheduler: MainScheduler.instance)
            .asObservable().throttle(RxTimeInterval.seconds(2), scheduler: MainScheduler.instance) // 2s内只处理第一次点击
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.AppleLogin)
                self.btnBlock!(.AppleLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: phoneLoginBtn.rx.controlEvent(.touchUpInside)
        phoneLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.PhoneLogin)
                self.btnBlock!(.PhoneLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: emailLoginBtn.rx.controlEvent(.touchUpInside)
        emailLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.EmailLogin)
                self.btnBlock!(.EmailLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: termsUserBtn.rx.controlEvent(.touchUpInside)
        termsUserBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: PostPushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
                PostPushManager.share.scene(webViewType: .TermsofUse)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: privacyBtn.rx.controlEvent(.touchUpInside)
        privacyBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: PostPushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
                PostPushManager.share.scene(webViewType: .PrivacyPolicy)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: contactBtn.rx.controlEvent(.touchUpInside)
        contactBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: PostPushManager.share.func__pushFeedbackVC()
                PostPushManager.share.titleBar()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
