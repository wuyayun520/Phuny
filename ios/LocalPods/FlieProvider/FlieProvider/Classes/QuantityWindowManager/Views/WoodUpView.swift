
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_showContent:[UInt8] = [0x9b,0x9c,0x9b,0x86,0xda,0x91,0x9d,0x96,0x97,0x80,0xc8,0xdb,0xd2,0x9a,0x93,0x81,0xd2,0x9c,0x9d,0x86,0xd2,0x90,0x97,0x97,0x9c,0xd2,0x9b,0x9f,0x82,0x9e,0x97,0x9f,0x97,0x9c,0x86,0x97,0x96]

private func eventAsset(block num: UInt8) -> UInt8 {
    return num ^ 242
}

/*: "icon_livetc_warn" :*/
fileprivate let str_leadingValue:[Character] = ["i","c","o","n","_","l","i"]
fileprivate let str_sizeData:String = "verror"
fileprivate let str_topText:[Character] = ["t","c","_","w","a","r","n"]

/*: "System notification" :*/
fileprivate let str_numberSystemText:[Character] = ["S","y","s","t","e","m"," ","n","o"]
fileprivate let str_explainIconData:String = "tstatusfstatusc"

/*: "Upload Now" :*/
fileprivate let str_pathTitle:String = "if model make permission buttonUploa"
fileprivate let str_managerCellName:[Character] = ["d"," ","N","o","w"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_leadingName:[Character] = ["b","t","n","_","m","e","_","p","r","o","g"]
fileprivate let str_tableText:[Character] = ["r","a","m","_","p","h","o","t","o","_"]
fileprivate let str_equalText:[Character] = ["d","e","l","e","t","e"]

/*: "content" :*/
fileprivate let str_cardName:String = "coateat"

/*: "jumpKey" :*/
fileprivate let str_layerContent:String = "jumpKeyplayer equal view model background"

/*: "uploadUserHeaderPic" :*/
fileprivate let str_withShowTextName:[Character] = ["u","p","l","o","a","d","U","s","e","r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let str_moreValue:String = "user weeklytrueP"
fileprivate let str_succeedData:String = "view window bordernAuth"

/*: "headPic" :*/
fileprivate let str_statusData:[Character] = ["h","e","a","d","P","i"]
fileprivate let str_iconValue:String = "task"

/*: "Modify the success" :*/
fileprivate let str_topStyleName:String = "button"
fileprivate let str_succeedTitle:String = "olabfy"
fileprivate let str_nameText:String = "self to model self app success"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WoodUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class WoodUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.resignRow()
        //: self.setupSubViewsConstraint()
        self.shirtButton()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_showContent.map{eventAsset(block: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.nearTap(name: "icon_livetc_warn")
        imag.image = UIImage.nearTap(name: (String(str_leadingValue) + str_sizeData.replacingOccurrences(of: "error", with: "e") + String(str_topText)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(str_numberSystemText) + str_explainIconData.replacingOccurrences(of: "status", with: "i") + "ation").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(str_pathTitle.suffix(5)) + String(str_managerCellName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 18)
        btn.titleLabel?.font = UIFont.little(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapShow), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_leadingName) + String(str_tableText) + String(str_equalText))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(replay), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension WoodUpView {
    //: func setViewData(dit: [String: String]) {
    func anyTelegraphicSignal(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit["content"]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit["jumpKey"] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func snapShow() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(str_withShowTextName)) {
            //: updatePhotoButtonClick()
            colouration()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(str_moreValue.suffix(5)) + "erso" + String(str_succeedData.suffix(5))) {
            //: IndexStyleAppManager.share.loginUserMode.isTPAuth = "3"
            IndexStyleAppManager.share.loginUserMode.isTPAuth = "3"
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
            //: dismiss()
            tillAction()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func replay() {
        //: dismiss()
        tillAction()
    }

    //: func show() {
    func tied() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func tillAction() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func colouration() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        KeyPermissionTool.albumTheme(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MightHaveBeenThen.sendLocal(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
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
                            self.infoThumb(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.tillAction()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.tillAction()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func infoThumb(img: UIImage) {
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
            //: self.dismiss()
            self.tillAction()
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
            self.scaleMsg(showMsg: (str_topStyleName.replacingOccurrences(of: "button", with: "M") + str_succeedTitle.replacingOccurrences(of: "lab", with: "di") + " the" + String(str_nameText.suffix(8))).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: IndexStyleAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            IndexStyleAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            //: IndexStyleAppManager.share.loginUserMode.headPicStatus = 0
            IndexStyleAppManager.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension WoodUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func resignRow() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func shirtButton() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
