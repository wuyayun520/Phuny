
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewName:[UInt8] = [0x37,0x30,0x37,0x2a,0x76,0x3d,0x31,0x3a,0x3b,0x2c,0x64,0x77,0x7e,0x36,0x3f,0x2d,0x7e,0x30,0x31,0x2a,0x7e,0x3c,0x3b,0x3b,0x30,0x7e,0x37,0x33,0x2e,0x32,0x3b,0x33,0x3b,0x30,0x2a,0x3b,0x3a]

private func buttonHead(narrow num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "img_faceverification_photo" :*/
fileprivate let str_toName:[Character] = ["i","m","g","_","f","a","c"]
fileprivate let str_centerDisappearValue:String = "evenameif"
fileprivate let str_useValue:String = "ion_photoload table true let model"

/*: "Face verification" :*/
fileprivate let str_ofNameData:[Character] = ["F","a","c","e"," ","v","e","r","i","f","i","c","a","t","i","o"]
fileprivate let str_componentName:String = "touch"

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let str_aText:[UInt8] = [0x3d,0x1c,0x6e,0x61,0x5d,0x68,0x29,0x6c,0x61,0x6e,0x6f,0x6b,0x6a,0x1c,0x72,0x61,0x6e,0x65,0x62,0x65,0x5f,0x5d,0x70,0x65,0x6b,0x6a,0x1c,0x6b,0x62,0x1c,0x75,0x6b,0x71,0x6e,0x1c,0x6c,0x6e,0x6b,0x62,0x65,0x68,0x61,0x1c,0x73,0x65,0x68,0x68,0x1c,0x63,0x61,0x70,0x1c,0x75,0x6b,0x71,0x1c,0x69,0x6b,0x6e,0x61,0x1c,0x5d,0x6a,0x60,0x1c,0x5e,0x61,0x70,0x70,0x61,0x6e,0x1c,0x69,0x5d,0x70,0x5f,0x64,0x61,0x6f,0x2a]

fileprivate func iconBegin(of num: UInt8) -> UInt8 {
    let value = Int(num) + 4
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let str_showOmitData:[UInt8] = [0x2e,0x65,0x64,0x69,0x75,0x67,0x20,0x67,0x6e,0x69,0x73,0x6f,0x70,0x20,0x65,0x68,0x74,0x20,0x67,0x6e,0x69,0x77,0x6f,0x6c,0x6c,0x6f,0x66,0x20,0x79,0x62,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x65,0x6b,0x61,0x54,0x20,0xb7,0xc2]

/*: "· The person in the photo must be the account owner." :*/
fileprivate let str_fileText:[UInt8] = [0x2b,0x20,0x89,0xbd,0xd1,0xce,0x89,0xd9,0xce,0xdb,0xdc,0xd8,0xd7,0x89,0xd2,0xd7,0x89,0xdd,0xd1,0xce,0x89,0xd9,0xd1,0xd8,0xdd,0xd8,0x89,0xd6,0xde,0xdc,0xdd,0x89,0xcb,0xce,0x89,0xdd,0xd1,0xce,0x89,0xca,0xcc,0xcc,0xd8,0xde,0xd7,0xdd,0x89,0xd8,0xe0,0xd7,0xce,0xdb,0x97]

fileprivate func toClick(instance num: UInt8) -> UInt8 {
    let value = Int(num) + 151
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Continue" :*/
fileprivate let str_momentTitle:[Character] = ["C","o","n","t","i","n"]
fileprivate let str_modelLittleText:String = "counte"

/*: "btn_me_back_continue" :*/
fileprivate let str_limitTitle:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o"]
fileprivate let str_finishData:String = "ntplayernue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class EventThen: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        when()
        //: layoutSubViewsConstraints()
        modelList()
        //: bindInteraction()
        up()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewName.map{buttonHead(narrow: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearTap(name: "img_faceverification_photo")
        imgView.image = UIImage.nearTap(name: (String(str_toName) + str_centerDisappearValue.replacingOccurrences(of: "name", with: "r") + "icat" + String(str_useValue.prefix(9))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(str_ofNameData) + str_componentName.replacingOccurrences(of: "touch", with: "n")).localized
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
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: str_aText.map{iconBegin(of: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.font = .loadEnable(type: .Medium, fontSize: 18)
        lb.font = .loadEnable(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: str_showOmitData.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 16)
        lb.font = .loadEnable(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: str_fileText.map{toClick(instance: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
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
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(str_momentTitle) + str_modelLittleText.replacingOccurrences(of: "count", with: "u")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_limitTitle) + str_finishData.replacingOccurrences(of: "player", with: "i"))), for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension EventThen {
    //: @objc func registerBtnAction() {
    @objc func mixInLoad() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func up() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.mixInLoad()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension EventThen {
    //: func createSubViews() {
    func when() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func modelList() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * consLet_errorDeviceHeightData / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + consLet_netViewValue)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
