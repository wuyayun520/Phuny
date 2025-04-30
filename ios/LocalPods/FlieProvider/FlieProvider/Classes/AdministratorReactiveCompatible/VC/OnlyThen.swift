
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_toCookieMaxText:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f"]
fileprivate let str_toolTitleData:String = "ORMATION"

/*: "authPic" :*/
fileprivate let str_topRequestText:String = "authPicerror open equal title"

/*: "Face verification" :*/
fileprivate let str_picValue:[Character] = ["F","a","c","e"," ","v"]
fileprivate let str_viewName:String = "eribottomi"

/*: "icon_zc_userconver" :*/
fileprivate let str_lineContent:String = "ihomeon"
fileprivate let str_sharedData:String = "sercvalue"
fileprivate let str_colorContent:String = "NVER"

/*: "Verify now" :*/
fileprivate let str_bottomName:String = "to success click message dataVerify"

/*: "#4A89F3" :*/
fileprivate let str_makeText:[Character] = ["#","4","A","8","9","F","3"]

/*: "Finish" :*/
fileprivate let str_colorData:String = "layer letFinish"

/*: "#8C7AFF" :*/
fileprivate let str_downErrorEqualText:String = "like white video guard input#8C7A"
fileprivate let str_rowName:[Character] = ["F","F"]

/*: "Skip" :*/
fileprivate let str_hiddenValue:[Character] = ["S","k","i","p"]

/*: "icon_successfylly" :*/
fileprivate let str_frameTitle:String = "text key dataicon_"
fileprivate let str_replyTotalimateData:String = "cellfy"
fileprivate let str_shareValue:String = "LLY"

/*: "Submitted successfully" :*/
fileprivate let str_valueName:[Character] = ["S","u","b","m","i","t","t","e","d"," ","s","u","c","c","e","s","s","f"]
fileprivate let str_cancelText:[Character] = ["u","l","l","y"]

/*: "#2ED180" :*/
fileprivate let str_aspectValue:[Character] = ["#","2","E","D","1","8","0"]

/*: _ :*/
fileprivate let str_ofMakeInName:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_statusValue:[UInt8] = [0x8a,0x86,0x8b,0x82]

/*: "female" :*/
fileprivate let str_succeedData:String = "feblockl"
fileprivate let str_appData:String = "line"

/*: "RegisterSuccess" :*/
fileprivate let str_edgeTitle:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnlyThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class OnlyThen: ServiceRecognizerDelegate {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        pryUpwardTitle(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_toCookieMaxText) + str_toolTitleData.lowercased()).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.key()
        //: self.setupSubViewsConstraint()
        self.failureLike()

        //: if !IndexStyleAppManager.share.appConfigMode.skipInputInviteCode {
        if !IndexStyleAppManager.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if IndexStyleAppManager.share.userFillInfoMode.authImage != nil {
        if IndexStyleAppManager.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = IndexStyleAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params["authPic"] = IndexStyleAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.click()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.font = UIFont.loadEnable(type: .Semibold, fontSize: 17)
        lb.font = UIFont.loadEnable(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(str_picValue) + str_viewName.replacingOccurrences(of: "bottom", with: "f") + "cation").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.nearTap(name: "icon_zc_userconver")
        imagv.image = UIImage.nearTap(name: (str_lineContent.replacingOccurrences(of: "home", with: "c") + "_zc_u" + str_sharedData.replacingOccurrences(of: "value", with: "o") + str_colorContent.lowercased()))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(path), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(str_bottomName.suffix(6)) + " now").localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.loadEnable(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: "#4A89F3")!, .font: UIFont.loadEnable(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle("Finish".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(withRequest(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: "#8C7AFF"), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: "Skip".localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moment), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .loadEnable(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension OnlyThen {
    //: func setConverView() {
    func click() {
        //: self.converImag.image = UIImage.nearTap(name: "icon_successfylly")
        self.converImag.image = UIImage.nearTap(name: (String(str_frameTitle.suffix(5)) + "succe" + str_replyTotalimateData.replacingOccurrences(of: "cell", with: "ss") + str_shareValue.lowercased()))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(str_valueName) + String(str_cancelText)).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.loadEnable(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: "#2ED180")!, .font: UIFont.loadEnable(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension OnlyThen {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func toPopback() {
        //: super.naviPopback()
        super.toPopback()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(consLet_serverData)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        consLet_contentData.postEqual(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func path() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(consLet_clickData)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        consLet_contentData.postEqual(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = ValueControllerDelegate()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: IndexStyleAppManager.share.userFillInfoMode.authImage = image
            IndexStyleAppManager.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params["authPic"] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.click()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func moment() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(consLet_withoutName)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        consLet_contentData.postEqual(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: "authPic")
        //: finishBtnClick(isSkip: true)
        withRequest(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func withRequest(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(consLet_levelTransformTitle)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            consLet_contentData.postEqual(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        AdministratorReactiveCompatible.add(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: consLet_iconText, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                AdjustThen.share.subRequest(key: (String(str_edgeTitle)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                CeremonyReactiveCompatible.share.familyName(name: (String(str_edgeTitle)))

                //: if IndexStyleAppManager.share.loginUserMode.remindBindEmail == true {
                if IndexStyleAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: PostPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        PostPushManager.share.actuarialTable(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension OnlyThen {
    //: func setupSubviews() {
    func key() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func failureLike() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
