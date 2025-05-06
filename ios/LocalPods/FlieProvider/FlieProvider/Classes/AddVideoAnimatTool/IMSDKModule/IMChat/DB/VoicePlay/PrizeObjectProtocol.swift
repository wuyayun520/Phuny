
//: Declare String Begin

/*: ".wav" :*/
fileprivate let str_topName:String = ".wavwhite equal"

/*: "Documents/User/voice/" :*/
fileprivate let str_handleTitle:[Character] = ["D","o","c","u","m","e","n","t","s"]
fileprivate let str_femalePartyName:String = "type border appear import/User/v"
fileprivate let str_locationTitle:[Character] = ["o","i","c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let str_viewEqualValue:[Character] = ["D","o","c","u","m","e","n","t"]
fileprivate let str_labText:[Character] = ["s","/","U","s","e","r","/","r","e","c","o","r","d","/"]

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let str_infoText:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k"]
fileprivate let str_areaName:String = "day"
fileprivate let str_errorBackgroundTitle:String = "olistl"
fileprivate let str_toValue:String = "nimodelh"

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let str_playerName:String = "vomomentc"
fileprivate let str_backgroundName:String = "to cellTaskDown"
fileprivate let str_loadInfoValue:String = "signature in layer selfloadCa"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let str_videoIndicatorTitle:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o"]
fileprivate let str_makeValue:String = "WNLOA"
fileprivate let str_ofContent:String = "as case the make valuedExp"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let str_valueProfileTitle:[Character] = ["v","o","i","c","e"," ","d"]
fileprivate let str_addText:String = "equal else type onataTaskDo"
fileprivate let str_toTitle:[Character] = ["w","n","l","o","a","d","E","r","r","o"]

/*: "Play Error,File does not exist" :*/
fileprivate let str_fatalName:[Character] = ["P","l","a","y"," ","E"]
fileprivate let str_viewName:String = "rror,Fmessage enable bottom self if"
fileprivate let str_betweenTitle:String = "self container view image kitdoes n"

/*: "Play Error,File expired" :*/
fileprivate let str_giftRecordValue:[Character] = ["P","l","a","y"," ","E","r","r","o","r"]
fileprivate let str_appName:String = ",Filesuper content"
fileprivate let str_borderImageName:String = "todayed"

/*: "Play Error，Net error" :*/
fileprivate let str_replyText:[Character] = ["P","l","a","y"," ","E","r","r"]
fileprivate let str_regularMakeData:String = "true request let anyor，N"
fileprivate let str_viewPriceColorTitle:String = "dataor"

/*: "Currently in mute mode" :*/
fileprivate let str_contentGiftErrorName:String = "Curreself make user error"
fileprivate let str_textName:String = "var equalin mute"
fileprivate let str_countLabContent:[Character] = [" ","m","o","d","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrizeObjectProtocol.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum DevicePositionPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum LabelComparable: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class PrizeObjectProtocol: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = PrizeObjectProtocol()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [StartModelType] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: StartModelType] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: DevicePositionPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        viewAt()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func viewAt() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension PrizeObjectProtocol {
    //: func stopAudioPlayer() {
    func requestPosition() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func eventBy(playModel: StartModelType) {
        //: stopAudioPlayer()
        requestPosition()
        //: initialization()
        viewAt()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == NumberMirrorPath.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            enableTable(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = LogTaskModel.voxColor(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            GiftExpressReactiveCompatible.shared.userTasks([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func playDoing(msgArr: [StartModelType]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        requestPosition()
        //: initialization()
        viewAt()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [LogTaskModel] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: StartModelType?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = QualityMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = QualityMsgTable.ofRecord(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == IndexStyleAppManager.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == IndexStyleAppManager.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == NumberMirrorPath.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != NumberMirrorPath.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != NumberMirrorPath.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = LogTaskModel.voxColor(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            enableTable(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        GiftExpressReactiveCompatible.shared.userTasks(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func enableTable(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(str_handleTitle) + String(str_femalePartyName.suffix(7)) + String(str_locationTitle))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = consLet_limitPointText + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(str_viewEqualValue) + String(str_labText))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = consLet_errData + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            viewName(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: QualityMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        QualityMsgTable.overEndMsg(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        upwardsShared()
    }

    //: func addDaskManagerDelegate() {
    func addWithDelegate() {
        //: stopAudioPlayer()
        requestPosition()
        //: VoiceDownloadTaskManager.shared.delegate = self
        GiftExpressReactiveCompatible.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func pull() {
        //: stopAudioPlayer()
        requestPosition()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        GiftExpressReactiveCompatible.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension PrizeObjectProtocol: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = QualityMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = QualityMsgTable.ofRecord(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == NumberMirrorPath.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    enableTable(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == NumberMirrorPath.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.viewName(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == NumberMirrorPath.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.viewName(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == NumberMirrorPath.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                requestPosition()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - SequenceManagerDelegate

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension PrizeObjectProtocol: SequenceManagerDelegate {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func singingVoiceColorUp(model: LogTaskModel) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(str_infoText) + str_areaName.replacingOccurrences(of: "day", with: "D") + str_errorBackgroundTitle.replacingOccurrences(of: "list", with: "wn") + "oadFi" + str_toValue.replacingOccurrences(of: "model", with: "s")))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        detailTo(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func ingot(model: LogTaskModel) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (str_playerName.replacingOccurrences(of: "moment", with: "i") + "e data" + String(str_backgroundName.suffix(8)) + String(str_loadInfoValue.suffix(6)) + "ncel"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        detailTo(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func dataFrom(model: LogTaskModel) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(str_videoIndicatorTitle) + str_makeValue.lowercased() + String(str_ofContent.suffix(4)) + "ired"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        detailTo(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func firstMake(model _: LogTaskModel) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func voxLoadComputerSimulation(model: LogTaskModel) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(str_valueProfileTitle) + String(str_addText.suffix(9)) + String(str_toTitle)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        detailTo(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func detailTo(taskModel: LogTaskModel) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = QualityMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = QualityMsgTable.ofRecord(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == NumberMirrorPath.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                enableTable(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == NumberMirrorPath.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == NumberMirrorPath.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == NumberMirrorPath.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == NumberMirrorPath.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.viewName(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.viewName(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = QualityMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = QualityMsgTable.ofRecord(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func viewName(status: LabelComparable) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(str_fatalName) + String(str_viewName.prefix(6)) + "ile " + String(str_betweenTitle.suffix(6)) + "ot exist").localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(str_giftRecordValue) + String(str_appName.prefix(5)) + " exp" + str_borderImageName.replacingOccurrences(of: "today", with: "ir")).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(str_replyText) + String(str_regularMakeData.suffix(4)) + "et e" + str_viewPriceColorTitle.replacingOccurrences(of: "data", with: "rr")).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(str_contentGiftErrorName.prefix(5)) + "ntly " + String(str_textName.suffix(7)) + String(str_countLabContent)).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.noblesseExtra(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            requestPosition()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension PrizeObjectProtocol {
    //: func setMutedDetection() {
    func upwardsShared() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        MagnitudeMuteThen.shared.spy()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        MagnitudeMuteThen.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.viewName(status: .FirstMuteTip)
            }
        }
    }
}
