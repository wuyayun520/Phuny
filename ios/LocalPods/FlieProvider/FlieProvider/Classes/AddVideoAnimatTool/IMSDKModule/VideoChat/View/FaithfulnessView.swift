
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_controlName:[UInt8] = [0xe0,0xe7,0xe0,0xfd,0xa1,0xea,0xe6,0xed,0xec,0xfb,0xb3,0xa0,0xa9,0xe1,0xe8,0xfa,0xa9,0xe7,0xe6,0xfd,0xa9,0xeb,0xec,0xec,0xe7,0xa9,0xe0,0xe4,0xf9,0xe5,0xec,0xe4,0xec,0xe7,0xfd,0xec,0xed]

/*: "icon_free_call_bg_coundown" :*/
fileprivate let str_sizeText:[Character] = ["i","c"]
fileprivate let str_randomData:String = "force progresson_fr"
fileprivate let str_tapToData:String = "l_bgin guard self"

/*: "icon_free_call_countdown" :*/
fileprivate let str_pathValue:[Character] = ["i","c","o","n","_","f","r","e","e","_","c","a","l","l","_","c","o","u","n","t","d"]
fileprivate let str_viewValue:String = "owkey"

/*: "Not enough coins" :*/
fileprivate let str_whiteModelCaptureData:String = "Not data to"
fileprivate let str_randomTitle:String = " coinsraw regular in else layer"

/*: "#8566FF" :*/
fileprivate let str_modelZoneValue:String = "#8566Fback situation"
fileprivate let str_inputValue:[Character] = ["F"]

/*: "Recharge" :*/
fileprivate let str_addToolData:[Character] = ["R","e","c","h","a","r","g","e"]

/*: "%@s Remaining" :*/
fileprivate let str_messageHiddenData:[Character] = ["%","@","s"," ","R","e","m"]
fileprivate let str_beText:[Character] = ["a","i","n","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FaithfulnessView.swift
//  FlieProvider
//
//  Created by Charlotte on 2024/4/29.
//

//: import UIKit
import UIKit

/// 免费通话剩余20s倒计时页面
//: class TalkingFreeCallRechargeTipsView: UIView {
class FaithfulnessView: UIView {
    // MARK: - 属性声明

    //: var touchRechargeBtnBlock: (() -> Void)?
    var touchRechargeBtnBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        imageSetup()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_controlName.map{$0^137}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.cornerRadius = 12
        v.layer.cornerRadius = 12
        //: return v
        return v
        //: }()
    }()

    //: lazy var topBgImagV: UIImageView = {
    lazy var topBgImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.nearTap(name: "icon_free_call_bg_coundown")
        imag.image = UIImage.nearTap(name: (String(str_sizeText) + String(str_randomData.suffix(5)) + "ee_cal" + String(str_tapToData.prefix(4)) + "_coundown"))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImagV: UIImageView = {
    lazy var topImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.nearTap(name: "icon_free_call_countdown")
        imag.image = UIImage.nearTap(name: (String(str_pathValue) + str_viewValue.replacingOccurrences(of: "key", with: "n")))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Not enough coins".localized
        lb.text = (String(str_whiteModelCaptureData.prefix(4)) + "enough" + String(str_randomTitle.prefix(6))).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: lb.font = UIFont.little(fontSize: 12)
        lb.font = UIFont.little(fontSize: 12)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var countLB: UILabel = {
    lazy var countLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.init(hex: "#8566FF")
        lb.textColor = UIColor(hex: "#8566FF")
        //: lb.font = UIFont.exceptEqual(fontSize: 10)
        lb.font = UIFont.exceptEqual(fontSize: 10)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var callBtn: UIButton = {
    lazy var callBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.layer.cornerRadius = 10
        btn.layer.cornerRadius = 10
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 72, height: 20)), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 12)
        btn.titleLabel?.font = UIFont.little(fontSize: 12)
        //: btn.setTitle("Recharge".localized, for: .normal)
        btn.setTitle((String(str_addToolData)).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(attach), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingFreeCallRechargeTipsView {
extension FaithfulnessView {
    //: func setTipsMessage(count: Int) {
    func recognizeQuantity(count: Int) {
        //: countLB.text = "%@s Remaining".localizedArguments(count)
        countLB.text = (String(str_messageHiddenData) + String(str_beText)).localizedArguments(count)
    }

    //: @objc private func callBtnClick() {
    @objc private func attach() {
        //: PostPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        PostPushManager.share.seeThroughEvent(webViewType: .RechargeHalfPage)
        //: touchRechargeBtnBlock?()
        touchRechargeBtnBlock?()
    }
}

//: extension TalkingFreeCallRechargeTipsView {
extension FaithfulnessView {
    //: private func setupSubviews() {
    private func imageSetup() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topBgImagV)
        contentView.addSubview(topBgImagV)
        //: addSubview(topImagV)
        addSubview(topImagV)
        //: contentView.addSubview(tipsLB)
        contentView.addSubview(tipsLB)
        //: contentView.addSubview(countLB)
        contentView.addSubview(countLB)
        //: contentView.addSubview(callBtn)
        contentView.addSubview(callBtn)

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
        }
        //: topBgImagV.snp.makeConstraints { make in
        topBgImagV.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(57)
            make.height.equalTo(57)
        }
        //: topImagV.snp.makeConstraints { make in
        topImagV.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(37)
            make.width.equalTo(37)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }

        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.top.equalTo(38)
            make.top.equalTo(38)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: countLB.snp.makeConstraints { make in
        countLB.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLB.snp.bottom).offset(4)
            make.top.equalTo(tipsLB.snp.bottom).offset(4)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(countLB.snp.bottom).offset(8)
            make.top.equalTo(countLB.snp.bottom).offset(8)
            //: make.size.equalTo(CGSize.init(width: 72, height: 20))
            make.size.equalTo(CGSize(width: 72, height: 20))
        }
    }
}
