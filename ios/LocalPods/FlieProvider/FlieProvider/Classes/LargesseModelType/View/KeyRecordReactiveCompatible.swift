
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_centerValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_recording" :*/
fileprivate let str_priceViewData:String = "true to else requestbtn_"
fileprivate let str_modelValue:[Character] = ["i","n","g"]

/*: "btn_marching" :*/
fileprivate let str_emptyToTitle:[Character] = ["b","t","n","_","m","a","r","c","h"]
fileprivate let str_titleName:String = "inrequest"

/*: "btn_upload" :*/
fileprivate let str_needValueTitle:String = "cardn"
fileprivate let str_equalValue:String = "_uploadshare return"

/*: "btn_audition" :*/
fileprivate let str_requestTitle:String = "false self varbtn_"
fileprivate let str_textValue:[Character] = ["n"]

/*: "Click to listen" :*/
fileprivate let str_nearLabData:String = "Click var click your"
fileprivate let str_labelTitle:String = "to lroom list"

/*: "Click to start recording" :*/
fileprivate let str_toData:String = "Clicbottom gift"
fileprivate let str_iconName:String = " start self hidden fail lab"
fileprivate let str_messageConversationValue:[Character] = ["r","e","c","o","r","d","i","n","g"]

/*: "00:00" :*/
fileprivate let str_popValue:String = "make:make"

/*: "brn_cycle" :*/
fileprivate let str_sessionName:[Character] = ["b"]
fileprivate let str_managerTitle:String = "rn_cycleheight on top height"

/*: "Come back" :*/
fileprivate let str_imageData:[Character] = ["C","o","m","e"," ","b","a"]
fileprivate let str_matchValue:[Character] = ["c","k"]

/*: "btn_submit" :*/
fileprivate let str_succeedValue:String = "self view edit modelbtn_sub"
fileprivate let str_youContent:String = "miinstance"

/*: "Submit" :*/
fileprivate let str_partyData:String = "Submiuser right manager"
fileprivate let str_listData:String = "color"

/*: "Click to finish recording" :*/
fileprivate let str_leadingName:String = "to shared view dataClick "
fileprivate let str_pushAspectValue:String = "click signish r"
fileprivate let str_toStandText:String = "centeror"

/*: "Under time" :*/
fileprivate let str_picValue:[Character] = ["U","n","d","e","r"," ","t","i"]
fileprivate let str_messageContent:[Character] = ["m","e"]

/*: "Click to pause" :*/
fileprivate let str_cardValue:String = "data else var layer equalClick t"
fileprivate let str_buttonContent:[Character] = ["o"," ","p","a","u","s","e"]

/*: "Click to play" :*/
fileprivate let str_pingFrameName:[Character] = ["C","l","i","c","k"," ","t","o"," "]
fileprivate let str_viewName:String = "plprogressy"

/*: "filePath" :*/
fileprivate let str_countContent:[UInt8] = [0xbe,0xb1,0xb4,0xbd,0x88,0xb9,0xac,0xb0]

/*: "time" :*/
fileprivate let str_packageTitle:[UInt8] = [0x1,0xf6,0xfa,0xf2]

fileprivate func tempName(view num: UInt8) -> UInt8 {
    let value = Int(num) - 141
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Recording cancelled" :*/
fileprivate let str_aspectMoveData:[Character] = ["R","e","c","o","r","d","i","n","g"," ","c","a","n","c","e","l","l"]
fileprivate let str_zonePromptName:[Character] = ["e","d"]

/*: "get json error" :*/
fileprivate let str_modelName:String = "color available height popget jso"
fileprivate let str_coverContent:[Character] = ["n"," "]
fileprivate let str_momentName:String = "playerror"

/*: "%02d:%02d" :*/
fileprivate let str_toName:[Character] = ["%","0","2","d",":","%","0","2","d"]

/*: "btn_delete" :*/
fileprivate let str_hideTitle:String = "btn_deadd name"

/*: "Add voice message" :*/
fileprivate let str_rawData:String = "self to topAdd v"
fileprivate let str_markSelectName:String = "frame"
fileprivate let str_viewText:String = "SSAGE"

/*: "Record a voice for 3-10s" :*/
fileprivate let str_labName:String = "Recorview type total white"
fileprivate let str_backgroundData:String = "voidate"
fileprivate let str_toIndexValue:String = "3-10sinfo true background in extension"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyRecordReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum HalfPriorityTarget: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum LastRelatableTarget: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class KeyRecordReactiveCompatible: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: LastRelatableTarget? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.anyCounteraction()
        //: self.setupSubViewsConstraint()
        self.standIn()
        //: self.bindInteraction()
        self.magnitudeeraction()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(primrosePath), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_centerValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_priceViewData.suffix(4)) + "record" + String(str_modelValue))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.nearTap(name: (String(str_priceViewData.suffix(4)) + "record" + String(str_modelValue))), for: .highlighted)
        //: btn.setImage(UIImage.nearTap(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_emptyToTitle) + str_titleName.replacingOccurrences(of: "request", with: "g"))), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = HalfPriorityTarget.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allIn(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (str_needValueTitle.replacingOccurrences(of: "card", with: "bt") + String(str_equalValue.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_requestTitle.suffix(4)) + "auditio" + String(str_textValue))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = HalfPriorityTarget.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allIn(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.text = "Click to listen".localized
        lb.text = (String(str_nearLabData.prefix(6)) + String(str_labelTitle.prefix(4)) + "isten").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 17)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 17)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(str_toData.prefix(4)) + "k to" + String(str_iconName.prefix(7)) + String(str_messageConversationValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.text = "00:00"
        lb.text = "00:00"
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_sessionName) + String(str_managerTitle.prefix(8)))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = HalfPriorityTarget.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allIn(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.text = "Come back".localized
        lb.text = (String(str_imageData) + String(str_matchValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_succeedValue.suffix(7)) + str_youContent.replacingOccurrences(of: "instance", with: "t"))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = HalfPriorityTarget.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allIn(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .bringHomeColor()
        //: lb.text = "Submit".localized
        lb.text = "Submit".localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: ViewRecorderDelegate? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = ViewRecorderDelegate.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension KeyRecordReactiveCompatible {
    //: func showUIViaState() {
    func ignoreLike() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func toView() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.query()
        //: stopPlay()
        windowAdd()
        //: self.audioTool?.destroy()
        self.audioTool?.equalitySum()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func mutualRecord() {
        //: leftRecordSVGAParser()
        makeText()
        //: rightRecordSVGAParser()
        collectionTo()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.atName()
        //: stopPlay()
        windowAdd()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(str_leadingName.suffix(6)) + "to fin" + String(str_pushAspectValue.suffix(5)) + str_toStandText.replacingOccurrences(of: "center", with: "ec") + "ding").localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func account() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.query()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            ignoreLike()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(str_nearLabData.prefix(6)) + String(str_labelTitle.prefix(4)) + "isten").localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(str_toData.prefix(4)) + "k to" + String(str_iconName.prefix(7)) + String(str_messageConversationValue)).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = "00:00"
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.noblesseExtra(showMsg: (String(str_picValue) + String(str_messageContent)).localized)
        }
    }

    //: func play() {
    func button() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.magnitudeimate()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(str_cardValue.suffix(7)) + String(str_buttonContent)).localized
            //: listenSVGAParser()
            upParser()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            color()
        }
    }

    //: func stopPlay() {
    func windowAdd() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.freeView()
        //: var text = "Click to play".localized
        var text = (String(str_pingFrameName) + str_viewName.replacingOccurrences(of: "progress", with: "a")).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(str_nearLabData.prefix(6)) + String(str_labelTitle.prefix(4)) + "isten").localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func info() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.freeView()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_toData.prefix(4)) + "k to" + String(str_iconName.prefix(7)) + String(str_messageConversationValue)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = "00:00"

        //: showUIViaState()
        ignoreLike()
    }

    //: func finish() {
    func design() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.freeView()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(str_nearLabData.prefix(6)) + String(str_labelTitle.prefix(4)) + "isten").localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: str_countContent.map{$0^216}, encoding: .utf8)!: self.filePath, "time": (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func color() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            noblesseExtra(showMsg: consLet_momentValue)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(str_cardValue.suffix(7)) + String(str_buttonContent)).localized
        //: listenSVGAParser()
        upParser()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func allIn(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case HalfPriorityTarget.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            KeyPermissionTool.awakeEqual(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.noblesseExtra(showMsg: consLet_busySoundData)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isTalking else {
                    guard !JewishCalendarMonthThen.shared.isTalking else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.noblesseExtra(showMsg: consLet_viewData)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.mutualRecord()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.account()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case HalfPriorityTarget.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.button()
                //: }else {
            } else {
                //: self.stopPlay()
                self.windowAdd()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case HalfPriorityTarget.Reset.rawValue:
            //: reset()
            info()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case HalfPriorityTarget.Finish.rawValue:
            //: finish()
            design()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func motility() {
        //: stopPlay()
        windowAdd()
        //: dismiss()
        failure()
    }

    //: @objc func appDidEnterBack() {
    @objc func primrosePath() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.noblesseExtra(showMsg: (String(str_aspectMoveData) + String(str_zonePromptName)))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.query()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_toData.prefix(4)) + "k to" + String(str_iconName.prefix(7)) + String(str_messageConversationValue)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = "00:00"
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        ignoreLike()
    }

    //: func show() {
    func magnitudeDoingModel() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
    }

    //: func dismiss() {
    func failure() {
        //: releaseSoundView()
        toView()
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func upParser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = ResourceEffectTool.default.butterflyEffect(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_modelName.suffix(7)) + String(str_coverContent) + str_momentName.replacingOccurrences(of: "player", with: "er")))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func makeText() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = ResourceEffectTool.default.butterflyEffect(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_modelName.suffix(7)) + String(str_coverContent) + str_momentName.replacingOccurrences(of: "player", with: "er")))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func collectionTo() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = ResourceEffectTool.default.butterflyEffect(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_modelName.suffix(7)) + String(str_coverContent) + str_momentName.replacingOccurrences(of: "player", with: "er")))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension KeyRecordReactiveCompatible: RoomToolDelegate {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func picture(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            account()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func execute(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func viewEqualShared(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        account()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func lowStatus(status: PostHashable) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.motilityPlay()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(str_nearLabData.prefix(6)) + String(str_labelTitle.prefix(4)) + "isten").localized : (String(str_pingFrameName) + str_viewName.replacingOccurrences(of: "progress", with: "a")).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(str_nearLabData.prefix(6)) + String(str_labelTitle.prefix(4)) + "isten").localized : (String(str_pingFrameName) + str_viewName.replacingOccurrences(of: "progress", with: "a")).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension KeyRecordReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func anyCounteraction() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func standIn() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.nearTap(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.nearTap(name: (String(str_hideTitle.prefix(6)) + "lete")), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(motility), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.loadEnable(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.loadEnable(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .appTitleColor()
        titleLb.textColor = .appNameVisualProperty()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(str_rawData.suffix(5)) + "oice m" + str_markSelectName.replacingOccurrences(of: "frame", with: "e") + str_viewText.lowercased()).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.loadEnable(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.loadEnable(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .appValueDetailColor()
        explainLb.textColor = .bringHomeColor()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(str_labName.prefix(5)) + "d a " + str_backgroundData.replacingOccurrences(of: "date", with: "c") + "e for " + String(str_toIndexValue.prefix(5))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func magnitudeeraction() {
        //: showUIViaState()
        ignoreLike()
    }
}
