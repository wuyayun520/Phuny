
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_mediumSocialName:[UInt8] = [0xac,0xb1,0xac,0xb7,0x6b,0xa6,0xb2,0xa7,0xa8,0xb5,0x7d,0x6c,0x63,0xab,0xa4,0xb6,0x63,0xb1,0xb2,0xb7,0x63,0xa5,0xa8,0xa8,0xb1,0x63,0xac,0xb0,0xb3,0xaf,0xa8,0xb0,0xa8,0xb1,0xb7,0xa8,0xa7]

fileprivate func acceptCoinUser(fail num: UInt8) -> UInt8 {
    let value = Int(num) - 67
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_video_minimize" :*/
fileprivate let str_hideData:String = "btn_if user share on"
fileprivate let str_textName:String = "o_miniinfo model natural make let"

/*: "btn_video_drop_nor" :*/
fileprivate let str_viewTitle:[Character] = ["b","t","n","_","v","i","d","e","o","_","d","r","o","p"]
fileprivate let str_fromName:String = "_norto case"

/*: "btn_video_turn_nor" :*/
fileprivate let str_contentBarValue:[Character] = ["b","t","n","_","v","i","d","e","o","_","t","u","r","n","_","n"]
fileprivate let str_collectionName:[Character] = ["o","r"]

/*: "btn_video_turn_pre" :*/
fileprivate let str_nameText:String = "btn_vcharacter var"
fileprivate let str_labelData:[Character] = ["n","_","p","r","e"]

/*: "Switch" :*/
fileprivate let str_countryData:[Character] = ["S","w","i","t","c","h"]

/*: "btn_video_start_nor" :*/
fileprivate let str_mainObjectText:[Character] = ["b","t","n","_","v","i","d","e","o","_","s","t","a","r","t","_"]
fileprivate let str_showName:[Character] = ["n","o","r"]

/*: "btn_video_start_pre" :*/
fileprivate let str_topValue:String = "section selfbtn_v"
fileprivate let str_addNameContent:String = "ideo_sclass self"

/*: "Camera On" :*/
fileprivate let str_sizeData:String = "net"
fileprivate let str_succeedHockeyValue:[Character] = ["a","m","e","r","a"," ","O","n"]

/*: "00:00" :*/
fileprivate let str_rangeData:String = "00:00"

/*: "Camera must be on" :*/
fileprivate let str_nearData:String = "Camedata else"
fileprivate let str_toName:String = "ust be user height group title"
fileprivate let str_bringContent:[Character] = ["o","n"]

/*: "Camera Off" :*/
fileprivate let str_birthText:String = "Camera else point video drag for"
fileprivate let str_topName:[Character] = ["O","f","f"]

/*: "%02i:%02i" :*/
fileprivate let str_actionData:[Character] = ["%","0","2","i",":"]
fileprivate let str_logName:[Character] = ["%","0","2","i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AllStyleThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class AllStyleThen: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: ColorObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = PastChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: PastChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        messageSubviews()
        //: setupSubViewsConstraint()
        element()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        sharedUp()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_mediumSocialName.map{acceptCoinUser(fail: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        toName()
        //: invalidateIdleTimer()
        invalidate()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beyondApp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_hideData.prefix(4)) + "vide" + String(str_textName.prefix(6)) + "mize")), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(valueImage), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_viewTitle) + String(str_fromName.prefix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modeWillData), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_contentBarValue) + String(str_collectionName))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_nameText.prefix(5)) + "ideo_tur" + String(str_labelData))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cellClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.exceptEqual(fontSize: 15)
        lab.font = UIFont.exceptEqual(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = "Switch".localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_mainObjectText) + String(str_showName))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_topValue.suffix(5)) + String(str_addNameContent.prefix(6)) + "tart_pre")), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addForClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.exceptEqual(fontSize: 15)
        lab.font = UIFont.exceptEqual(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (str_sizeData.replacingOccurrences(of: "net", with: "C") + String(str_succeedHockeyValue)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.little(fontSize: 18)
        lab.font = UIFont.little(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension AllStyleThen {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func sharedUp() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = "00:00"
        //: startTalkCount()
        sinceHead()
        //: touchHiddenTimer()
        lureTimer()
        //: updateLayout()
        firstEnd()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func valueImage() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.reverence()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func awakeView(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func modeWillData() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        consLet_contentData.postEqual(eventID: consLet_sinceValue)
        //: closeViewClick()
        withBind()
    }

    //: func closeViewClick() {
    func withBind() {
        //: self.destroryTimer()
        self.toName()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.doButtonContent()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func ofClick() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.tableThan()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func aftermathImage() {
        //: acceptButtonClick()
        ofClick()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        addForClick()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func stochasticClick() {
        //: acceptButtonClick()
        ofClick()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        addForClick()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func cellClick() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if consLet_matchData == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.noblesseExtra(showMsg: (String(str_nearData.prefix(4)) + "ra m" + String(str_toName.prefix(7)) + String(str_bringContent)).localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.rangeFront(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func addForClick() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(str_birthText.prefix(7)) + String(str_topName)).localized : (str_sizeData.replacingOccurrences(of: "net", with: "C") + String(str_succeedHockeyValue)).localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.perspective(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func beyondApp() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            invalidate()
            //: } else {
        } else {
            //: touchHiddenTimer()
            lureTimer()
        }
    }

    //: private func destroryTimer() {
    private func toName() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension AllStyleThen {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func sinceHead() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.withBind()
            }
            //: self.changeTalkTime()
            self.shiftTime()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func shiftTime() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension AllStyleThen {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func lureTimer() {
        //: invalidateIdleTimer()
        invalidate()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(tab), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func invalidate() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(tab), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func tab() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.beyondApp()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension AllStyleThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func messageSubviews() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func element() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(consLet_netViewValue + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-consLet_halfTitle - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(consLet_netViewValue + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func firstEnd() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-consLet_halfTitle - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
    }
}
