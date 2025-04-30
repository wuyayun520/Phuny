
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_succeedData:[UInt8] = [0xab,0xac,0xab,0xb6,0xea,0xa1,0xad,0xa6,0xa7,0xb0,0xf8,0xeb,0xe2,0xaa,0xa3,0xb1,0xe2,0xac,0xad,0xb6,0xe2,0xa0,0xa7,0xa7,0xac,0xe2,0xab,0xaf,0xb2,0xae,0xa7,0xaf,0xa7,0xac,0xb6,0xa7,0xa6]

private func returnEqual(gift num: UInt8) -> UInt8 {
    return num ^ 194
}

/*: "icon_video_bd" :*/
fileprivate let str_shareFrameWithData:String = "intimatecon"
fileprivate let str_lastData:String = "add text selfeo_bd"

/*: "btn_video_drop_nor" :*/
fileprivate let str_managerName:String = "guard model regularbtn_v"
fileprivate let str_eachName:String = "ideo_profile equal estimated last main"
fileprivate let str_voiceViewToolName:String = "drotitle"

/*: "get json error" :*/
fileprivate let str_indexValue:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

/*: s" :*/
fileprivate let str_textName:String = "user"

/*: "icon_videocall_topView" :*/
fileprivate let str_resultTitle:String = "make property hiddenicon_v"
fileprivate let str_labelData:String = "ll_toapp if social"
fileprivate let str_errorValue:String = "pViewevent manager return title"

/*: "Video Call" :*/
fileprivate let str_iconData:[Character] = ["V","i","d","e","o"," ","C","a","l","l"]

/*: "icon_videocall_initerv_topView" :*/
fileprivate let str_toData:String = "model corner rankicon_v"
fileprivate let str_tapQueryedText:String = "camakemake"
fileprivate let str_giftCenterData:String = "add else make indexv_topView"

/*: "Free" :*/
fileprivate let str_viewTopValue:[Character] = ["F","r","e","e"]

/*: "You've been barred from receiving calls" :*/
fileprivate let str_toName:[UInt8] = [0x65,0x53,0x49,0x1b,0x4a,0x59,0x1c,0x5e,0x59,0x59,0x52,0x1c,0x5e,0x5d,0x4e,0x4e,0x59,0x58,0x1c,0x5a,0x4e,0x53,0x51,0x1c,0x4e,0x59,0x5f,0x59,0x55,0x4a,0x55,0x52,0x5b,0x1c,0x5f,0x5d,0x50,0x50,0x4f]

private func cropNet(bar num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "&type=6" :*/
fileprivate let str_availableName:String = "&type=6make turn"

/*: "#864EFF" :*/
fileprivate let str_frameMeName:String = "#864EFdata add let"
fileprivate let str_equalName:String = "f"

/*: "#F79AFF" :*/
fileprivate let str_inviteName:String = "self present the for#F79AFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class QuantityUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.titleAppear()
        //: self.setupSubViewsConstraint()
        self.explain()
        //: self.bindInteraction()
        self.serration()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_succeedData.map{returnEqual(gift: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.magnitudeeractionPlay()
        //: player?.removeVideoWidget()
        player?.demineralizeDestroyTelecasting()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = LabelPositionReactiveCompatible(type: .custom)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (str_shareFrameWithData.replacingOccurrences(of: "intimate", with: "i") + "_vid" + String(str_lastData.suffix(5)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fulfillShould), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_managerName.suffix(5)) + String(str_eachName.prefix(5)) + str_voiceViewToolName.replacingOccurrences(of: "title", with: "p") + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(delaySubmit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.little(fontSize: 10)
        lb.font = UIFont.little(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: WoodPlayerManager? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = WoodPlayerManager()
        //: player.setMute(bEnable: false)
        player.setQuantity(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = ResourceEffectTool.default.butterflyEffect(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_indexValue)))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension QuantityUpView {
    /// 获取权限
    //: private func getServercePermission() {
    private func retrieveDown() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        KeyPermissionTool.modelBlock(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            KeyPermissionTool.awakeEqual(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = NameCallManager.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.methodName()
                        //: self.dismiss()
                        self.bull()
                        //: switch IndexStyleAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        switch IndexStyleAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            beyondPath()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            textTo()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.aboveAdd()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func tagUp() {
        //: switch IndexStyleAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch IndexStyleAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.nearTap(name: "icon_videocall_topView")
            topIcon.image = UIImage.nearTap(name: (String(str_resultTitle.suffix(6)) + "ideoca" + String(str_labelData.prefix(5)) + String(str_errorValue.prefix(5))))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(str_iconData)).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.nearTap(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.nearTap(name: (String(str_toData.suffix(6)) + "ideo" + str_tapQueryedText.replacingOccurrences(of: "make", with: "l") + "_initer" + String(str_giftCenterData.suffix(9))))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle("Free".localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func blackPlayer() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if NameCallManager.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.seedWithoutForefront(url: NameCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.underPause(urlStr: NameCallManager.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func methodName() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func aboveAdd() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        consLet_contentData.postEqual(eventID: consLet_bottomValue)
        //: initVideoCallTime()
        doDismiss()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard NameCallManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.noblesseExtra(showMsg: String(bytes: str_toName.map{cropNet(bar: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        NameCallManager.shared.fortView(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.userRead()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.userRead()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = ContextCallVc()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.userRead()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func areaSize(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        NameCallManager.shared.fortView(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func doDismiss() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        NameCallManager.shared.mix()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension QuantityUpView {
    //: @objc private func finishBtnClick() {
    @objc private func fulfillShould() {
        //: self.dismiss()
        self.bull()
        //: switch IndexStyleAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch IndexStyleAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            beyondPath()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            textTo()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            KeyPermissionTool.searchAndMicrophoneCell { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.aboveAdd()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func beyondPath() {
        //: initVideoCallTime()
        doDismiss()
        //: PostPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        PostPushManager.share.seeThroughEvent(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if userRead()?.isKind(of: EqualViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = userRead() as! EqualViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func textTo() {
        //: initVideoCallTime()
        doDismiss()
        //: PostPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        PostPushManager.share.markParams(appendParams: "&type=6")
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if userRead()?.isKind(of: EqualViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = userRead() as! EqualViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func delaySubmit() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        consLet_contentData.postEqual(eventID: consLet_partyData)
        //: initVideoCallTime()
        doDismiss()
        //: uploadRepord(type: 3)
        areaSize(type: 3)
        //: dismiss()
        bull()
    }

    //: func show() {
    func aboveHide() {
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
    @objc func bull() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        methodName()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension QuantityUpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func titleAppear() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func explain() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func serration() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        larvaColors(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: "#864EFF")!.cgColor, UIColor(hex: "#F79AFF")!.cgColor])
        //: self.getServercePermission()
        self.retrieveDown()
        //: self.seTypeView()
        self.tagUp()
        //: self.beginPlayer()
        self.blackPlayer()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: consLet_restoreText, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func larvaColors(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
