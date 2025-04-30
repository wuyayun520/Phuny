
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let str_smallData:[Character] = ["E","m","a","i","l"," "]
fileprivate let str_equalUserValue:String = "add first array stage meAddress"

/*: "Phone number" :*/
fileprivate let str_dataContent:String = "input as view valuePhone n"
fileprivate let str_countColorValue:String = "UMBER"

/*: "Enter the email code sent to" :*/
fileprivate let str_equalData:[Character] = ["E","n","t","e","r"," ","t","h","e"," ","e","m","a","i","l"]
fileprivate let str_contentTitle:[Character] = [" ","c","o","d","e"," ","s","e","n","t"," ","t","o"]

/*: "Enter the phone code sent to" :*/
fileprivate let str_emptyTitle:[Character] = ["E","n","t","e","r"]
fileprivate let str_crushData:[Character] = [" ","t","h","e"," ","p"]
fileprivate let str_makeValue:String = "hone match return push"
fileprivate let str_lineData:String = "sent todata gift height"

/*: "(+ :*/
fileprivate let str_closeErrName:[Character] = ["(","+"]

/*: ) :*/
fileprivate let str_oralText:String = "manager"

/*: "8075F5" :*/
fileprivate let str_insertData:String = "8075F5to var name"

/*: "F4F4F4" :*/
fileprivate let str_textTitle:[Character] = ["F","4","F","4","F","4"]

/*: "Resend verification email" :*/
fileprivate let str_windowData:String = "Resenheight any sex view"
fileprivate let str_itemValue:String = "IFICATI"
fileprivate let str_rawName:String = "ostatus"
fileprivate let str_byGiftData:String = " emailbutton make"

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let str_errorIconValue:[UInt8] = [0x74,0x6f,0x6e,0x20,0x72,0x6f,0x20,0x6d,0x61,0x70,0x73,0x20,0x6e,0x69,0x20,0x73,0x69,0x20,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x68,0x74,0x65,0x68,0x77,0x20,0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x65,0x64,0x6f,0x63,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x65,0x68,0x74,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x74,0x27,0x6e,0x61,0x63,0x20,0x75,0x6f,0x79,0x20,0x66,0x49,0x20,0x3a,0x73,0x70,0x69,0x54]

/*: "Bind Email succeed" :*/
fileprivate let str_contentData:String = "Bind Emtop image to lab equal"
fileprivate let str_areaName:[Character] = ["a","i"]
fileprivate let str_clickValue:String = "reason let make typel suc"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let str_callData:String = "self hidden with upBind"
fileprivate let str_hostName:String = "extra button return actione Pho"
fileprivate let str_colorNameData:String = "ne sudata tab"
fileprivate let str_toValue:[Character] = ["c","c","e","e","d"]

/*: "Resend verification email (%@s)" :*/
fileprivate let str_redValue:[UInt8] = [0xa9,0xbc,0xca,0xbc,0xc5,0xbb,0x77,0xcd,0xbc,0xc9,0xc0,0xbd,0xc0,0xba,0xb8,0xcb,0xc0,0xc6,0xc5,0x77,0xbc,0xc4,0xb8,0xc0,0xc3,0x77,0x7f,0x7c,0x97,0xca,0x80]

fileprivate func forConstraint(key num: UInt8) -> UInt8 {
    let value = Int(num) + 169
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LastRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class LastRecognizerDelegate: ServiceRecognizerDelegate {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: BandBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.name()
        //: self.setupSubViewsConstraint()
        self.save()
        //: self.bindInteraction()
        self.counteraction()
        //: func_starCodeTime()
        error()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        showWith()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Medium, fontSize: 17)
        label.font = .loadEnable(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(str_smallData) + String(str_equalUserValue.suffix(7))).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(str_dataContent.suffix(7)) + str_countColorValue.lowercased()).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 16)
        label.font = .loadEnable(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(str_equalData) + String(str_contentTitle)).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(str_emptyTitle) + String(str_crushData) + String(str_makeValue.prefix(5)) + "code " + String(str_lineData.prefix(7))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Medium, fontSize: 16)
        label.font = .loadEnable(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .labelSumervalMedium()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: PostInputView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = PostInputView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(str_windowData.prefix(5)) + "d ver" + str_itemValue.lowercased() + str_rawName.replacingOccurrences(of: "status", with: "n") + String(str_byGiftData.prefix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Medium, fontSize: 12)
        label.font = .loadEnable(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .bringHomeColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: str_errorIconValue.reversed(), encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.loadEnable(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.loadEnable(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension LastRecognizerDelegate {
    //: func func__bindEmailAction() {
    func dataConverter() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        DeviceFailThen.factorView(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            AdministratorReactiveCompatible.swaddlingClothes(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: if succeed {
                if succeed {
                    //: IndexStyleAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    IndexStyleAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.scaleMsg(showMsg: (String(str_contentData.prefix(7)) + String(str_areaName) + String(str_clickValue.suffix(5)) + "ceed").localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.upward()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.edit()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            AdministratorReactiveCompatible.streetwiseCompletion(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.edit()
                    //: return
                    return
                }
                //: IndexStyleAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                IndexStyleAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.scaleMsg(showMsg: (String(str_callData.suffix(4)) + " Mobil" + String(str_hostName.suffix(5)) + String(str_colorNameData.prefix(5)) + String(str_toValue)).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: IndexUniversalVc.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? IndexUniversalVc)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func email() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        DeviceFailThen.factorView(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            AdministratorReactiveCompatible.search(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.error()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.upward()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.edit()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            AdministratorReactiveCompatible.firstCompletion(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.upward()
                    //: self.func_starCodeTime()
                    self.error()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.edit()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func error() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: str_redValue.map{forConstraint(key: $0)}, encoding: .utf8)!.localizedArguments(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.showWith()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(str_windowData.prefix(5)) + "d ver" + str_itemValue.lowercased() + str_rawName.replacingOccurrences(of: "status", with: "n") + String(str_byGiftData.prefix(6))).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func showWith() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension LastRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func name() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func save() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func counteraction() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.email()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.dataConverter()
            }
            //: return
        }
    }
}
