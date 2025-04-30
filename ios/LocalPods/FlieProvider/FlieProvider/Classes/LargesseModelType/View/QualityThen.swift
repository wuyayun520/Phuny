
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_translationText:[UInt8] = [0x91,0x96,0x91,0x9c,0x50,0x8b,0x97,0x8c,0x8d,0x9a,0x62,0x51,0x48,0x90,0x89,0x9b,0x48,0x96,0x97,0x9c,0x48,0x8a,0x8d,0x8d,0x96,0x48,0x91,0x95,0x98,0x94,0x8d,0x95,0x8d,0x96,0x9c,0x8d,0x8c]

fileprivate func tapLocationBottom(fatal num: UInt8) -> UInt8 {
    let value = Int(num) - 40
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photopose" :*/
fileprivate let str_littleLeapTableValue:String = "self event self afterimg_fa"
fileprivate let str_popData:String = "rificplace"
fileprivate let str_addMakeName:String = "sun if to to_photo"

/*: "To pass the verification, in the photo you should:" :*/
fileprivate let str_imageContent:[UInt8] = [0x3a,0x64,0x6c,0x75,0x6f,0x68,0x73,0x20,0x75,0x6f,0x79,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x65,0x68,0x74,0x20,0x73,0x73,0x61,0x70,0x20,0x6f,0x54]

/*: "· show your face clearly;" :*/
fileprivate let str_managerData:[Character] = ["·"," ","s","h","o","w"," ","y","o","u","r"," ","f","a","c","e"," ","c","l","e","a","r","l"]
fileprivate let str_tapName:String = "y;nor user"

/*: "· pose exactly like the posing guide." :*/
fileprivate let str_buttonValue:[UInt8] = [0xa1,0xd4,0x43,0x13,0xc,0x10,0x6,0x43,0x6,0x1b,0x2,0x0,0x17,0xf,0x1a,0x43,0xf,0xa,0x8,0x6,0x43,0x17,0xb,0x6,0x43,0x13,0xc,0x10,0xa,0xd,0x4,0x43,0x4,0x16,0xa,0x7,0x6,0x4d]

private func titleValid(select num: UInt8) -> UInt8 {
    return num ^ 99
}

/*: "Your photo will never be uploaded to your profile or shown to anvone else." :*/
fileprivate let str_roomTitle:[UInt8] = [0x66,0x50,0x4a,0x4d,0x1f,0x4f,0x57,0x50,0x4b,0x50,0x1f,0x48,0x56,0x53,0x53,0x1f,0x51,0x5a,0x49,0x5a,0x4d,0x1f,0x5d,0x5a,0x1f,0x4a,0x4f,0x53,0x50,0x5e,0x5b,0x5a,0x5b,0x1f,0x4b,0x50,0x1f,0x46,0x50,0x4a,0x4d,0x1f,0x4f,0x4d,0x50,0x59,0x56,0x53,0x5a,0x1f,0x50,0x4d,0x1f,0x4c,0x57,0x50,0x48,0x51,0x1f,0x4b,0x50,0x1f,0x5e,0x51,0x49,0x50,0x51,0x5a,0x1f,0x5a,0x53,0x4c,0x5a,0x11]

private func totalLoad(interaction num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "Submit Photo" :*/
fileprivate let str_viewName:[Character] = ["S","u","b","m","i","t"," ","P","h"]
fileprivate let str_hiddenOffModelValue:[Character] = ["o","t","o"]

/*: "btn_me_back_continue" :*/
fileprivate let str_withData:String = "btn_var raw else path color"
fileprivate let str_backgroundName:[Character] = ["k","_","c","o","n","t","i","n","u","e"]

/*: "Retake Photo" :*/
fileprivate let str_domainShareName:String = "Retake true ok"
fileprivate let str_contentName:[Character] = ["P","h","o","t","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QualityThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoView: UIView {
class QualityThen: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    //: typealias RetakeBtnClickBlock = () -> Void
    typealias RetakeBtnClickBlock = () -> Void
    //: var submitClickBlock: SubmitBtnClickBlock?
    var submitClickBlock: SubmitBtnClickBlock?
    //: var retakeClickBlock: RetakeBtnClickBlock?
    var retakeClickBlock: RetakeBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        write()
        //: layoutSubViewsConstraints()
        erase()
        //: bindInteraction()
        theTransform()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_translationText.map{tapLocationBottom(fatal: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var leftExampleImageView: UIImageView = {
    lazy var leftExampleImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearTap(name: "img_faceverification_photopose")
        imgView.image = UIImage.nearTap(name: (String(str_littleLeapTableValue.suffix(6)) + "ceve" + str_popData.replacingOccurrences(of: "place", with: "a") + "tion" + String(str_addMakeName.suffix(6)) + "pose"))
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var rightPhotoImageView: UIImageView = {
    lazy var rightPhotoImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.backgroundColor = UIColor.appValueColor()
        imgView.backgroundColor = UIColor.frontColor()
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "To pass the verification, in the photo you should:".localized
        lb.text = String(bytes: str_imageContent.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 18)
        lb.font = .loadEnable(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstDesLab: UILabel = {
    lazy var firstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· show your face clearly;".localized
        lb.text = (String(str_managerData) + String(str_tapName.prefix(2))).localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 16)
        lb.font = .loadEnable(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var secondDesLab: UILabel = {
    lazy var secondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· pose exactly like the posing guide.".localized
        lb.text = String(bytes: str_buttonValue.map{titleValid(select: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 16)
        lb.font = .loadEnable(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var bottomTipLab: UILabel = {
    lazy var bottomTipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anvone else.".localized
        lb.text = String(bytes: str_roomTitle.map{totalLoad(interaction: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 15)
        lb.font = .loadEnable(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var submitBtn: UIButton = {
    lazy var submitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit Photo".localized, for: .normal)
        btn.setTitle((String(str_viewName) + String(str_hiddenOffModelValue)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_withData.prefix(4)) + "me_bac" + String(str_backgroundName))), for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var retakeBtn: UIButton = {
    lazy var retakeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Retake Photo".localized, for: .normal)
        btn.setTitle((String(str_domainShareName.prefix(7)) + String(str_contentName)).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.frontColor(), for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 18)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoView {
extension QualityThen {
    //: @objc func registerSubmitAction() {
    @objc func will() {
        //: if submitClickBlock != nil, rightPhotoImageView.image != nil {
        if submitClickBlock != nil, rightPhotoImageView.image != nil {
            //: submitClickBlock!(rightPhotoImageView.image!)
            submitClickBlock!(rightPhotoImageView.image!)
        }
    }

    //: @objc func registerRetakeAction() {
    @objc func mediumUser() {
        //: if retakeClickBlock != nil {
        if retakeClickBlock != nil {
            //: retakeClickBlock!()
            retakeClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func theTransform() {
        //: submitBtn.rx.controlEvent(.touchUpInside)
        submitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerSubmitAction()
                self.will()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: retakeBtn.rx.controlEvent(.touchUpInside)
        retakeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerRetakeAction()
                self.mediumUser()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoView {
extension QualityThen {
    //: func createSubViews() {
    func write() {
        //: addSubview(leftExampleImageView)
        addSubview(leftExampleImageView)
        //: addSubview(rightPhotoImageView)
        addSubview(rightPhotoImageView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(firstDesLab)
        addSubview(firstDesLab)
        //: addSubview(secondDesLab)
        addSubview(secondDesLab)
        //: addSubview(submitBtn)
        addSubview(submitBtn)
        //: addSubview(retakeBtn)
        addSubview(retakeBtn)
        //: addSubview(bottomTipLab)
        addSubview(bottomTipLab)
    }

    //: func layoutSubViewsConstraints() {
    func erase() {
        //: let itemWidth = (ScreenWidth - actualWidth(w: 40)) / 2.0
        let itemWidth = (consLet_errorDeviceHeightData - actualWidth(w: 40)) / 2.0
        //: leftExampleImageView.snp.makeConstraints { make in
        leftExampleImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 18))
            make.top.equalTo(actualHeight(h: 18))
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: rightPhotoImageView.snp.makeConstraints { make in
        rightPhotoImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            //: make.top.equalTo(leftExampleImageView.snp.top)
            make.top.equalTo(leftExampleImageView.snp.top)
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
            make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
        }
        //: firstDesLab.snp.makeConstraints { make in
        firstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: secondDesLab.snp.makeConstraints { make in
        secondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
            make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
        }

        //: bottomTipLab.snp.makeConstraints { make in
        bottomTipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.bottom.equalTo(-24-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-24 - consLet_halfTitle)
        }
        //: retakeBtn.snp.makeConstraints { make in
        retakeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            //: make.leading.equalTo(actualWidth(w: 54))
            make.leading.equalTo(actualWidth(w: 54))
            //: make.trailing.equalTo(actualWidth(w: -54))
            make.trailing.equalTo(actualWidth(w: -54))
            //: make.height.equalTo(actualHeight(h: 42))
            make.height.equalTo(actualHeight(h: 42))
        }
        //: submitBtn.snp.makeConstraints { make in
        submitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(retakeBtn.snp.top)
            make.bottom.equalTo(retakeBtn.snp.top)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
