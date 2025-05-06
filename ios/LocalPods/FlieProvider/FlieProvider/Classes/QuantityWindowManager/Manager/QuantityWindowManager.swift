
//: Declare String Begin

/*: "content" :*/
fileprivate let str_addTitle:String = "ccallte"
fileprivate let str_cornerData:String = "NT"

/*: "jumpKey" :*/
fileprivate let str_mTitle:[Character] = ["j","u","m","p","K","e"]
fileprivate let str_objectEventTitle:String = "label"

/*: "uploadUserHeaderPic" :*/
fileprivate let str_iconText:String = "uplotext"
fileprivate let str_directionContent:String = "ealogr"
fileprivate let str_attachName:[Character] = ["P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let str_makeText:String = "shared separatetrueP"
fileprivate let str_applicationColorName:String = "let make self user frameAuth"

/*: "yyyy-MM-dd" :*/
fileprivate let str_listName:String = "yyyy-extension number view self"
fileprivate let str_makeName:String = "total current centerMM-dd"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum EqualCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class QuantityWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [EqualCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<EqualCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = QuantityWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        generateVerbally()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension QuantityWindowManager {
    //: func setObserver() {
    func generateVerbally() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.beginUp()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(cookie), name: consLet_roomData, object: nil)
    }

    //: func setHomePopUpWindow() {
    func popOut() {
        // 默认模式, 男性, 未订阅
        //: if IndexStyleAppManager.share.loginUserMode.jumpType == 0,
        if IndexStyleAppManager.share.loginUserMode.jumpType == 0,
           //: IndexStyleAppManager.share.appUserConfigMode.payWinType == 2,
           IndexStyleAppManager.share.appUserConfigMode.payWinType == 2,
           //: IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue,
           IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue,
           //: IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue,
           IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue,
           //: IndexStyleAppManager.share.loginUserMode.loungePlus == false {
           IndexStyleAppManager.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(EqualCaseIterable.Web_Subscribe)
        }

        //: if  IndexStyleAppManager.share.loginUserMode.showSignInPage && IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.loginUserMode.showSignInPage, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(EqualCaseIterable.sign_in)
        }

        //: if IndexStyleAppManager.share.loginUserMode.isNaUser == false,
        if IndexStyleAppManager.share.loginUserMode.isNaUser == false,
           //: IndexStyleAppManager.share.appUserConfigMode.videoCover.count > 0,
           IndexStyleAppManager.share.appUserConfigMode.videoCover.count > 0,
           //: IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue,
           //: IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(EqualCaseIterable.video_Cover)
        }

        //: if IndexStyleAppManager.share.appUserConfigMode.showNewGuidance, IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.appUserConfigMode.showNewGuidance, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(EqualCaseIterable.New_Guidance)
        }

        //: if IndexStyleAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0 && IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: refuseViewData["content"] = IndexStyleAppManager.share.appUserConfigMode.headPicRejectNotice
            refuseViewData["content"] = IndexStyleAppManager.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData["jumpKey"] = (str_iconText.replacingOccurrences(of: "text", with: "ad") + "UserH" + str_directionContent.replacingOccurrences(of: "log", with: "de") + String(str_attachName))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EqualCaseIterable.Attestation_Refuse)
        }

        //: if IndexStyleAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0 && IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue {
            //: refuseViewData["content"] = IndexStyleAppManager.share.appUserConfigMode.realPicRejectNotice
            refuseViewData["content"] = IndexStyleAppManager.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData["jumpKey"] = (String(str_makeText.suffix(5)) + "erson" + String(str_applicationColorName.suffix(4)))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EqualCaseIterable.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func viewContent() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(EqualCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func captureContainer() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(EqualCaseIterable.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func sectionIntervalimate() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(EqualCaseIterable.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func imageDic(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData["content"] = dic["content"] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(EqualCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func cookie() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EqualCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func beginUp() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.ofImage(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func ofImage(type: EqualCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: PostPushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            PostPushManager.share.scene(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = KeyTitleUpView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.show()
            view.offShow()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ChemicalElementPrizeForefrontThen(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.show()
            view.installment()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = QuantityUpView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.show()
            view.aboveHide()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = StableOnlyUpView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.show()
            view.site()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = consLet_partyTitle.object(forKey: consLet_appValue)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.host(date: Date(), dateFormat: (String(str_listName.prefix(5)) + String(str_makeName.suffix(5))))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                consLet_partyTitle.set(today, forKey: consLet_appValue)
                //: PostPushManager.share.func__pushToSubscribeAlert()
                PostPushManager.share.markParams()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = WoodUpView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.setViewData(dit: refuseViewData)
            view.anyTelegraphicSignal(dit: refuseViewData)
            //: view.show()
            view.tied()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = OnThen(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: view.show()
            view.fraught()
        }
    }
}
