
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_beforeName:[UInt8] = [0xf6,0xf1,0xf6,0xeb,0xb7,0xfc,0xf0,0xfb,0xfa,0xed,0xa5,0xb6,0xbf,0xf7,0xfe,0xec,0xbf,0xf1,0xf0,0xeb,0xbf,0xfd,0xfa,0xfa,0xf1,0xbf,0xf6,0xf2,0xef,0xf3,0xfa,0xf2,0xfa,0xf1,0xeb,0xfa,0xfb]

/*: "intimate_lock" :*/
fileprivate let str_clickText:[Character] = ["i","n","t","i","m","a","t","e"]
fileprivate let str_collectionTitle:String = "_locksex content value add"

/*: "Unlock" :*/
fileprivate let str_equalSizeTitle:String = "content"
fileprivate let str_indexText:String = "nyearock"

/*: "nav_back_black_nor" :*/
fileprivate let str_userText:String = "auto mode custom color modelnav_b"
fileprivate let str_colorName:String = "ack_norblock image self in"

/*: "toUid" :*/
fileprivate let str_managerName:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let str_freeData:String = "user"
fileprivate let str_leadingName:[Character] = ["i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let str_wrapEqualName:String = "giftNumvar view"

/*: "unlockMsgId" :*/
fileprivate let str_labData:[Character] = ["u"]
fileprivate let str_dataName:[Character] = ["n","l","o","c","k","M","s","g","I","d"]

/*: "galleryId" :*/
fileprivate let str_deviceContent:[Character] = ["g","a","l","l"]
fileprivate let str_indexData:String = "eryIdlayer length"

/*: "Load failed, return to retry" :*/
fileprivate let str_willName:String = "head make cornerLoad"
fileprivate let str_playBlockContent:String = "ed, restyle if"
fileprivate let str_jumpData:String = " to retcontent result let view"
fileprivate let str_canData:[Character] = ["r","y"]

/*: "You will spend 1 chance to see the private video, you have  :*/
fileprivate let str_rangeTitle:[UInt8] = [0xd4,0xe2,0xf8,0xad,0xfa,0xe4,0xe1,0xe1,0xad,0xfe,0xfd,0xe8,0xe3,0xe9,0xad,0xbc,0xad,0xee,0xe5,0xec,0xe3,0xee,0xe8,0xad,0xf9,0xe2,0xad,0xfe,0xe8,0xe8,0xad,0xf9,0xe5,0xe8,0xad,0xfd,0xff,0xe4,0xfb,0xec,0xf9,0xe8,0xad,0xfb,0xe4,0xe9,0xe8,0xe2,0xa1,0xad,0xf4,0xe2,0xf8,0xad,0xe5,0xec,0xfb,0xe8,0xad]

private func pyeDog(line num: UInt8) -> UInt8 {
    return num ^ 141
}

/*:  chance left." :*/
fileprivate let str_equalText:String = "of if leading chanc"
fileprivate let str_hiddenPinValue:String = "of device kit letft."

/*: "icon_photo_lock" :*/
fileprivate let str_infoName:String = "icon_photfloat equal right fill view"
fileprivate let str_firstName:[Character] = ["o","_","l","o","c","k"]

/*: "Click on the screen to play this video(Burn After Reading)" :*/
fileprivate let str_makeImageName:[UInt8] = [0xf9,0xd6,0xd3,0xd9,0xd1,0x9a,0xd5,0xd4,0x9a,0xce,0xd2,0xdf,0x9a,0xc9,0xd9,0xc8,0xdf,0xdf,0xd4,0x9a,0xce,0xd5,0x9a,0xca,0xd6,0xdb,0xc3,0x9a,0xce,0xd2,0xd3,0xc9,0x9a,0xcc,0xd3,0xde,0xdf,0xd5,0x92,0xf8,0xcf,0xc8,0xd4,0x9a,0xfb,0xdc,0xce,0xdf,0xc8,0x9a,0xe8,0xdf,0xdb,0xde,0xd3,0xd4,0xdd,0x93]

private func contentGroup(empty num: UInt8) -> UInt8 {
    return num ^ 186
}

/*: "icon_photo_burn" :*/
fileprivate let str_addName:String = "effect"
fileprivate let str_hideTargetTagValue:String = "con_right kind let mode if"
fileprivate let str_quickData:String = "self label model self leto_burn"

/*: "Already burned" :*/
fileprivate let str_popData:[Character] = ["A","l","r","e","a","d","y"," ","b","u","r","n","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyObserverPreviewVc.swift
//  AbroadTalking
//
//  Created by young on 2023/2/15.
//

//: import UIKit
import UIKit

//: typealias IntimateVideoBlock = (_ model: ChiaroscuroModel) -> Void
typealias IntimateVideoBlock = (_ model: ChiaroscuroModel) -> Void
//: typealias VideoStatusBlock = (_ status: VideoPlayerStatus) -> Void
typealias VideoStatusBlock = (_ status: PositionPlayerStatus) -> Void

//: class TalkingIntimateVideoPreviewVC: TalkingBaseViewController {
class KeyObserverPreviewVc: ServiceRecognizerDelegate {
    //: var statusBlock: IntimateVideoBlock?
    var statusBlock: IntimateVideoBlock? // 同步状态block
    //: var sendGiftResultBlock: FinishBlock?
    var sendGiftResultBlock: FinishBlock? // 送礼结果block
    //: var videoStatusBlock: VideoStatusBlock?
    var videoStatusBlock: VideoStatusBlock? // 视频状态block【目前用在阅后即焚】
    //: private var videoTotalData = TalkingCellData(direction: .MsgDirectionIncoming)
    private var videoTotalData = TalkingCellData(direction: .MsgDirectionIncoming) // 视频消息数据
    //: private var videoModel = ChiaroscuroModel()
    private var videoModel = ChiaroscuroModel() // 当前私密视频模型
    //: private var targetId = ""                                       // 私密视频发送方ID
    private var targetId = "" // 私密视频发送方ID
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer? // 倒计时
    //: private var isMySelf = false
    private var isMySelf = false // 是否本人
    //: private var playDuraction = 0.0
    private var playDuraction = 0.0 // 视频播放位置
    //: private var previewNum = 0
    private var previewNum = 0 //  次数

    /// 初始化
    /// - Parameters:
    ///   - videoCellData: 视频模型
    ///   - toUid: 对方Id
    //: init(videoCellData: TalkingCellData, toUid: String, preNum: Int) {
    init(videoCellData: TalkingCellData, toUid: String, preNum: Int) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: videoTotalData = videoCellData
        videoTotalData = videoCellData
        //: previewNum = preNum
        previewNum = preNum
        //: videoModel = videoTotalData.msgModel.msgInfo.video
        videoModel = videoTotalData.msgModel.msgInfo.video // 引用类型，修改该数据，videoCellData会同步修改
        //: targetId = toUid
        targetId = toUid
        //: isMySelf = (videoTotalData.msgModel.user.uid == Int(IndexStyleAppManager.share.loginUserMode.userID))
        isMySelf = (videoTotalData.msgModel.user.uid == Int(IndexStyleAppManager.share.loginUserMode.userID))
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_beforeName.map{$0^159}, encoding: .utf8)!)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: popGesture(isOpen: true)
        pryUpwardTitle(isOpen: true)
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
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        term()
        //: setupSubViewsConstraint()
        chromaticColor()
        //: bindInteraction()
        wearerPosition()
        //: refreshUI()
        recordTo()
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if IndexStyleAppManager.share.appConfigMode.disableShootScreen {
            if IndexStyleAppManager.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-StatusBarNavigationBarHeight))
                let bgView = LabelReactiveCompatible(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName - consLet_tabValue))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: destroyTimer()
        noneLabShared()
        //: self.player?.stopPlay()
        self.player?.magnitudeeractionPlay()
        //: self.player = nil
        self.player = nil
    }

    // MARK: - Lazy Load

    // 封面
    //: private lazy var imageView: UIImageView = {
    private lazy var imageView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.backgroundColor = .black
        img.backgroundColor = .black
        //: img.contentMode = .scaleAspectFit
        img.contentMode = .scaleAspectFit
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    // 视频播放器容器
    //: private lazy var videoView: UIView = {
    private lazy var videoView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .black
        v.backgroundColor = .black
        //: return v
        return v
        //: }()
    }()

    // 视频播放器
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: WoodPlayerManager? = {
        //: let  player = TalkingVideoPlayerManager()
        let player = WoodPlayerManager()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: false)
        player.setQuantity(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    // 视频进度条
    //: private lazy var videoProgressView: TalkingVideoPlayerInteractionView = {
    private lazy var videoProgressView: ResourceThen = {
        //: let view = TalkingVideoPlayerInteractionView()
        let view = ResourceThen()
        //: view.toolBarView.isHidden = false
        view.toolBarView.isHidden = false
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var maskView: UIView = {
    private lazy var maskView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.init(white: 0, alpha: 0.5)
        v.backgroundColor = UIColor(white: 0, alpha: 0.5)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBgView: UIImageView = {
    private lazy var giftBgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "intimate_lock")
        img.image = UIImage.nearTap(name: (String(str_clickText) + String(str_collectionTitle.prefix(5))))
        //: return img
        return img
        //: }()
    }()

//    private lazy var giftIcon: UIImageView = {
//        let img = UIImageView()
//        img.setUrlImage(urlStr: videoModel.giftIcon)
//        return img
//    }()
    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.little(fontSize: 19)
        lab.font = UIFont.little(fontSize: 19)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftSendBtn: UIButton = {
    private lazy var giftSendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Unlock".localized, for: .normal)
        btn.setTitle("Unlock".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 19)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 19)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 220, height: 44)), for: .normal)
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(giftSendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(holdfastFirst), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var intimateStatusImgV: UIImageView = {
    private lazy var intimateStatusImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.alpha = 0.9
        img.alpha = 0.9
        //: return img
        return img
        //: }()
    }()

    //: private lazy var progressView: CircleCountdownView = {
    private lazy var progressView: PellucidityThen = {
        //: let frame = CGRect(x: ScreenWidth-42-15, y: StatusBarHeight+10, width: 42, height: 42)
        let frame = CGRect(x: consLet_errorDeviceHeightData - 42 - 15, y: consLet_netViewValue + 10, width: 42, height: 42)
        //: let v = CircleCountdownView(frame: frame)
        let v = PellucidityThen(frame: frame)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearTap(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearTap(name: (String(str_userText.suffix(5)) + "ack_bl" + String(str_colorName.prefix(7)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(backCell), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingIntimateVideoPreviewVC {
extension KeyObserverPreviewVc {
    /// 调用送礼接口
    /// - Parameters:
    ///   - giftId: 礼物Id
    ///   - giftNum: 礼物数量
    //: func req_sendGiftMsg(giftId: String, giftNum: String) {
    func skirt(giftId: String, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            noblesseExtra(showMsg: consLet_momentValue)
            //: return
            return
        }
        //: var params: Dictionary<String, Any> = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = self.targetId
        params["toUid"] = self.targetId
        //: params["giftId"] = giftId
        params["giftId"] = giftId
        //: params["giftNum"] = giftNum
        params["giftNum"] = giftNum
        //: params["unlockMsgId"] = self.videoTotalData.msgModel.msgInfo.msgId
        params[(String(str_labData) + String(str_dataName))] = self.videoTotalData.msgModel.msgInfo.msgId
        //: params["galleryId"] = self.videoModel.galleryId
        params[(String(str_deviceContent) + String(str_indexData.prefix(5)))] = self.videoModel.galleryId

        // 送礼接口
        //: TalkingChatRequestTool.req_SendGiftPrivete(param: params, completion: { succeed, result, errorModel in
        ChatMakeReactiveCompatible.lagniappeEqual(param: params, completion: { succeed, result, errorModel in
            //: if succeed {
            if succeed { // 送礼成功，更改私密视频状态为已解锁
                //: self.videoModel.lockStatus = 0
                self.videoModel.lockStatus = 0
                //: if self.statusBlock != nil {
                if self.statusBlock != nil {
                    //: self.statusBlock!(self.videoModel)
                    self.statusBlock!(self.videoModel)
                }

                // 刷新UI
                //: self.refreshUI()
                self.recordTo()
            }

            // 同步状态到私聊页面
            //: if self.sendGiftResultBlock != nil {
            if self.sendGiftResultBlock != nil {
                //: self.sendGiftResultBlock!(succeed, result, errorModel)
                self.sendGiftResultBlock!(succeed, result, errorModel)
            }
            //: })
        })
    }
}

// MARK: - Event

//: extension TalkingIntimateVideoPreviewVC {
extension KeyObserverPreviewVc {
    /// 返回按钮事件
    //: @objc private func backButtonClick() {
    @objc private func backCell() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 发送礼物解锁视频
    //: @objc private func giftSendButtonClick() {
    @objc private func holdfastFirst() {
        //: req_sendGiftMsg(giftId: videoModel.giftId, giftNum: "1")
        skirt(giftId: videoModel.giftId, giftNum: "1")
    }

    /// 阅后即焚15s倒计时开始
    //: @objc private func burnVideoTapGesture() {
    @objc private func nameData() {
        //: guard IndexStyleAppManager.share.networkStatus != .Unavailable else {
        guard IndexStyleAppManager.share.networkStatus != .Unavailable else {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            noblesseExtra(showMsg: consLet_momentValue)
            //: return
            return
        }
        //: guard videoModel.burnStatus == 0 else { return }
        guard videoModel.burnStatus == 0 else { return }

        // 1. 更新视图状态
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true
        //: self.videoView.isHidden = false
        self.videoView.isHidden = false

        // 2. 加载视频资源
        //: ProgressHUD.show(superView: self.view)
        DeviceFailThen.factorView(superView: self.view)
        //: self.videoStatusBlock = { [weak self] status in
        self.videoStatusBlock = { [weak self] status in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard self.videoModel.burnStatus == 0 else { return }
            guard self.videoModel.burnStatus == 0 else { return }

            // 3. 判断视频是否可播放
            //: guard status == .Playing else {
            guard status == .Playing else {
                //: if status == .Failed {
                if status == .Failed {
                    //: ProgressHUD.dismiss()
                    DeviceFailThen.theAdd()
                    //: self.videoProgressView.isHidden = true
                    self.videoProgressView.isHidden = true
                    //: self.func__showStatusBarErrorMsg(showMsg: "Load failed, return to retry".localized)
                    self.noblesseExtra(showMsg: (String(str_willName.suffix(4)) + " fail" + String(str_playBlockContent.prefix(6)) + "turn" + String(str_jumpData.prefix(7)) + String(str_canData)).localized)
                }
                //: return
                return
            }

            // 4. 可播放，更改状态
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: self.imageView.isHidden = true
            self.imageView.isHidden = true
            //: self.videoStatusBlock = nil
            self.videoStatusBlock = nil

            // 5. 更改私密视频状态为已销毁
            //: self.videoModel.burnStatus = 1
            self.videoModel.burnStatus = 1
            //: if self.statusBlock != nil {
            if self.statusBlock != nil {
                //: self.statusBlock!(self.videoModel)
                self.statusBlock!(self.videoModel)
            }

            // 6. 展示倒计时
            //: self.progressView.isHidden = false
            self.progressView.isHidden = false
            //: self.destroyTimer()
            self.noneLabShared()
            //: var time = 600
            var time = 600
            //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] timer in
            self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard time > 0 else {
                guard time > 0 else { // 结束倒计时，刷新视图
                    //: self.destroyTimer()
                    self.noneLabShared()
                    //: self.refreshUI()
                    self.recordTo()
                    //: return
                    return
                }
                //: self.progressView.updateProgress(totalTime: 600, currTime: time)
                self.progressView.listTime(totalTime: 600, currTime: time)
                //: time -= 1
                time -= 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.countdownTimer?.fire()
            self.countdownTimer?.fire()
            //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
            RunLoop.current.add(self.countdownTimer!, forMode: .common)
        }
        // 播放视频
        //: playVideo()
        outerSpace()
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func noneLabShared() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingIntimateVideoPreviewVC {
extension KeyObserverPreviewVc {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func sizeEqual() {
        //: self.player?.setMute(bEnable: true)
        self.player?.setQuantity(bEnable: true)
    }
}

// MARK: - 加载封面、视频

//: extension TalkingIntimateVideoPreviewVC {
extension KeyObserverPreviewVc {
    /// 加载私密视频封面是否需要马赛克
    /// - Parameters:
    ///   - urlStr: 图片地址
    ///   - isMosaic: 是否需要马赛克
    //: private func loadIntimatePhoto(urlStr: String, isMosaic: Bool) {
    private func loadThroughMosaic(urlStr: String, isMosaic: Bool) {
        //: guard isMySelf == false else {
        guard isMySelf == false else { // 本人发的图片，展示本地缓存资源
            //: let filePath = videoTotalData.msgModel.msgInfo.customSend.localCoverImg
            let filePath = videoTotalData.msgModel.msgInfo.customSend.localCoverImg
            //: let isExists = FileManager.default.fileExists(atPath: filePath)
            let isExists = FileManager.default.fileExists(atPath: filePath)
            //: guard isExists else { return }
            guard isExists else { return }
            //: let data = NSData.init(contentsOfFile: filePath)
            let data = NSData(contentsOfFile: filePath)
            //: guard data != nil else { return }
            guard data != nil else { return }
            //: let image = UIImage(data: data! as Data)
            let image = UIImage(data: data! as Data)
            //: if isMosaic {
            if isMosaic {
                //: self.imageView.image = UIImage.block(image, file: 90)
                self.imageView.image = UIImage.block(image, file: 90)
                //: } else {
            } else {
                //: self.imageView.image = image
                self.imageView.image = image
            }

            //: return
            return
        }

        // 对方发的图片，需要网络加载
        //: imageView.setCookieToUrlImage(urlStr: urlStr) {[weak self] image in
        imageView.setBlockClick(urlStr: urlStr) { [weak self] image in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if image != nil && isMosaic {
            if image != nil, isMosaic {
                //: self.imageView.image = UIImage.block(image, file: 90)
                self.imageView.image = UIImage.block(image, file: 90)
            }
        }
    }

    /// 播放视频
    //: private func playVideo() {
    private func outerSpace() {
        //: var videoPath = videoModel.videoUrl
        var videoPath = videoModel.videoUrl
        //: if isMySelf == true {
        if isMySelf == true { // 本人发的，优先使用本地视频
            //: let localPath = videoTotalData.msgModel.msgInfo.customSend.localVideoUrl
            let localPath = videoTotalData.msgModel.msgInfo.customSend.localVideoUrl
            //: if localPath.count > 0 && FileManager.default.fileExists(atPath: localPath) {
            if localPath.count > 0, FileManager.default.fileExists(atPath: localPath) {
                //: videoPath = localPath
                videoPath = localPath
            }
        }

        //: guard videoPath.count > 0 else {
        guard videoPath.count > 0 else {
            //: if self.videoStatusBlock != nil {
            if self.videoStatusBlock != nil {
                //: self.videoStatusBlock!(.Failed)
                self.videoStatusBlock!(.Failed)
            }
            //: return
            return
        }
        //: self.player?.playerWithUrlAndVideoView(url: videoPath, view: self.videoView)
        self.player?.seedWithoutForefront(url: videoPath, view: self.videoView)
    }
}

// MARK: - ContextReactiveCompatible, ContextViewDelegate

//: extension TalkingIntimateVideoPreviewVC: TalkingVideoPlayerDelegate, InteractionViewDelegate {
extension KeyObserverPreviewVc: ContextReactiveCompatible, ContextViewDelegate {
    // MARK: - ContextReactiveCompatible

    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func equalPublish(player _: WoodPlayerManager, status: PositionPlayerStatus) {
        //: self.videoProgressView.interactionStatus(status: status)
        self.videoProgressView.awardDrunkMoveThroughDignityStatus(status: status)
        //: if status == .Playing {
        if status == .Playing {
            //: self.player?.setRenderMode(renderMode: .FILL_EDGE)
            self.player?.pathMode(renderMode: .FILL_EDGE)
        }
        //: if self.videoStatusBlock != nil {
        if self.videoStatusBlock != nil {
            //: self.videoStatusBlock!(status)
            self.videoStatusBlock!(status)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func on(player _: WoodPlayerManager, duration: Int, currentTime: Int) {
        //: self.playDuraction = Double(duration)
        self.playDuraction = Double(duration)
        //: self.videoProgressView.updateProgressDurationAndCurrentTime(duration: duration, currentTime: currentTime)
        self.videoProgressView.currentEqual(duration: duration, currentTime: currentTime)
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func progressPromotionPlayerImage(player _: WoodPlayerManager, progress: CGFloat) {
        //: self.videoProgressView.updateProgress(value: progress)
        self.videoProgressView.swaddlingClothesData(value: progress)
    }

    // MARK: - ContextViewDelegate

    //: func func__interactionViewStatus(view: TalkingVideoPlayerInteractionView, status: InteractionViewStatus) {
    func finishDismiss(view _: ResourceThen, status: ShowViewStatus) {
        //: switch status {
        switch status {
        //: case .StartPlay:
        case .StartPlay:
            //: self.player?.resume()
            self.player?.magnitudeervalResume()
        //: break
        //: case .StopPlay:
        case .StopPlay:
            //: self.player?.pause()
            self.player?.voicePause()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: func func__interactionViewSlideValue(view: TalkingVideoPlayerInteractionView, value: CGFloat) {
    func contentSlideLab(view _: ResourceThen, value: CGFloat) {
        //: let dragedSeconds = floorf(Float(value * self.playDuraction))
        let dragedSeconds = floorf(Float(value * self.playDuraction))
        //: self.player?.seek(time: dragedSeconds)
        self.player?.instanceSize(time: dragedSeconds)
    }
}

// MARK: - Layout

//: extension TalkingIntimateVideoPreviewVC {
extension KeyObserverPreviewVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func term() {
        //: self.view.addSubview(videoView)
        self.view.addSubview(videoView)
        //: self.view.addSubview(imageView)
        self.view.addSubview(imageView)
        //: self.view.addSubview(videoProgressView)
        self.view.addSubview(videoProgressView)
        //: self.view.addSubview(maskView)
        self.view.addSubview(maskView)
        //: self.view.addSubview(desLab)
        self.view.addSubview(desLab)
        //: self.view.addSubview(giftBgView)
        self.view.addSubview(giftBgView)
//        giftBgView.addSubview(giftIcon)
        //: self.view.addSubview(giftSendBtn)
        self.view.addSubview(giftSendBtn)
        //: self.view.addSubview(intimateStatusImgV)
        self.view.addSubview(intimateStatusImgV)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func chromaticColor() {
        //: videoView.snp.makeConstraints { make in
        videoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: videoProgressView.snp.makeConstraints { make in
        videoProgressView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(StatusBarNavigationBarHeight+30)
            make.top.equalToSuperview().offset(consLet_tabValue + 30)
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight+64))
            make.bottom.equalToSuperview().offset(-(consLet_halfTitle + 64))
        }
        //: imageView.snp.makeConstraints { make in
        imageView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: maskView.snp.makeConstraints { make in
        maskView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.centerY.equalToSuperview().offset(StatusBarNavigationBarHeight/2)
            make.centerY.equalToSuperview().offset(consLet_tabValue / 2)
        }

        //: giftBgView.snp.makeConstraints { make in
        giftBgView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 85, height: 87))
            make.size.equalTo(CGSize(width: 85, height: 87))
            //: make.bottom.equalTo(desLab.snp.top).offset(-17)
            make.bottom.equalTo(desLab.snp.top).offset(-17)
        }
//        giftIcon.snp.makeConstraints { make in
//            make.leading.equalToSuperview().offset(35)
//            make.top.equalToSuperview().offset(28)
//            make.size.equalTo(CGSize(width: 80, height: 80))
//        }
        //: giftSendBtn.snp.makeConstraints { make in
        giftSendBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 44))
            make.size.equalTo(CGSize(width: 220, height: 44))
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(consLet_halfTitle + 10))
        }

        //: intimateStatusImgV.snp.makeConstraints { make in
        intimateStatusImgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(desLab.snp.top).offset(-20)
            make.bottom.equalTo(desLab.snp.top).offset(-20)
        }

        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(consLet_messageText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
        }

        //: progressView.snp.remakeConstraints { make in
        progressView.snp.remakeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-42-15)
            make.leading.equalTo(consLet_errorDeviceHeightData - 42 - 15)
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(consLet_netViewValue + 10)
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func wearerPosition() {
        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(sizeEqual),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: consLet_scaleData,
                                               //: object: nil)
                                               object: nil)
    }

    // 刷新视图
    //: private func refreshUI() {
    private func recordTo() {
        //: self.player?.stopPlay()
        self.player?.magnitudeeractionPlay()
        //: self.videoView.isHidden = true
        self.videoView.isHidden = true
        //: self.imageView.isHidden = true
        self.imageView.isHidden = true
        //: self.videoProgressView.isHidden = true
        self.videoProgressView.isHidden = true
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true
        //: self.giftBgView.isHidden = true
        self.giftBgView.isHidden = true
        //: self.giftSendBtn.isHidden = true
        self.giftSendBtn.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.progressView.isHidden = true
        self.progressView.isHidden = true

        //: if (videoModel.lockStatus == 1) {
        if videoModel.lockStatus == 1 { // 锁定状态，需要送礼解锁
            //: self.imageView.isHidden = false
            self.imageView.isHidden = false
            //: self.loadIntimatePhoto(urlStr: videoModel.coverImg, isMosaic: true)
            self.loadThroughMosaic(urlStr: videoModel.coverImg, isMosaic: true)
            //: self.videoProgressView.isHidden = false
            self.videoProgressView.isHidden = false
            //: self.videoProgressView.updateProgressDurationAndCurrentTime(duration: videoModel.duration, currentTime: 0)
            self.videoProgressView.currentEqual(duration: videoModel.duration, currentTime: 0)
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
//            self.desLab.text = "Need a %@ (%@ Gold coins) to unlock".localizedArguments(videoModel.giftName, videoModel.giftPrice)
            //: self.desLab.text = "You will spend 1 chance to see the private video, you have \(self.previewNum) chance left."
            self.desLab.text = String(bytes: str_rangeTitle.map{pyeDog(line: $0)}, encoding: .utf8)! + "\(self.previewNum)" + (String(str_equalText.suffix(6)) + "e le" + String(str_hiddenPinValue.suffix(3)))
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false
            //: self.giftBgView.isHidden = false
            self.giftBgView.isHidden = false
            //: if isMySelf == false {
            if isMySelf == false { // 不是本人
                //: self.giftSendBtn.isHidden = false
                self.giftSendBtn.isHidden = false
            }
            //: } else if (videoModel.burnStatus == 0 || videoModel.burnStatus == 1) {
        } else if videoModel.burnStatus == 0 || videoModel.burnStatus == 1 { // 设置了阅后即焚，但还未销毁 || 已销毁
            //: self.imageView.isHidden = false
            self.imageView.isHidden = false
            //: self.loadIntimatePhoto(urlStr: videoModel.coverImg, isMosaic: true)
            self.loadThroughMosaic(urlStr: videoModel.coverImg, isMosaic: true)
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
            //: self.intimateStatusImgV.isHidden = false
            self.intimateStatusImgV.isHidden = false
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false

            //: if videoModel.burnStatus == 0 {
            if videoModel.burnStatus == 0 { // 未销毁
                //: self.videoProgressView.isHidden = false
                self.videoProgressView.isHidden = false
                //: self.videoProgressView.updateProgressDurationAndCurrentTime(duration: videoModel.duration, currentTime: 0)
                self.videoProgressView.currentEqual(duration: videoModel.duration, currentTime: 0)
                //: self.intimateStatusImgV.image = UIImage.nearTap(name: "icon_photo_lock")
                self.intimateStatusImgV.image = UIImage.nearTap(name: (String(str_infoName.prefix(9)) + String(str_firstName)))
                //: self.desLab.text = "Click on the screen to play this video(Burn After Reading)".localized
                self.desLab.text = String(bytes: str_makeImageName.map{contentGroup(empty: $0)}, encoding: .utf8)!.localized
                // 添加手势
                //: let tap = UITapGestureRecognizer(target: self, action: #selector(burnVideoTapGesture))
                let tap = UITapGestureRecognizer(target: self, action: #selector(nameData))
                //: self.maskView.addGestureRecognizer(tap)
                self.maskView.addGestureRecognizer(tap)

                //: } else {
            } else {
                //: self.intimateStatusImgV.image = UIImage.nearTap(name: "icon_photo_burn")
                self.intimateStatusImgV.image = UIImage.nearTap(name: (str_addName.replacingOccurrences(of: "effect", with: "i") + String(str_hideTargetTagValue.prefix(4)) + "phot" + String(str_quickData.suffix(6))))
                //: self.desLab.text = "Already burned".localized
                self.desLab.text = (String(str_popData)).localized
            }

            //: } else {
        } else { // 已解锁的永久私密视频
            //: self.playVideo()
            self.outerSpace()
            //: self.videoView.isHidden = false
            self.videoView.isHidden = false
            //: self.videoProgressView.isHidden = false
            self.videoProgressView.isHidden = false
        }
    }
}
