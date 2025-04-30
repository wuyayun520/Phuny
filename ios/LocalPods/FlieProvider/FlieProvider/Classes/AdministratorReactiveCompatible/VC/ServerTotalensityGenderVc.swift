
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sendToolData:[UInt8] = [0x0,0x7,0x0,0x1d,0x41,0xa,0x6,0xd,0xc,0x1b,0x53,0x40,0x49,0x1,0x8,0x1a,0x49,0x7,0x6,0x1d,0x49,0xb,0xc,0xc,0x7,0x49,0x0,0x4,0x19,0x5,0xc,0x4,0xc,0x7,0x1d,0xc,0xd]

private func vocalismReport(make num: UInt8) -> UInt8 {
    return num ^ 105
}

/*: "Personal information" :*/
fileprivate let str_searchItemModelName:String = "Perspath image data"
fileprivate let str_titleValue:String = "nformcolor"

/*: "ColorExpressionConvertible" :*/
fileprivate let str_shadowValue:String = "Gendelet manager"
fileprivate let str_whiteDataText:String = "ok"

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let str_enableTitle:[UInt8] = [0x2e,0x64,0x65,0x67,0x6e,0x61,0x68,0x63,0x20,0x65,0x62,0x20,0x74,0x6f,0x6e,0x6e,0x61,0x43,0x20,0x74,0x69,0x20,0x2c,0x74,0x65,0x73,0x20,0x73,0x69,0x20,0x72,0x65,0x64,0x6e,0x65,0x67,0x20,0x65,0x63,0x6e,0x4f]

/*: "#2ABBFF" :*/
fileprivate let str_toName:String = "#2ABBFFlet language lab"

/*: "btn_male_nv_nor" :*/
fileprivate let str_scopeName:[Character] = ["b","t","n","_","m","a","l","e","_","n","v","_","n","o"]
fileprivate let str_aTitle:String = "start"

/*: "btn_male_nv_sel" :*/
fileprivate let str_loadFreshData:[Character] = ["b","t","n","_","m","a","l","e","_","n","v","_","s","e","l"]

/*: "Male" :*/
fileprivate let str_makeData:String = "as self enableMale"

/*: "#FF5372" :*/
fileprivate let str_addData:String = "equal to list#FF5372"

/*: "btn_female_nv_nor" :*/
fileprivate let str_userName:String = "videotn"
fileprivate let str_recordValue:[Character] = ["_","f","e","m","a","l","e","_","n","v","_","n","o","r"]

/*: "btn_female_nv_sel" :*/
fileprivate let str_titleData:[Character] = ["b","t","n","_","f","e","m","a","l","e","_","n","v","_","s"]
fileprivate let str_labelName:String = "EL"

/*: "Female" :*/
fileprivate let str_listHeName:String = "Femalevar make self if"

/*: "Next" :*/
fileprivate let str_changeValueName:[Character] = ["N","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerTotalensityGenderVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class ServerTotalensityGenderVc: ServiceRecognizerDelegate {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sendToolData.map{vocalismReport(make: $0)}, encoding: .utf8)!)
    }

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
        self.title = (String(str_searchItemModelName.prefix(4)) + "onal i" + str_titleValue.replacingOccurrences(of: "color", with: "a") + "tion").localized
        //: IndexStyleAppManager.share.userFillInfoMode.sex = "1"
        IndexStyleAppManager.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.netExecute()
        //: self.setupSubViewsConstraint()
        self.video()
        //: self.bindInteraction()
        self.loadAcross()
        //: func__checkNextBtnState()
        viewAdd()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 17)
        label.font = .loadEnable(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = "Gender".localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 15)
        label.font = .loadEnable(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .frontColor()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: str_enableTitle.reversed(), encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton(type: .custom)
        let btn = LabelPositionReactiveCompatible(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.fullMoon(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.fullMoon(color: UIColor(hex: "#2ABBFF")!, forState: .selected)
        //: btn.setImage(UIImage.nearTap(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_scopeName) + str_aTitle.replacingOccurrences(of: "start", with: "r"))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_loadFreshData))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle("Male".localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle("Male".localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 17)
        btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton(type: .custom)
        let btn = LabelPositionReactiveCompatible(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.fullMoon(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.fullMoon(color: UIColor(hex: "#FF5372")!, forState: .selected)
        //: btn.setImage(UIImage.nearTap(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (str_userName.replacingOccurrences(of: "video", with: "b") + String(str_recordValue))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_titleData) + str_labelName.lowercased())), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle("Female".localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle("Female".localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 17)
        btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 17)
        //: return btn
        return btn
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
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle("Next".localized, for: .normal)
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
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension ServerTotalensityGenderVc {
    //: private func func__checkNextBtnState() {
    private func viewAdd() {
        //: if IndexStyleAppManager.share.userFillInfoMode.sex == "1" {
        if IndexStyleAppManager.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if IndexStyleAppManager.share.userFillInfoMode.sex == "2"{
        } else if IndexStyleAppManager.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func cameraEnter() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if IndexStyleAppManager.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !TalkingBenderTotalensityRequestThen.isUsedProxy() && !TalkingBenderTotalensityRequestThen.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                DeviceManagerRequest.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = IndexStyleAppManager.share.userFillInfoMode.sex
        let sex = IndexStyleAppManager.share.userFillInfoMode.sex
        //: IndexStyleAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        IndexStyleAppManager.share.userFillInfoMode = TotalensityInfoModel()
        //: IndexStyleAppManager.share.userFillInfoMode.sex = sex
        IndexStyleAppManager.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = MakeViewController()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension ServerTotalensityGenderVc {
    // 添加视图
    //: private func setupSubviews() {
    private func netExecute() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func video() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(consLet_errorDeviceHeightData - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(consLet_errorDeviceHeightData - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func loadAcross() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.cameraEnter()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: IndexStyleAppManager.share.userFillInfoMode.sex = "2"
                IndexStyleAppManager.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.viewAdd()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: IndexStyleAppManager.share.userFillInfoMode.sex = "1"
                IndexStyleAppManager.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.viewAdd()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
