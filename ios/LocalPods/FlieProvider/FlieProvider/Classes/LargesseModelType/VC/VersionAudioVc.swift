
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_beginValue:[UInt8] = [0x4a,0x4f,0x4a,0x55,0x9,0x44,0x50,0x45,0x46,0x53,0x1b,0xa,0x1,0x49,0x42,0x54,0x1,0x4f,0x50,0x55,0x1,0x43,0x46,0x46,0x4f,0x1,0x4a,0x4e,0x51,0x4d,0x46,0x4e,0x46,0x4f,0x55,0x46,0x45]

fileprivate func pageGift(index num: UInt8) -> UInt8 {
    let value = Int(num) + 31
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Voice greeting" :*/
fileprivate let str_dayHiddenRightTitle:[Character] = ["V","o","i","c","e"," ","g"]
fileprivate let str_managerLastValue:String = "reedatang"

/*: "Add" :*/
fileprivate let str_topName:[Character] = ["A","d","d"]

/*: "type" :*/
fileprivate let str_centerSectionData:[Character] = ["t","y","p","e"]

/*: "addStatus" :*/
fileprivate let str_userDataValue:String = "addStheight except gift make count"

/*: "list" :*/
fileprivate let str_logImageData:[Character] = ["l","i","s","t"]

/*: "audio" :*/
fileprivate let str_valueTitle:String = "autoo"

/*: "length" :*/
fileprivate let str_atPageData:[Character] = ["l","e","n","g","t","h"]

/*: "url" :*/
fileprivate let str_sharedText:String = "uruser"

/*: "Successfully added, please wait for approval" :*/
fileprivate let str_errorValue:[UInt8] = [0xb1,0xd3,0xc1,0xc1,0xc3,0xd1,0xd1,0xc4,0xd3,0xca,0xca,0xd7,0x7e,0xbf,0xc2,0xc2,0xc3,0xc2,0x8a,0x7e,0xce,0xca,0xc3,0xbf,0xd1,0xc3,0x7e,0xd5,0xbf,0xc7,0xd2,0x7e,0xc4,0xcd,0xd0,0x7e,0xbf,0xce,0xce,0xd0,0xcd,0xd4,0xbf,0xca]

fileprivate func makeAdd(hidden num: UInt8) -> UInt8 {
    let value = Int(num) - 94
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Are you sure to delete this message？" :*/
fileprivate let str_momentData:[UInt8] = [0x5b,0x8c,0x7f,0x3a,0x93,0x89,0x8f,0x3a,0x8d,0x8f,0x8c,0x7f,0x3a,0x8e,0x89,0x3a,0x7e,0x7f,0x86,0x7f,0x8e,0x7f,0x3a,0x8e,0x82,0x83,0x8d,0x3a,0x87,0x7f,0x8d,0x8d,0x7b,0x81,0x7f,0x9,0xd6,0xb9]

fileprivate func keyBackground(stream num: UInt8) -> UInt8 {
    let value = Int(num) + 230
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_statusTitle:String = "Cancelheight gray greet"

/*: "Delete" :*/
fileprivate let str_appName:String = "none dismiss a placeDelet"
fileprivate let str_popData:String = "time"

/*: "id" :*/
fileprivate let str_makeStartContent:[Character] = ["i","d"]

/*: "Please wait for the audit result" :*/
fileprivate let str_roomColorData:[UInt8] = [0x74,0x6c,0x75,0x73,0x65,0x72,0x20,0x74,0x69,0x64,0x75,0x61,0x20,0x65,0x68,0x74,0x20,0x72,0x6f,0x66,0x20,0x74,0x69,0x61,0x77,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "The upper limit has been reached" :*/
fileprivate let str_prepareName:[UInt8] = [0xc6,0xfa,0xf7,0xb2,0xe7,0xe2,0xe2,0xf7,0xe0,0xb2,0xfe,0xfb,0xff,0xfb,0xe6,0xb2,0xfa,0xf3,0xe1,0xb2,0xf0,0xf7,0xf7,0xfc,0xb2,0xe0,0xf7,0xf3,0xf1,0xfa,0xf7,0xf6]

private func callTableContent(application num: UInt8) -> UInt8 {
    return num ^ 146
}

/*: "filePath" :*/
fileprivate let str_sortName:String = "filre"

/*: "time" :*/
fileprivate let str_voiceMakeSendValue:String = "nameime"

/*: "QualityReactiveCompatible" :*/
fileprivate let str_handleValue:[Character] = ["T","a","l","k","i","n","g","G","r","e","e","t","A","u"]
fileprivate let str_objectName:String = "dioCelltry self load shared"

/*: "#FF506D" :*/
fileprivate let str_toViewData:[Character] = ["#","F","F","5","0","6","D"]

/*: "btn_message_delete_nor" :*/
fileprivate let str_modelData:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e","t","e","_","n","o"]
fileprivate let str_equalContent:[Character] = ["r"]

/*: "Currently mute" :*/
fileprivate let str_reportTitle:String = "Currereason type case"
fileprivate let str_moreData:String = "ntly let of live image"

/*: "Edit Title" :*/
fileprivate let str_aspectValue:String = "Edit Titlself return"
fileprivate let str_rawValue:String = "E"

/*: "OK" :*/
fileprivate let str_objectData:String = "image"

/*: "remark" :*/
fileprivate let str_areaEqualValue:String = "recolorrk"

/*: "Click the button below to add\ncontent" :*/
fileprivate let str_arrayValue:[UInt8] = [0x36,0x19,0x1c,0x16,0x1e,0x55,0x1,0x1d,0x10,0x55,0x17,0x0,0x1,0x1,0x1a,0x1b,0x55,0x17,0x10,0x19,0x1a,0x2,0x55,0x1,0x1a,0x55,0x14,0x11,0x11,0x7f,0x16,0x1a,0x1b,0x1,0x10,0x1b,0x1]

private func textEqual(detail num: UInt8) -> UInt8 {
    return num ^ 117
}

/*: "Add multiple voice greetings, and the system will send voice messages by turns;\nClick the bubble to play the voice, slide to the voice area to delete it, and the voice title can be edited." :*/
fileprivate let str_indexTitle:[UInt8] = [0xd9,0xfc,0xfc,0xb8,0x5,0xd,0x4,0xc,0x1,0x8,0x4,0xfd,0xb8,0xe,0x7,0x1,0xfb,0xfd,0xb8,0xff,0xa,0xfd,0xfd,0xc,0x1,0x6,0xff,0xb,0xc4,0xb8,0xf9,0x6,0xfc,0xb8,0xc,0x0,0xfd,0xb8,0xb,0x11,0xb,0xc,0xfd,0x5,0xb8,0xf,0x1,0x4,0x4,0xb8,0xb,0xfd,0x6,0xfc,0xb8,0xe,0x7,0x1,0xfb,0xfd,0xb8,0x5,0xfd,0xb,0xb,0xf9,0xff,0xfd,0xb,0xb8,0xfa,0x11,0xb8,0xc,0xd,0xa,0x6,0xb,0xd3,0xa2,0xdb,0x4,0x1,0xfb,0x3,0xb8,0xc,0x0,0xfd,0xb8,0xfa,0xd,0xfa,0xfa,0x4,0xfd,0xb8,0xc,0x7,0xb8,0x8,0x4,0xf9,0x11,0xb8,0xc,0x0,0xfd,0xb8,0xe,0x7,0x1,0xfb,0xfd,0xc4,0xb8,0xb,0x4,0x1,0xfc,0xfd,0xb8,0xc,0x7,0xb8,0xc,0x0,0xfd,0xb8,0xe,0x7,0x1,0xfb,0xfd,0xb8,0xf9,0xa,0xfd,0xf9,0xb8,0xc,0x7,0xb8,0xfc,0xfd,0x4,0xfd,0xc,0xfd,0xb8,0x1,0xc,0xc4,0xb8,0xf9,0x6,0xfc,0xb8,0xc,0x0,0xfd,0xb8,0xe,0x7,0x1,0xfb,0xfd,0xb8,0xc,0x1,0xc,0x4,0xfd,0xb8,0xfb,0xf9,0x6,0xb8,0xfa,0xfd,0xb8,0xfd,0xfc,0x1,0xc,0xfd,0xfc,0xc6]

fileprivate func imaginationImage(min num: UInt8) -> UInt8 {
    let value = Int(num) - 152
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionAudioVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingGreetAudioVC: TalkingBaseViewController {
class VersionAudioVc: ServiceRecognizerDelegate {
    //: var addStatus = -1
    var addStatus = -1 // 1：可以添加；2：已有正在审核中得音频，不能添加；3：已有20条审核通过的音频，不能添加；4：已有20条审核通过的文字，不能添加；5：已有20条审核中或审核通过的图片，不能添加；
    //: var recordView: TalkingGreetRecordAudioView?
    var recordView: KeyRecordReactiveCompatible?
    //: var isPlaying = false
    var isPlaying = false
    //: var playIndex: IndexPath?
    var playIndex: IndexPath?
    //: var player: TalkingAudioPlayTool?
    var player: DataConverterPlayTool?
    //: var isMute = false
    var isMute = false
    //: var currenCell: TalkingGreetAudioCell?
    var currenCell: QualityReactiveCompatible?
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_beginValue.map{pageGift(index: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Voice greeting".localized
        self.title = (String(str_dayHiddenRightTitle) + str_managerLastValue.replacingOccurrences(of: "data", with: "ti")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: designView()
        mapOut()
        //: getAudioListData()
        differentialCost()
        //: setMutedDetection()
        number()
        //: NotificationCenter.default.addObserver(self, selector: #selector(cancelPlayerAudio(notification:)), name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ballplayer(notification:)), name: consLet_scaleData, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(interruptionChange(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(line(notification:)), name: AVAudioSession.interruptionNotification, object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stopPlay),
                                               selector: #selector(tipPlay),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: consLet_scaleData,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: if isPlaying {
        if isPlaying {
            //: self.player?.stopPlay()
            self.player?.mightHaveBeen()
        }
    }

    // MARK: - Lazy load

    //: private lazy var dataSourceArr: [TalkingGreetModel] = {
    private lazy var dataSourceArr: [JumpHandyJSON] = {
        //: var array = [TalkingGreetModel]()
        var array = [JumpHandyJSON]()
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-88), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName - 88), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var addButton: UIButton = {
    lazy var addButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Add".localized, for: .normal)
        btn.setTitle("Add".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 267, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(addButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addModel), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetAudioVC {
extension VersionAudioVc {
    //: func getAudioListData() {
    func differentialCost() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 1
        dict["type"] = 1
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        KeyReactiveCompatible.lineDoing(params: dict) { [weak self] succeed, result, _ in

            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if (self.MainTable.backgroundView == nil) {
            if self.MainTable.backgroundView == nil {
                //: self.setupEmptyDataView()
                self.channelView()
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.addStatus = dict["addStatus"] as! Int
                self.addStatus = dict[(String(str_userDataValue.prefix(5)) + "atus")] as! Int
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict["list"] as! [Any]
                //: var dataArr: [TalkingGreetModel] = []
                var dataArr: [JumpHandyJSON] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if let model = JSONDeserializer<TalkingGreetModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if let model = JSONDeserializer<JumpHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }
                //: self.player = nil
                self.player = nil
                //: self.dataSourceArr = dataArr
                self.dataSourceArr = dataArr
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func requestUploadAudioFileData(data: NSData, time: String) {
    func viewCancel(data: NSData, time: String) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 1
        dict["type"] = 1
        //: dict["audio"] = data
        dict["audio"] = data
        //: dict["length"] = Int(time)
        dict["length"] = Int(time)

        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) {[weak self] succeed, result, errorModel in
        KeyReactiveCompatible.setDown(params: dict) { [weak self] _, result, _ in

            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: guard let dict = result as? Dictionary<String, Any> else {
            guard let dict = result as? [String: Any] else {
                //: return
                return
            }
            //: let url: String = dict["url"] as! String
            let url: String = dict["url"] as! String
            //: if !url.isEmptyString {
            if !url.isEmptyString {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Successfully added, please wait for approval".localized)
                self.scaleMsg(showMsg: String(bytes: str_errorValue.map{makeAdd(hidden: $0)}, encoding: .utf8)!.localized)
                //: self.getAudioListData()
                self.differentialCost()
                //: self.recordView?.dismiss()
                self.recordView?.failure()
                //: self.recordView = nil
                self.recordView = nil
            }
        }
    }

    //: func shoWdeleteAlert(index: Int) {
    func queryed(index: Int) {
        //: let config = ShowAlertConfig()
        let config = ResourceAlertConfig()
        //: config.textFont = UIFont.loadEnable(type: .Medium, fontSize: 18)
        config.textFont = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: config.textlineBreakMode = .byCharWrapping
        config.textlineBreakMode = .byCharWrapping

        //: TalkingAlertShow.customAlert(message: "Are you sure to delete this message？".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized, leftBlock: {
        EqualAlertShow.pathFinish(message: String(bytes: str_momentData.map{keyBackground(stream: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: self.stopPlay()
            self.tipPlay()

            //: let model: TalkingGreetModel = self.dataSourceArr[index]
            let model: JumpHandyJSON = self.dataSourceArr[index]
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["id"] = model.greetId
            dict["id"] = model.greetId
            //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
            KeyReactiveCompatible.totalimateCellCompletionListenerView(params: dict) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: self.getAudioListData()
                self.differentialCost()
            }
            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Event

//: extension TalkingGreetAudioVC {
extension VersionAudioVc {
    //: @objc func cancelPlayerAudio(notification: NSNotification) -> Void {
    @objc func ballplayer(notification _: NSNotification) {
        //: stopPlay()
        tipPlay()
    }

    /// 播放过程中中断
    //: @objc func interruptionChange(notification: NSNotification) -> Void {
    @objc func line(notification: NSNotification) {
        //: let dic = notification.userInfo as![String: AnyObject]
        let dic = notification.userInfo as! [String: AnyObject]

        //: let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        //: if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
        if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
            //: stopPlay()
            tipPlay()
        }
    }

    //: @objc func addButtonClick() {
    @objc func addModel() {
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: return
            return
        }

        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        KeyPermissionTool.awakeEqual(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.noblesseExtra(showMsg: consLet_busySoundData)
                //: return
                return
            }
            //: if self.addStatus == 2 {
            if self.addStatus == 2 {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please wait for the audit result".localized)
                self.noblesseExtra(showMsg: String(bytes: str_roomColorData.reversed(), encoding: .utf8)!.localized)
                //: return
                return
                    //: }else if (self.addStatus == 3) {
            } else if self.addStatus == 3 {
                //: self.func__showStatusBarErrorMsg(showMsg: "The upper limit has been reached".localized)
                self.noblesseExtra(showMsg: String(bytes: str_prepareName.map{callTableContent(application: $0)}, encoding: .utf8)!.localized)
                //: return
                return
            }
            //: self.stopPlay()
            self.tipPlay()
            //: self.recordView = TalkingGreetRecordAudioView.init(frame: self.view.frame)
            self.recordView = KeyRecordReactiveCompatible(frame: self.view.frame)
            //: self.recordView?.show()
            self.recordView?.magnitudeDoingModel()
            //: self.recordView?.audioFileUpload = {[weak self] dict in
            self.recordView?.audioFileUpload = { [weak self] dict in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let data = NSData.init(contentsOfFile: dict["filePath"] as! String)
                let data = NSData(contentsOfFile: dict[(str_sortName.replacingOccurrences(of: "re", with: "e") + "Path")] as! String)
                //: guard data != nil else {
                guard data != nil else {
                    //: return
                    return
                }
                //: self.requestUploadAudioFileData(data: data!, time: dict["time"] as! String)
                self.viewCancel(data: data!, time: dict["time"] as! String)
            }
        }
    }
}

//: extension TalkingGreetAudioVC {
extension VersionAudioVc {
    //: func setMutedDetection() {
    func number() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        MagnitudeMuteThen.shared.spy()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        MagnitudeMuteThen.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetAudioVC: UITableViewDelegate, UITableViewDataSource {
extension VersionAudioVc: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: MainTable.backgroundView?.isHidden = dataSourceArr.count > 0
        MainTable.backgroundView?.isHidden = dataSourceArr.count > 0
        //: MainTable.bounces = dataSourceArr.count > 0
        MainTable.bounces = dataSourceArr.count > 0
        //: return dataSourceArr.count
        return dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 101
        return 101
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetAudioCell"
        let identifier = (String(str_handleValue) + String(str_objectName.prefix(7)))
        //: let cell: TalkingGreetAudioCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetAudioCell
        let cell: QualityReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! QualityReactiveCompatible

        //: cell.setGreetAudioCell(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count-1)
        cell.file(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count - 1)

        //: if isPlaying && playIndex?.row == indexPath.section {
        if isPlaying && playIndex?.row == indexPath.section {
            //: cell.syncPlayState(isPlaying: true)
            cell.atKey(isPlaying: true)
            //: }else {
        } else {
            //: cell.syncPlayState(isPlaying: false)
            cell.atKey(isPlaying: false)
        }

        //: cell.audioPlayActionBlock = { [weak self] in
        cell.audioPlayActionBlock = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: RBDMuteSwitch.shared.detectMuteSwitch()
            MagnitudeMuteThen.shared.spy()
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: self.playAudio(index: indexPath)
                self.titleCellEqual(index: indexPath)
            }
        }
        //: cell.editActionBlock = { [weak self] in
        cell.editActionBlock = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.stopPlay()
            self.tipPlay()
            //: self.editTitle(index: indexPath.section)
            self.block(index: indexPath.section)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    // ios11以前
    //: func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    func tableView(_: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //: let deleteBtn = UITableViewRowAction(style: .normal, title: "Delete".localized) { action, indexP in
        let deleteBtn = UITableViewRowAction(style: .normal, title: "Delete".localized) { _, _ in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.queryed(index: indexPath.section)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: "#FF506D")

        //: return [deleteBtn]
        return [deleteBtn]
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.queryed(index: indexPath.section)
            //: completionHandler(false)
            completionHandler(false)
        }

        //: if let deleteBtnTrashcan =  UIImage.nearTap(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.nearTap(name: (String(str_modelData) + String(str_equalContent))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = GiftTextThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = .white
        deleteBtn.backgroundColor = .white
        //: let actions = [deleteBtn]
        let actions = [deleteBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    //: func playAudio(index: IndexPath) {
    func titleCellEqual(index: IndexPath) {
        //: guard !TalkingSocketManager.shared.isTalking else {
        guard !JewishCalendarMonthThen.shared.isTalking else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: return
            return
        }
        //: if isPlaying && playIndex == index {
        if isPlaying && playIndex == index {
            //: isPlaying = false
            isPlaying = false
            //: MainTable.reloadData()
            MainTable.reloadData()
            //: self.player?.stopPlay()
            self.player?.mightHaveBeen()
            //: return
            return
        }
        //: if isPlaying {
        if isPlaying {
            //: currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? TalkingGreetAudioCell
            currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? QualityReactiveCompatible
            //: if currenCell != nil {
            if currenCell != nil {
                //: currenCell?.syncPlayState(isPlaying: false)
                currenCell?.atKey(isPlaying: false)
            }
        }

        //: playIndex = index
        playIndex = index
        //: let model = self.dataSourceArr[index.section]
        let model = self.dataSourceArr[index.section]

        //: if isMute || AVAudioSession.sharedInstance().outputVolume <= 0 {
        if isMute || AVAudioSession.sharedInstance().outputVolume <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Currently mute".localized)
            self.noblesseExtra(showMsg: (String(str_reportTitle.prefix(5)) + String(str_moreData.prefix(5)) + "mute").localized)
            //: return
            return
        }
        //: if self.player == nil {
        if self.player == nil {
            //: self.player = TalkingAudioPlayTool.shared
            self.player = DataConverterPlayTool.shared
            //: self.player?.delegate = self
            self.player?.delegate = self
        }
        //: self.player?.stopPlay()
        self.player?.mightHaveBeen()
        //: self.player?.play(urlStr: model.content)
        self.player?.makeButtonAdd(urlStr: model.content)
        //: isPlaying = true
        isPlaying = true
        //: currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? TalkingGreetAudioCell
        currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? QualityReactiveCompatible
        //: if currenCell != nil {
        if currenCell != nil {
            //: currenCell?.syncPlayState(isPlaying: true)
            currenCell?.atKey(isPlaying: true)
        }
    }

    //: func editTitle(index: Int) {
    func block(index: Int) {
        //: let view = TalkingEditAlertView.init(title: "Edit Title".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, config: nil)
        let view = EnableThen(title: (String(str_aspectValue.prefix(9)) + str_rawValue.lowercased()).localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, config: nil)
        //: view.show()
        view.tap()

        //: view.rightBlock = { [weak self] text in
        view.rightBlock = { [weak self] text in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: ProgressHUD.show()
            DeviceFailThen.callMake()

            //: var model: TalkingGreetModel = self.dataSourceArr[index]
            var model: JumpHandyJSON = self.dataSourceArr[index]
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["id"] = model.greetId
            dict["id"] = model.greetId
            //: dict["remark"] = text
            dict["remark"] = text

            //: TalkingMeRequestTool.req_UpdateAudioRemark(params: dict) { succeed, result, errorModel in
            KeyReactiveCompatible.tableTo(params: dict) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: if succeed {
                if succeed {
                    //: model.remark = text
                    model.remark = text
                    //: self.dataSourceArr[index] = model
                    self.dataSourceArr[index] = model
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                }
            }
        }
    }

    //: @objc func stopPlay() {
    @objc func tipPlay() {
        //: if isPlaying {
        if isPlaying {
            //: isPlaying = false
            isPlaying = false
            //: self.player?.stopPlay()
            self.player?.mightHaveBeen()
            //: if currenCell != nil {
            if currenCell != nil {
                //: currenCell?.syncPlayState(isPlaying: false)
                currenCell?.atKey(isPlaying: false)
            }
        }
    }
}

//: extension TalkingGreetAudioVC: TalkingAudioPlayToolDelegate {
extension VersionAudioVc: BaptiseThen {
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func isomerisation(status: PostHashable) {
        //: switch status {
        switch status {
        //: case .PlayerFinish:
        case .PlayerFinish:
            //: stopPlay()
            tipPlay()
        //: break
        //: case .PlayerInterruption:
        case .PlayerInterruption:
            //: stopPlay()
            tipPlay()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Layout

//: extension TalkingGreetAudioVC {
extension VersionAudioVc {
    //: private func setupEmptyDataView() {
    private func channelView() {
        //: var style = EmptyStyle()
        var style = HalfEmptyStyle()
        //: style.TipsTitle = "Click the button below to add\ncontent".localized
        style.TipsTitle = String(bytes: str_arrayValue.map{textEqual(detail: $0)}, encoding: .utf8)!.localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: emptyView.isScrollEnabled = false
        emptyView.isScrollEnabled = false
        //: emptyView.backgroundColor = .appBgColor()
        emptyView.backgroundColor = .primaryColorBarContent()
        //: MainTable.backgroundView = emptyView
        MainTable.backgroundView = emptyView

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }

    //: private func designView() {
    private func mapOut() {
        //: self.view.addSubview(addButton)
        self.view.addSubview(addButton)
        //: addButton.snp.makeConstraints { make in
        addButton.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-34)
            make.bottom.equalToSuperview().offset(-34)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 267, height: 50))
            make.size.equalTo(CGSize(width: 267, height: 50))
        }
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingGreetAudioCell.self, forCellReuseIdentifier: "TalkingGreetAudioCell")
        MainTable.register(QualityReactiveCompatible.self, forCellReuseIdentifier: (String(str_handleValue) + String(str_objectName.prefix(7))))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(addButton.snp.top).offset(-16)
            make.bottom.equalTo(addButton.snp.top).offset(-16)
        }
        //: MainTable.tableFooterView = UIView.init()
        MainTable.tableFooterView = UIView()

        //: let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 145))
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 145))
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.bringHomeColor()
        //: label.font = UIFont.exceptEqual(fontSize: 15)
        label.font = UIFont.exceptEqual(fontSize: 15)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let string = "Add multiple voice greetings, and the system will send voice messages by turns;\nClick the bubble to play the voice, slide to the voice area to delete it, and the voice title can be edited.".localized
        let string = String(bytes: str_indexTitle.map{imaginationImage(min: $0)}, encoding: .utf8)!.localized
        //: let attri = NSMutableAttributedString.init(string: string)
        let attri = NSMutableAttributedString(string: string)
        //: let style = NSMutableParagraphStyle.init()
        let style = NSMutableParagraphStyle()
        //: style.lineSpacing = 2
        style.lineSpacing = 2
        //: attri.yy_paragraphStyle = style
        attri.yy_paragraphStyle = style
        //: label.attributedText = attri
        label.attributedText = attri
        //: headerView.addSubview(label)
        headerView.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
        }
        //: MainTable.tableHeaderView = headerView
        MainTable.tableHeaderView = headerView
    }
}
