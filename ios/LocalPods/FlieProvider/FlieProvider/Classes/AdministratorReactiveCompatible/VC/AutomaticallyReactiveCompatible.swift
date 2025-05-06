
//: Declare String Begin

/*: "btn_back_white" :*/
fileprivate let str_willTitle:String = "bmatch"
fileprivate let str_applicationTitle:[Character] = ["n","_","b","a","c","k","_","w","h","i","t","e"]

/*: (+ :*/
fileprivate let str_bringTapSectionData:[Character] = ["(","+"]

/*: )" :*/
fileprivate let str_endValue:String = "bar"

/*: "area_icon_ :*/
fileprivate let str_cameraData:String = "area_icremove type leading current"
fileprivate let str_firstText:String = "on_manager text"

/*: @2x" :*/
fileprivate let str_slideNearName:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let str_modelName:String = "temp"
fileprivate let str_addData:String = "et imenable range let"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AutomaticallyReactiveCompatible.swift
//  FlieProvider
//
//  Created by Charlotte on 2024/7/31.
//

//: import UIKit
import UIKit

//: class TalkingBindPhoneVC: TalkingBaseViewController {
class AutomaticallyReactiveCompatible: ServiceRecognizerDelegate {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = LocationTool.share.executeTotalry()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.object()
        //: self.setupSubViewsConstraint()
        self.screen()
        //: self.bindInteraction()
        self.send()
        //: self.loginView.setPhoneView()
        self.loginView.toModel()
    }

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: NumberLoginView = {
        //: let loginView = TalkingLoginView.init(type: .LoginPhone)
        let loginView = NumberLoginView(type: .LoginPhone)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: consLet_netViewValue, width: 44, height: 44))
        //: btn.setImage(UIImage.nearTap(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (str_willTitle.replacingOccurrences(of: "match", with: "t") + String(str_applicationTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hidden), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingBindPhoneVC {
extension AutomaticallyReactiveCompatible {
    //: @objc func backBtnClick() {
    @objc func hidden() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__pushToAreaCodeVC() {
    func sex() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = LabelViewDelegate()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.dataClick()
        }
    }

    //: func func__updateAreaView() {
    func dataClick() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(str_cameraData.prefix(7)) + String(str_firstText.prefix(3))) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = ResourceEffectTool.default.ambagesTitle(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.requestInfo()
                //: printLog(message: "get img error")
                printLog(message: (str_modelName.replacingOccurrences(of: "temp", with: "g") + String(str_addData.prefix(5)) + "g error"))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.underPause(urlStr: areaModel.url)
        }
    }

    /// 获取验证码跳转
    //: func func__pushCodeView(phone: String) {
    func all(phone: String) {
        //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
        AdministratorReactiveCompatible.firstCompletion(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: let vc = TalkingLoginBindInputCodeVC()
                let vc = LastRecognizerDelegate()
                //: vc.areaCodeNum = self.areaModel.areaCode
                vc.areaCodeNum = self.areaModel.areaCode
                //: vc.phoneOrEmailStr = phone
                vc.phoneOrEmailStr = phone
                //: vc.viewType = .BindPhone
                vc.viewType = .BindPhone
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            //: })
        })
    }
}

// MARK: - Layout

//: extension TalkingBindPhoneVC {
extension AutomaticallyReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func object() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        dataClick()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func screen() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func send() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushCodeView(phone:phone)
            self.all(phone: phone)
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.sex()
        }
    }
}
