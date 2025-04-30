
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_editValue:[UInt8] = [0x2c,0x2b,0x2c,0x31,0x6d,0x26,0x2a,0x21,0x20,0x37,0x7f,0x6c,0x65,0x2d,0x24,0x36,0x65,0x2b,0x2a,0x31,0x65,0x27,0x20,0x20,0x2b,0x65,0x2c,0x28,0x35,0x29,0x20,0x28,0x20,0x2b,0x31,0x20,0x21]

private func bubbleDetail(end num: UInt8) -> UInt8 {
    return num ^ 69
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let str_modelValue:String = "apple 授权失path let count self"
fileprivate let str_eventData:String = "败\u{ff0c}请稍\u{540e}再试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentationReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class PresentationReactiveCompatible: ServiceRecognizerDelegate {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_editValue.map{bubbleDetail(end: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.date()
        //: self.setupSubViewsConstraint()
        self.sum()
        //: self.bindInteraction()
        self.nowUp()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: PastMainView = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = PastMainView()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension PresentationReactiveCompatible {
    //: func req_thirdLogin(_ type: LoginType) {
    func afterValue(_ type: VersionViewEquatable) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            StyleControllerDelegate.shared.make { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (String(str_modelValue.prefix(9)) + str_eventData))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                DeviceFailThen.callMake()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                AdministratorReactiveCompatible.viewCompletion(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    DeviceFailThen.theAdd()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = ControllerReactiveCompatible(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = ControllerReactiveCompatible(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension PresentationReactiveCompatible {
    //: func loginAction(type: LoginType) {
    func loginConversation(type: VersionViewEquatable) {
        //: LoginPrivacyPolicyView().showView {
        SumThen().executeHandler {
            //: self.req_thirdLogin(type)
            self.afterValue(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension PresentationReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func date() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: VersionViewEquatable) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.loginConversation(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sum() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func nowUp() {}
}
