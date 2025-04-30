
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_randomValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_income" :*/
fileprivate let str_conversationData:String = "equal detail model procedure locationicon_m"
fileprivate let str_errorTitle:[Character] = ["e","_","i","n","c","o","m","e"]

/*: "Income" :*/
fileprivate let str_managerPathData:String = "game string view priceIncome"

/*: "icon_me_male_wallet" :*/
fileprivate let str_imageName:String = "lab hidden succeed sourceicon_m"
fileprivate let str_hiddenContent:String = "e_wapush progress item"
fileprivate let str_textName:[Character] = ["l","l","e","t"]

/*: "Wallet" :*/
fileprivate let str_videoData:String = "value lab let income titleWallet"

/*: "#7189F7" :*/
fileprivate let str_makeData:[Character] = ["#","7","1","8","9","F","7"]

/*: "Level" :*/
fileprivate let str_progressName:String = "Levelto view pin"

/*: "icon_me_level" :*/
fileprivate let str_colorContent:String = "icbar"
fileprivate let str_infoTitle:String = "spring"

/*: "$ :*/
fileprivate let str_replyName:[Character] = ["$"]

/*: "Verification needed before balance check" :*/
fileprivate let str_labelText:[UInt8] = [0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x63,0x6e,0x61,0x6c,0x61,0x62,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x64,0x65,0x64,0x65,0x65,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x56]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServiceValueViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class ServiceValueViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        pointObject()
        //: setupSubViewsConstraint()
        indexConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_randomValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fastenerClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.appNameVisualProperty()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue && IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: icon.image = UIImage.nearTap(name: "icon_me_income")
            icon.image = UIImage.nearTap(name: (String(str_conversationData.suffix(6)) + String(str_errorTitle)))
            //: lab.text = "Income".localized
            lab.text = "Income".localized
            //: } else {
        } else {
            //: icon.image = UIImage.nearTap(name: "icon_me_male_wallet")
            icon.image = UIImage.nearTap(name: (String(str_imageName.suffix(6)) + "e_mal" + String(str_hiddenContent.prefix(4)) + String(str_textName)))
            //: lab.text = "Wallet".localized
            lab.text = "Wallet".localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: "#7189F7")
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(targetClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.appNameVisualProperty()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = "Level".localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.nearTap(name: "icon_me_level")
        icon.image = UIImage.nearTap(name: (str_colorContent.replacingOccurrences(of: "bar", with: "on") + "_me_leve" + str_infoTitle.replacingOccurrences(of: "spring", with: "l")))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: "#7189F7")
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension ServiceValueViewCell {
    //: func setViewData() {
    func cumulusToMetadata() {
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: goldCoinsNum.text = "$\(IndexStyleAppManager.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(IndexStyleAppManager.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(IndexStyleAppManager.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(IndexStyleAppManager.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = IndexStyleAppManager.share.loginUserMode.level
        myLevelNum.text = IndexStyleAppManager.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func fastenerClick() {
        //: incomeClick()
        themePrediction()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func targetClick() {
        //: PostPushManager.share.func__pushToWebVC(webViewType: .Level)
        PostPushManager.share.scene(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func themePrediction() {
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.unknown.rawValue || IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.scaleMsg(showMsg: String(bytes: str_labelText.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = CheekThen()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.userRead()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.scaleMsg(showMsg: String(bytes: str_labelText.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = StyleViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.userRead()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: PostPushManager.share.func__pushToWebVC(webViewType: .Balance)
                PostPushManager.share.scene(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: PostPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            PostPushManager.share.scene(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension ServiceValueViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func pointObject() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func indexConstraint() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (consLet_errorDeviceHeightData - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
