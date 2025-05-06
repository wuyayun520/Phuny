
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sexValue:[UInt8] = [0x33,0x34,0x33,0x2e,0x72,0x39,0x35,0x3e,0x3f,0x28,0x60,0x73,0x7a,0x32,0x3b,0x29,0x7a,0x34,0x35,0x2e,0x7a,0x38,0x3f,0x3f,0x34,0x7a,0x33,0x37,0x2a,0x36,0x3f,0x37,0x3f,0x34,0x2e,0x3f,0x3e]

private func modelCount(card num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "bg_message_top" :*/
fileprivate let str_makeData:String = "view hidden available modelbg_mes"

/*: "img_me_edit_photo_default" :*/
fileprivate let str_indexValue:String = "selected corner viewimg_me"
fileprivate let str_userValue:String = "t_photexcept view case"
fileprivate let str_mediumData:[Character] = ["o","_","d","e","f","a","u","l","t"]

/*: "icon_lounge" :*/
fileprivate let str_itemValue:[Character] = ["i","c","o","n","_","l"]
fileprivate let str_titleValue:String = "blocknge"

/*: "#777777" :*/
fileprivate let str_viewData:String = "#giftgiftgiftgiftgiftgift"

/*: "#FF506D" :*/
fileprivate let str_textValue:String = "#FF506Dkey for return self"

/*: "Reviewing" :*/
fileprivate let str_exactlyText:String = "Reviebackground temp return self pop"

/*: "headPic" :*/
fileprivate let str_cellName:String = "herror"
fileprivate let str_buttonTopName:String = "view text video size imageadPic"

/*: "Modify the success" :*/
fileprivate let str_logData:String = "Modifindex view color make text"
fileprivate let str_appTitle:String = "colorcoloress"

/*: "UID:" :*/
fileprivate let str_labValue:[Character] = ["U","I","D",":"]

/*: "UID Copied" :*/
fileprivate let str_toValue:[Character] = ["U","I","D"," ","C","o","p","i","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class TotalThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        expectableClick()
        //: setupSubViewsConstraint()
        constraintTo()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sexValue.map{modelCount(card: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.nearTap(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.nearTap(name: (String(str_makeData.suffix(6)) + "sage_top")))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_indexValue.suffix(6)) + "_edi" + String(str_userValue.prefix(6)) + String(str_mediumData))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 89/2
        btn.layer.cornerRadius = 89 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(glide), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_lounge")
        img.image = UIImage.nearTap(name: (String(str_itemValue) + str_titleValue.replacingOccurrences(of: "block", with: "ou")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton.init()
        let btn = LabelPositionReactiveCompatible()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
//        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: "#777777"), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
//        btn.setImage(UIImage.nearTap(name: "btn_me_copy"), for: .normal)
//        btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

//    private lazy var editImag: UIImageView = {
//        let imag = UIImageView.init(image: UIImage.nearTap(name: "btn_me_new_edit"))
//        return imag
//    }()
//    private lazy var editPushBtn: UIButton = {
//        let btn = UIButton.init()
//        btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
//        return btn
//    }()
    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 12)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: "#FF506D")
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_exactlyText.prefix(5)) + "wing").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension TotalThen {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func titleActionMake(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.number()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = ["headPic": resultData]
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        KeyReactiveCompatible.appearInfoModifyIndividualKeyEqual(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.noblesseExtra(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }

            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.scaleMsg(showMsg: (String(str_logData.prefix(5)) + "y the su" + str_appTitle.replacingOccurrences(of: "color", with: "c")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: IndexStyleAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            IndexStyleAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: IndexStyleAppManager.share.loginUserMode.headPicStatus = 0
            IndexStyleAppManager.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: IndexStyleAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.net(urlStr: IndexStyleAppManager.share.loginUserMode.headPic ?? (String(str_indexValue.suffix(6)) + "_edi" + String(str_userValue.prefix(6)) + String(str_mediumData)))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension TotalThen {
    /// 更新数据
    //: func setViewData() {
    func liePush() {
        //: iconImag.setUrlImage(urlStr: IndexStyleAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.net(urlStr: IndexStyleAppManager.share.loginUserMode.headPic ?? (String(str_indexValue.suffix(6)) + "_edi" + String(str_userValue.prefix(6)) + String(str_mediumData)))
        //: nameLB.textColor = IndexStyleAppManager.share.loginUserMode.loungePlus ? .userVipColor():.appTitleColor()
        nameLB.textColor = IndexStyleAppManager.share.loginUserMode.loungePlus ? .beyondEnd() : .appNameVisualProperty()
        //: nameLB.text = IndexStyleAppManager.share.loginUserMode.nickname
        nameLB.text = IndexStyleAppManager.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !IndexStyleAppManager.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !IndexStyleAppManager.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + IndexStyleAppManager.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle("UID:" + IndexStyleAppManager.share.loginUserMode.userID, for: .normal)
        //: statusLB.isHidden = (IndexStyleAppManager.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (IndexStyleAppManager.share.loginUserMode.headPicStatus != PositionStatusPriorityTarget.isOnGoing.rawValue)
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func sumClick() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = IndexStyleAppManager.share.loginUserMode.userID
        paste.string = IndexStyleAppManager.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.scaleMsg(showMsg: (String(str_toValue)).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func glide() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        KeyPermissionTool.albumTheme(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MightHaveBeenThen.sendLocal(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.userRead()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.titleActionMake(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func detain() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if IndexStyleAppManager.share.loginUserMode.headPicStatus == PositionStatusPriorityTarget.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if IndexStyleAppManager.share.loginUserMode.headPicStatus == PositionStatusPriorityTarget.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        slide()
    }

    //: private func isTPAuthTool() {
    private func slide() {
        //: if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isSuccessed.rawValue {
            //: return
            return
                //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.unknown.rawValue {
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
            //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = StyleViewController()
            //: PostPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            PostPushManager.share.overDoinglineVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func beforeMake() {
        //: PostPushManager.share.func__pushToUserDetailVC(uid: IndexStyleAppManager.share.loginUid)
        PostPushManager.share.miniskirt(uid: IndexStyleAppManager.share.loginUid)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension TotalThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func expectableClick() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(iconImag)
        bgImgView.addSubview(iconImag)
        //: bgImgView.addSubview(nameLB)
        bgImgView.addSubview(nameLB)
        //: bgImgView.addSubview(loungeImgV)
        bgImgView.addSubview(loungeImgV)
        //: bgImgView.addSubview(idBtn)
        bgImgView.addSubview(idBtn)
//        bgImgView.addSubview(editImag)
//        bgImgView.addSubview(editPushBtn)
        //: bgImgView.addSubview(statusLB)
        bgImgView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintTo() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+228)
            make.height.equalTo(consLet_netViewValue + 228)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+50)
            make.top.equalTo(consLet_netViewValue + 50)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(89)
            make.width.height.equalTo(89)
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(10)
            make.top.equalTo(iconImag.snp.bottom).offset(10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(consLet_errorDeviceHeightData / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(17)
            make.height.equalTo(17)
        }

//        editImag.snp.makeConstraints { make in
//            make.centerY.equalTo(iconImag)
//            make.trailing.equalToSuperview().offset(-16)
//            make.width.equalTo(6)
//            make.height.equalTo(11)
//        }
//        editPushBtn.snp.makeConstraints { make in
//            make.centerY.equalTo(editImag)
//            make.trailing.equalToSuperview().offset(-10)
//            make.width.height.equalTo(60)
//        }
    }
}
