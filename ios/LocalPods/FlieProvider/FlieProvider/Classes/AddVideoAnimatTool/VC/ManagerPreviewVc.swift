
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toValue:[UInt8] = [0xe2,0xe7,0xe2,0xed,0xa1,0xdc,0xe8,0xdd,0xde,0xeb,0xb3,0xa2,0x99,0xe1,0xda,0xec,0x99,0xe7,0xe8,0xed,0x99,0xdb,0xde,0xde,0xe7,0x99,0xe2,0xe6,0xe9,0xe5,0xde,0xe6,0xde,0xe7,0xed,0xde,0xdd]

fileprivate func cellS(view num: UInt8) -> UInt8 {
    let value = Int(num) - 121
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "intimate_lock" :*/
fileprivate let str_centerBagName:String = "inborderimaborder"
fileprivate let str_modelTitle:String = "conversation"
fileprivate let str_priceValue:[Character] = ["_","l","o","c","k"]

/*: "Unlock" :*/
fileprivate let str_toText:String = "size lengthUnlock"

/*: "nav_back_black_nor" :*/
fileprivate let str_topValue:String = "nav_btext err gift first let"
fileprivate let str_viewText:String = "as selfck_nor"

/*: "toUid" :*/
fileprivate let str_messageSearchedData:String = "self self in pair calltoUid"

/*: "giftId" :*/
fileprivate let str_makeManagerValue:String = "data self bottomgiftId"

/*: "giftNum" :*/
fileprivate let str_inputSubValue:String = "bottom self in more selfgiftNum"

/*: "unlockMsgId" :*/
fileprivate let str_yearValue:String = "unlockMstool aspect data view to"
fileprivate let str_messageContent:[Character] = ["g","I","d"]

/*: "galleryId" :*/
fileprivate let str_userText:[Character] = ["g","a","l","l","e","r","y"]
fileprivate let str_layerName:[Character] = ["I","d"]

/*: "You will spend 1 chance to see the private photo, you have  :*/
fileprivate let str_indexText:[UInt8] = [0xd3,0xe5,0xff,0xaa,0xfd,0xe3,0xe6,0xe6,0xaa,0xf9,0xfa,0xef,0xe4,0xee,0xaa,0xbb,0xaa,0xe9,0xe2,0xeb,0xe4,0xe9,0xef,0xaa,0xfe,0xe5,0xaa,0xf9,0xef,0xef,0xaa,0xfe,0xe2,0xef,0xaa,0xfa,0xf8,0xe3,0xfc,0xeb,0xfe,0xef,0xaa,0xfa,0xe2,0xe5,0xfe,0xe5,0xa6,0xaa,0xf3,0xe5,0xff,0xaa,0xe2,0xeb,0xfc,0xef,0xaa]

/*:  chance left." :*/
fileprivate let str_progressValue:String = "m case effect turn chan"
fileprivate let str_backValue:[Character] = ["t","."]

/*: "icon_photo_lock" :*/
fileprivate let str_hiddenData:String = "icon_self equal"
fileprivate let str_pathLogCountData:[Character] = ["p","h","o","t","o","_","l","o","c","k"]

/*: "Click on the screen to view 15s" :*/
fileprivate let str_beginTitle:[UInt8] = [0x73,0x35,0x31,0x20,0x77,0x65,0x69,0x76,0x20,0x6f,0x74,0x20,0x6e,0x65,0x65,0x72,0x63,0x73,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6b,0x63,0x69,0x6c,0x43]

/*: "icon_photo_burn" :*/
fileprivate let str_makeColorText:String = "icon_pcell center self lab"
fileprivate let str_tailValue:[Character] = ["b","u","r","n"]

/*: "Already burned" :*/
fileprivate let str_layerValue:[Character] = ["A","l","r","e","a","d","y"," ","b","u","r"]
fileprivate let str_errorRemoveToText:String = "NED"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerPreviewVc.swift
//  AbroadTalking
//
//  Created by young on 2023/1/4.
//

//: import UIKit
import UIKit

//: typealias IntimatePhotoBlock = (_ model: OverrideModel) -> Void
typealias IntimatePhotoBlock = (_ model: OverrideModel) -> Void

//: class TalkingIntimatePhotoPreviewVC: TalkingBaseViewController {
class ManagerPreviewVc: ServiceRecognizerDelegate {
    //: var statusBlock: IntimatePhotoBlock?
    var statusBlock: IntimatePhotoBlock? // 同步状态block
    //: var sendGiftResultBlock: FinishBlock?
    var sendGiftResultBlock: FinishBlock? // 送礼结果block
    //: private var imageTotalData = TalkingManagerCollectionCellData(direction: .MsgDirectionOutgoing)
    private var imageTotalData = TalkingManagerCollectionCellData(direction: .MsgDirectionOutgoing) // 图片消息数据
    //: private var photoModel = OverrideModel()
    private var photoModel = OverrideModel() // 当前私密照片模型
    //: private var targetId = ""                                       // 私密照片发送方ID
    private var targetId = "" // 私密照片发送方ID
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer? // 倒计时
    //: private var isMySelf = false
    private var isMySelf = false // 是否本人

    //: private var previewNum = 0
    private var previewNum = 0 //  次数

    /// 初始化
    /// - Parameters:
    ///   - imageCellData: 图片模型
    ///   - toUid: 对方Id
    //: init(imageCellData: TalkingManagerCollectionCellData, toUid: String, preNum: Int) {
    init(imageCellData: TalkingManagerCollectionCellData, toUid: String, preNum: Int) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: imageTotalData = imageCellData
        imageTotalData = imageCellData
        //: previewNum = preNum
        previewNum = preNum
        //: photoModel = imageTotalData.msgModel.msgInfo.intimatePhoto
        photoModel = imageTotalData.msgModel.msgInfo.intimatePhoto // 引用类型，修改该数据，imageCellData会同步修改
        //: targetId = toUid
        targetId = toUid
        //: isMySelf = (imageTotalData.msgModel.user.uid == Int(IndexStyleAppManager.share.loginUserMode.userID))
        isMySelf = (imageTotalData.msgModel.user.uid == Int(IndexStyleAppManager.share.loginUserMode.userID))
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toValue.map{cellS(view: $0)}, encoding: .utf8)!)
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
        shroud()
        //: setupSubViewsConstraint()
        callAdd()
        //: refreshUI()
        statusVoice()
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
        //: destroyTimer()
        dataView()
    }

    // MARK: - Lazy Load

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
        img.image = UIImage.nearTap(name: (str_centerBagName.replacingOccurrences(of: "border", with: "t") + str_modelTitle.replacingOccurrences(of: "conversation", with: "e") + String(str_priceValue)))
        //: return img
        return img
        //: }()
    }()

//    private lazy var giftIcon: UIImageView = {
//        let img = UIImageView()
//        img.setUrlImage(urlStr: photoModel.giftIcon)
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
        btn.addTarget(self, action: #selector(equalAction), for: .touchUpInside)
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
        let img = UIImage.nearTap(name: (String(str_topValue.prefix(5)) + "ack_bla" + String(str_viewText.suffix(6)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(switchline), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingIntimatePhotoPreviewVC {
extension ManagerPreviewVc {
    /// 调用送礼接口
    /// - Parameters:
    ///   - giftId: 礼物Id
    ///   - giftNum: 礼物数量
    //: func req_sendGiftMsg(giftId: String, giftNum: String) {
    func withGift(giftId: String, giftNum: String) {
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
        //: params["unlockMsgId"] = self.imageTotalData.msgModel.msgInfo.msgId
        params[(String(str_yearValue.prefix(8)) + String(str_messageContent))] = self.imageTotalData.msgModel.msgInfo.msgId
        //: params["galleryId"] = self.photoModel.galleryId
        params[(String(str_userText) + String(str_layerName))] = self.photoModel.galleryId

        // 送礼接口
        //: TalkingChatRequestTool.req_SendGiftPrivete(param: params, completion: { succeed, result, errorModel in
        ChatMakeReactiveCompatible.lagniappeEqual(param: params, completion: { succeed, result, errorModel in
            //: if succeed {
            if succeed { // 送礼成功，更改私密照片状态为已解锁
                //: self.photoModel.lockStatus = 0
                self.photoModel.lockStatus = 0
                //: if self.statusBlock != nil {
                if self.statusBlock != nil {
                    //: self.statusBlock!(self.photoModel)
                    self.statusBlock!(self.photoModel)
                }

                // 刷新UI
                //: self.refreshUI()
                self.statusVoice()
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

//: extension TalkingIntimatePhotoPreviewVC {
extension ManagerPreviewVc {
    /// 返回按钮事件
    //: @objc private func backButtonClick() {
    @objc private func switchline() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 发送礼物解锁图片
    //: @objc private func giftSendButtonClick() {
    @objc private func equalAction() {
        //: req_sendGiftMsg(giftId: photoModel.giftId, giftNum: "1")
        withGift(giftId: photoModel.giftId, giftNum: "1")
    }

    /// 阅后即焚15s倒计时开始
    //: @objc private func burnPhotoTapGesture() {
    @objc private func shouldGesture() {
        //: guard IndexStyleAppManager.share.networkStatus != .Unavailable else {
        guard IndexStyleAppManager.share.networkStatus != .Unavailable else {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            noblesseExtra(showMsg: consLet_momentValue)
            //: return
            return
        }
        //: guard photoModel.burnStatus == 0 else { return }
        guard photoModel.burnStatus == 0 else { return }

        // 更新视图状态
        //: self.maskView.isHidden = true
        self.maskView.isHidden = true
        //: self.intimateStatusImgV.isHidden = true
        self.intimateStatusImgV.isHidden = true
        //: self.desLab.isHidden = true
        self.desLab.isHidden = true

        // 原图展示私密照片
        //: ProgressHUD.show(superView: self.view)
        DeviceFailThen.factorView(superView: self.view)
        //: self.loadIntimatePhoto(urlStr: photoModel.originUrl, isMosaic: false) {[weak self] isSucceed in
        self.closeAdd(urlStr: photoModel.originUrl, isMosaic: false) { [weak self] isSucceed in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard isSucceed else { return }
            guard isSucceed else { return }
            //: guard let self = self else { return }
            guard let self = self else { return }

            // 更改私密照片状态为已销毁
            //: self.photoModel.burnStatus = 1
            self.photoModel.burnStatus = 1
            //: if self.statusBlock != nil {
            if self.statusBlock != nil {
                //: self.statusBlock!(self.photoModel)
                self.statusBlock!(self.photoModel)
            }

            // 展示倒计时
            //: self.progressView.isHidden = false
            self.progressView.isHidden = false
            //: self.destroyTimer()
            self.dataView()
            //: var time = 150
            var time = 150
            //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] timer in
            self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard time > 0 else {
                guard time > 0 else { // 结束倒计时，刷新视图
                    //: self.destroyTimer()
                    self.dataView()
                    //: self.refreshUI()
                    self.statusVoice()
                    //: return
                    return
                }
                //: self.progressView.updateProgress(totalTime: 150, currTime: time)
                self.progressView.listTime(totalTime: 150, currTime: time)
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

    /// 销毁倒计时
    //: func destroyTimer() {
    func dataView() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }
}

// MARK: - Layout

//: extension TalkingIntimatePhotoPreviewVC {
extension ManagerPreviewVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func shroud() {
        //: self.view.addSubview(imageView)
        self.view.addSubview(imageView)
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
    private func callAdd() {
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

    /// 刷新UI
    //: private func refreshUI() {
    private func statusVoice() {
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

        //: var imgUrlStr = photoModel.originUrl
        var imgUrlStr = photoModel.originUrl // 默认原图
        //: var imgIsMosaic = true
        var imgIsMosaic = true // 是否需要马赛克

        //: if (photoModel.lockStatus == 1) {
        if photoModel.lockStatus == 1 { // 锁定状态，需要送礼解锁
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
//            self.desLab.text = "Need a %@ (%@ Gold coins) to unlock".localizedArguments(photoModel.giftName, photoModel.giftPrice)
            //: self.desLab.text = "You will spend 1 chance to see the private photo, you have \(self.previewNum) chance left."
            self.desLab.text = String(bytes: str_indexText.map{$0^138}, encoding: .utf8)! + "\(self.previewNum)" + (String(str_progressValue.suffix(5)) + "ce lef" + String(str_backValue))
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false
            //: self.giftBgView.isHidden = false
            self.giftBgView.isHidden = false
            //: if isMySelf == false {
            if isMySelf == false { // 不是本人
                //: self.giftSendBtn.isHidden = false
                self.giftSendBtn.isHidden = false
            }

            //: imgUrlStr = photoModel.previewUrl
            imgUrlStr = photoModel.previewUrl // 没送礼只能查看预览图

            //: } else if (photoModel.burnStatus == 0 || photoModel.burnStatus == 1) {
        } else if photoModel.burnStatus == 0 || photoModel.burnStatus == 1 { // 设置了阅后即焚，但还未销毁 || 已销毁
            //: self.maskView.isHidden = false
            self.maskView.isHidden = false
            //: self.intimateStatusImgV.isHidden = false
            self.intimateStatusImgV.isHidden = false
            //: self.desLab.isHidden = false
            self.desLab.isHidden = false

            //: if photoModel.burnStatus == 0 {
            if photoModel.burnStatus == 0 { // 未销毁
                //: self.intimateStatusImgV.image = UIImage.nearTap(name: "icon_photo_lock")
                self.intimateStatusImgV.image = UIImage.nearTap(name: (String(str_hiddenData.prefix(5)) + String(str_pathLogCountData)))
                //: self.desLab.text = "Click on the screen to view 15s".localized
                self.desLab.text = String(bytes: str_beginTitle.reversed(), encoding: .utf8)!.localized
                // 添加手势
                //: let tap = UITapGestureRecognizer(target: self, action: #selector(burnPhotoTapGesture))
                let tap = UITapGestureRecognizer(target: self, action: #selector(shouldGesture))
                //: self.maskView.addGestureRecognizer(tap)
                self.maskView.addGestureRecognizer(tap)

                //: } else {
            } else {
                //: self.intimateStatusImgV.image = UIImage.nearTap(name: "icon_photo_burn")
                self.intimateStatusImgV.image = UIImage.nearTap(name: (String(str_makeColorText.prefix(6)) + "hoto_" + String(str_tailValue)))
                //: self.desLab.text = "Already burned".localized
                self.desLab.text = (String(str_layerValue) + str_errorRemoveToText.lowercased()).localized
            }

            //: } else {
        } else {
            //: imgIsMosaic = false
            imgIsMosaic = false
        }

        // 加载私密照片
        //: self.loadIntimatePhoto(urlStr: imgUrlStr, isMosaic: imgIsMosaic)
        self.closeAdd(urlStr: imgUrlStr, isMosaic: imgIsMosaic)
    }

    /// 加载私密照片是否需要马赛克
    /// - Parameters:
    ///   - urlStr: 图片地址
    ///   - isMosaic: 是否需要马赛克
    ///   - completionHandler: 回调
    //: private func loadIntimatePhoto(urlStr: String, isMosaic: Bool, completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    private func closeAdd(urlStr: String, isMosaic: Bool, completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard isMySelf == false else {
        guard isMySelf == false else { // 本人发的图片，展示本地缓存资源
            //: var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: filePath = (filePath as NSString).appendingPathComponent(imageFileName)
            filePath = (filePath as NSString).appendingPathComponent(consLet_callTitle)
            //: filePath = (filePath as NSString).appendingPathComponent((imageTotalData.imageUrl! as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((imageTotalData.imageUrl! as NSString).lastPathComponent)
            //: let isExists = FileManager.default.fileExists(atPath: filePath)
            let isExists = FileManager.default.fileExists(atPath: filePath)
            //: guard isExists else {
            guard isExists else {
                //: if completionHandler != nil { completionHandler!(false) }
                if completionHandler != nil { completionHandler!(false) }
                //: return
                return
            }
            //: let data = NSData.init(contentsOfFile: filePath)
            let data = NSData(contentsOfFile: filePath)
            //: guard data != nil else {
            guard data != nil else {
                //: if completionHandler != nil { completionHandler!(false) }
                if completionHandler != nil { completionHandler!(false) }
                //: return
                return
            }

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

            //: if completionHandler != nil { completionHandler!(true) }
            if completionHandler != nil { completionHandler!(true) }

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
            //: if completionHandler != nil { completionHandler!((image != nil)) }
            if completionHandler != nil { completionHandler!(image != nil) }
        }
    }
}
