
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_bottomValue:[UInt8] = [0x98,0x9d,0x98,0xa3,0x57,0x92,0x9e,0x93,0x94,0xa1,0x69,0x58,0x4f,0x97,0x90,0xa2,0x4f,0x9d,0x9e,0xa3,0x4f,0x91,0x94,0x94,0x9d,0x4f,0x98,0x9c,0x9f,0x9b,0x94,0x9c,0x94,0x9d,0xa3,0x94,0x93]

fileprivate func errorMake(show num: UInt8) -> UInt8 {
    let value = Int(num) + 209
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let str_dataName:String = "Personaview make make"
fileprivate let str_videoContent:String = "false in device modell in"
fileprivate let str_resultName:String = "ATION"

/*: _ :*/
fileprivate let str_byName:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_contentText:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let str_tableText:String = "ferawle"

/*: "newHeadPic" :*/
fileprivate let str_tagName:String = "newHefile make view count"
fileprivate let str_equalScaleContent:[Character] = ["a","d","P","i","c"]

/*: "invite_code" :*/
fileprivate let str_colorData:String = "invite_cotype long kit label"
fileprivate let str_meetingName:String = "framee"

/*: "codeFillType" :*/
fileprivate let str_equalTextValue:String = "codeFcell video don"
fileprivate let str_mobileName:[Character] = ["y","p","e"]

/*: "RegisterSuccess" :*/
fileprivate let str_nearHiddenValue:[Character] = ["R","e","g","i","s","t","e","r","S","u","c"]
fileprivate let str_quoteContent:[Character] = ["c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StepViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class StepViewController: ServiceRecognizerDelegate {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_bottomValue.map{errorMake(show: $0)}, encoding: .utf8)!)
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
        self.title = (String(str_dataName.prefix(7)) + String(str_videoContent.suffix(4)) + "form" + str_resultName.lowercased()).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.setupStar()
        //: self.setupSubViewsConstraint()
        self.model()
        //: self.bindInteraction()
        self.time()
        //: addTapGestureRecognizer()
        currentView()

        //: func__checkFinishBtnState()
        towardShared()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: SoulReactiveCompatible = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = SoulReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension StepViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func toPopback() {
        //: super.naviPopback()
        super.toPopback()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(consLet_maxValue)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        consLet_contentData.postEqual(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func actionAllow() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(consLet_buttonData)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        consLet_contentData.postEqual(eventID: eventID)

        //: if IndexStyleAppManager.share.userFillInfoMode.headImage != nil {
        if IndexStyleAppManager.share.userFillInfoMode.headImage != nil {
            //: let image = IndexStyleAppManager.share.userFillInfoMode.headImage!
            let image = IndexStyleAppManager.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(str_tagName.prefix(5)) + String(str_equalScaleContent))] = image.jpegData(compressionQuality: 1)
        }
        //: if IndexStyleAppManager.share.userFillInfoMode.inviteCode.count > 0 {
        if IndexStyleAppManager.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = IndexStyleAppManager.share.userFillInfoMode.inviteCode
            params[(String(str_colorData.prefix(9)) + str_meetingName.replacingOccurrences(of: "frame", with: "d"))] = IndexStyleAppManager.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: consLet_soundData)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(String(str_colorData.prefix(9)) + str_meetingName.replacingOccurrences(of: "frame", with: "d"))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(str_equalTextValue.prefix(5)) + "illT" + String(str_mobileName))] = 1
            }
        }

        //: if IndexStyleAppManager.share.userFillInfoMode.sex == "1" {
        if IndexStyleAppManager.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            DeviceFailThen.callMake()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            AdministratorReactiveCompatible.add(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: consLet_iconText, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    AdjustThen.share.subRequest(key: (String(str_nearHiddenValue) + String(str_quoteContent)))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    CeremonyReactiveCompatible.share.familyName(name: (String(str_nearHiddenValue) + String(str_quoteContent)))

                    //: if IndexStyleAppManager.share.loginUserMode.remindBindEmail == true {
                    if IndexStyleAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: PostPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                            PostPushManager.share.actuarialTable(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = OnlyThen()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.userRead()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func towardShared() {
        //: let headImg = IndexStyleAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = IndexStyleAppManager.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension StepViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func funcPhotosPick() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        KeyPermissionTool.albumTheme(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MightHaveBeenThen.sendLocal(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: PostPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                PostPushManager.share.overDoinglineVc()?.present(vc, animated: true)
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
                            //: IndexStyleAppManager.share.userFillInfoMode.headImage = photos![0]
                            IndexStyleAppManager.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.towardShared()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension StepViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func setupStar() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func model() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func time() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: StableInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                funcPhotosPick()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.actionAllow()
                //: break
            }

            //: return
        }
    }
}
