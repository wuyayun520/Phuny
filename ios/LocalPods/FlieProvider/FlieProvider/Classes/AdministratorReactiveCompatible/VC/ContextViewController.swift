
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_gestureContent:[Character] = ["n","a","v","_","b","a","c","k"]
fileprivate let str_layerMakeContent:String = "position aspect table_b"
fileprivate let str_addData:String = "lack_norin direction regular let fatal"

/*: "Email Address" :*/
fileprivate let str_modelTitle:[Character] = ["E","m","a","i","l"," ","A","d","d","r","e","s","s"]

/*: "F4F6FA" :*/
fileprivate let str_fileAppText:String = "userF6FA"

/*: "Add an email address" :*/
fileprivate let str_textTitle:String = "load path color touchAdd an"
fileprivate let str_titleName:String = "let mode self status emai"

/*: "BBBBBB" :*/
fileprivate let str_transformData:[Character] = ["B","B","B","B","B","B"]

/*: "Only you will see your email on your profile." :*/
fileprivate let str_viewTitle:[UInt8] = [0xfd,0xdc,0xde,0xcb,0x92,0xcb,0xdd,0xc7,0x92,0xc5,0xdb,0xde,0xde,0x92,0xc1,0xd7,0xd7,0x92,0xcb,0xdd,0xc7,0xc0,0x92,0xd7,0xdf,0xd3,0xdb,0xde,0x92,0xdd,0xdc,0x92,0xcb,0xdd,0xc7,0xc0,0x92,0xc2,0xc0,0xdd,0xd4,0xdb,0xde,0xd7,0x9c]

private func nameIndex(all num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "Send verification email" :*/
fileprivate let str_modelName:[Character] = ["S","e","n","d"," ","v","e","r","i","f","i","c","a","t","i","o"]
fileprivate let str_toTargetData:String = "text if falsen email"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContextViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindEmailVC: TalkingBaseViewController {
class ContextViewController: ServiceRecognizerDelegate {
    // 是否展示返回按钮
    //: var isBack = true
    var isBack = true
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: false)
            pryUpwardTitle(isOpen: false)
        }
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: true)
            pryUpwardTitle(isOpen: true)
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.cookieDoing()
        //: self.setupSubViewsConstraint()
        self.rubric()
        //: self.bindInteraction()
        self.outsideLocal()
        //: addTapGestureRecognizer()
        currentView()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_gestureContent) + String(str_layerMakeContent.suffix(2)) + String(str_addData.prefix(8)))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(start), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 17.0)
        label.font = .loadEnable(type: .Semibold, fontSize: 17.0)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Email Address".localized
        label.text = (String(str_modelTitle)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var emailInputView: UITextField = {
    private lazy var emailInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F6FA")
        textField.backgroundColor = UIColor(hex: "F4F6FA")
        //: textField.font = .loadEnable(type: .Medium, fontSize: 17)
        textField.font = .loadEnable(type: .Medium, fontSize: 17)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .appNameVisualProperty()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "Add an email address".localized, attributes: [NSAttributedString.Key.font: UIFont.loadEnable(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: (String(str_textTitle.suffix(6)) + String(str_titleName.suffix(5)) + "l address").localized, attributes: [NSAttributedString.Key.font: UIFont.loadEnable(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.clearButtonMode = .whileEditing
        textField.clearButtonMode = .whileEditing
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var emailTipLabel: UILabel = {
    private lazy var emailTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 15.0)
        label.font = .loadEnable(type: .Regular, fontSize: 15.0)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .bringHomeColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Only you will see your email on your profile.".localized
        label.text = String(bytes: str_viewTitle.map{nameIndex(all: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 18)
        //: btn.setTitle("Send verification email".localized, for: .normal)
        btn.setTitle((String(str_modelName) + String(str_toTargetData.suffix(7))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.es.rawValue || TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.pt.rawValue {
            //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
            btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindEmailVC {
extension ContextViewController {
    //: @objc func backBtnClick() {
    @objc func start() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func checkCommitButtonState() {
    func arrayAddTitle() {
        //: if emailInputView.text!.isEmptyString {
        if emailInputView.text!.isEmptyString {
            //: commitButton.isEnabled = false
            commitButton.isEnabled = false
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    //: func func__getEmailCodeAction() {
    func current() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        DeviceFailThen.factorView(superView: view)
        //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: emailInputView.text!, isBind: true) { succeed, result, errorModel in
        AdministratorReactiveCompatible.search(emailStr: emailInputView.text!, isBind: true) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: self.func__pushToPhoneCodeVC()
                self.to()
            }
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func to() {
        //: let vc = TalkingLoginBindInputCodeVC()
        let vc = LastRecognizerDelegate()
        //: vc.phoneOrEmailStr = emailInputView.text!
        vc.phoneOrEmailStr = emailInputView.text!
        //: vc.viewType = .BindEmail
        vc.viewType = .BindEmail
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginBindEmailVC {
extension ContextViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func cookieDoing() {
        //: backBtn.isHidden = !isBack
        backBtn.isHidden = !isBack
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(emailInputView)
        view.addSubview(emailInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(emailTipLabel)
        view.addSubview(emailTipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func rubric() {
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(6)
            make.leading.equalTo(6)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
            //: make.size.equalTo(44)
            make.size.equalTo(44)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn.snp.bottom).offset(44)
            make.top.equalTo(backBtn.snp.bottom).offset(44)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: emailInputView.snp.makeConstraints { make in
        emailInputView.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(emailInputView.snp.bottom).offset(40)
            make.top.equalTo(emailInputView.snp.bottom).offset(40)
        }
        //: emailTipLabel.snp.makeConstraints { make in
        emailTipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(commitButton.snp.bottom).offset(24)
            make.top.equalTo(commitButton.snp.bottom).offset(24)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func outsideLocal() {
        //: emailInputView.rx.text.orEmpty.asObservable()
        emailInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.arrayAddTitle()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__getEmailCodeAction()
                self.current()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
