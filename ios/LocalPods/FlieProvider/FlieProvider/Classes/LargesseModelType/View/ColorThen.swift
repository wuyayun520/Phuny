
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_canValue:[UInt8] = [0xd5,0xd2,0xd5,0xc8,0x94,0xdf,0xd3,0xd8,0xd9,0xce,0x86,0x95,0x9c,0xd4,0xdd,0xcf,0x9c,0xd2,0xd3,0xc8,0x9c,0xde,0xd9,0xd9,0xd2,0x9c,0xd5,0xd1,0xcc,0xd0,0xd9,0xd1,0xd9,0xd2,0xc8,0xd9,0xd8]

private func letUser(file num: UInt8) -> UInt8 {
    return num ^ 188
}

/*: "img_faceverification_pose" :*/
fileprivate let str_observerValue:[Character] = ["i","m","g","_","f","a","c","e","v","e","r","i"]
fileprivate let str_barValue:String = "ficscaleion"
fileprivate let str_thanValue:[Character] = ["_","p","o","s","e"]

/*: "Strike this pose and take a photo" :*/
fileprivate let str_makeRowButterflyName:[UInt8] = [0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x65,0x6b,0x61,0x74,0x20,0x64,0x6e,0x61,0x20,0x65,0x73,0x6f,0x70,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x6b,0x69,0x72,0x74,0x53]

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let str_leadingData:[UInt8] = [0x44,0x5a,0x60,0x5d,0xb,0x5b,0x53,0x5a,0x5f,0x5a,0xb,0x62,0x54,0x57,0x57,0xb,0x59,0x50,0x61,0x50,0x5d,0xb,0x4d,0x50,0xb,0x60,0x5b,0x57,0x5a,0x4c,0x4f,0x50,0x4f,0xb,0x5f,0x5a,0xb,0x64,0x5a,0x60,0x5d,0xb,0x5b,0x5d,0x5a,0x51,0x54,0x57,0x50,0xb,0x5a,0x5d,0xb,0x5e,0x53,0x5a,0x62,0x59,0xb,0x5f,0x5a,0xb,0x4c,0x59,0x64,0x5a,0x59,0x50,0xb,0x50,0x57,0x5e,0x50,0x19]

fileprivate func modelColor(of num: UInt8) -> UInt8 {
    let value = Int(num) - 235
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Camera" :*/
fileprivate let str_playerTitle:String = "near"
fileprivate let str_makeData:[Character] = ["a","m","e","r","a"]

/*: "btn_me_back_continue" :*/
fileprivate let str_whiteContent:String = "make lab hidden fatal frombtn_m"
fileprivate let str_recordTimeName:String = "remove accept source self voice_con"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class ColorThen: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        currentViews()
        //: layoutSubViewsConstraints()
        cellByConstraints()
        //: bindInteraction()
        formatSumeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_canValue.map{letUser(file: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearTap(name: "img_faceverification_pose")
        imgView.image = UIImage.nearTap(name: (String(str_observerValue) + str_barValue.replacingOccurrences(of: "scale", with: "at") + String(str_thanValue)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: str_makeRowButterflyName.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.font = .loadEnable(type: .Medium, fontSize: 22)
        lb.font = .loadEnable(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: str_leadingData.map{modelColor(of: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .frontColor()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 16)
        lb.font = .loadEnable(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle("Camera".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_whiteContent.suffix(5)) + "e_back" + String(str_recordTimeName.suffix(4)) + "tinue")), for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension ColorThen {
    //: @objc func registerBtnAction() {
    @objc func registerAction() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func formatSumeraction() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.registerAction()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension ColorThen {
    //: func createSubViews() {
    func currentViews() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func cellByConstraints() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (consLet_errorDeviceHeightData - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(consLet_errorDeviceHeightData - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - consLet_halfTitle)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
