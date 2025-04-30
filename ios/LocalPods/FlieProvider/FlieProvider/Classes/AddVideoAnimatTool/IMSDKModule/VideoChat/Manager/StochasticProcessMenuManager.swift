
//: Declare String Begin

/*: "TalkingFemaleVIPCallIdsArrayKey_ :*/
fileprivate let str_bindTitle:[UInt8] = [0xd1,0xde,0xe9,0xe8,0xe6,0xeb,0xe4,0xc3,0xe2,0xea,0xde,0xe9,0xe2,0xd3,0xc6,0xcd,0xc0,0xde,0xe9,0xe9,0xc6,0xe1,0xf0,0xbe,0xef,0xef,0xde,0xf6,0xc8,0xe2,0xf6,0xdc]

fileprivate func hiddenModel(number num: UInt8) -> UInt8 {
    let value = Int(num) - 125
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHANGE_BEAN" :*/
fileprivate let str_infoNumberValue:[Character] = ["C","H","A","N","G","E"]
fileprivate let str_sendStyleNameTitle:[Character] = ["_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let str_reactionName:[UInt8] = [0x14,0x2f,0x37,0x3a,0x33,0x32,0xee,0x42,0x3d,0xee,0x35,0x33,0x42,0xee,0x43,0x41,0x33,0x40,0xee,0x37,0x3c,0x34,0x3d,0x40,0x3b,0x2f,0x42,0x37,0x3d,0x3c,0xfa,0xee,0x3e,0x3a,0x33,0x2f,0x41,0x33,0xee,0x40,0x33,0x42,0x43,0x40,0x3c,0xee,0x2f,0x3c,0x32,0xee,0x42,0x40,0x47,0xee,0x2f,0x35,0x2f,0x37,0x3c]

fileprivate func sexAddNet(view num: UInt8) -> UInt8 {
    let value = Int(num) + 50
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let str_sessionValue:String = "tytoe"

/*: "uid" :*/
fileprivate let str_imageName:String = "UID"

/*: "fromFreeCall" :*/
fileprivate let str_viewValue:[Character] = ["f","r","o","m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let str_requestEqualTitle:[UInt8] = [0x26,0x30,0x27]

fileprivate func nameHead(remaining num: UInt8) -> UInt8 {
    let value = Int(num) + 61
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "requestCall" :*/
fileprivate let str_tapName:[Character] = ["r","e","q","u","e","s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let str_clickData:[UInt8] = [0x35,0x30,0x25,0x30]

private func thoracicVertebra(area num: UInt8) -> UInt8 {
    return num ^ 81
}

/*: "onRequestCall" :*/
fileprivate let str_cellData:String = "let table stringonRe"
fileprivate let str_equalValue:String = "tCalgroup equal will size type"
fileprivate let str_labelTitle:[Character] = ["l"]

/*: "&type=3" :*/
fileprivate let str_iconName:String = "text empty&type=3"

/*: "&type=4" :*/
fileprivate let str_viewTitle:[Character] = ["&","t","y","p","e","=","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StochasticProcessMenuManager.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum HalfTransformable: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class StochasticProcessMenuManager: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "TalkingFemaleVIPCallIdsArrayKey_\(IndexStyleAppManager.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = String(bytes: str_bindTitle.map{hiddenModel(number: $0)}, encoding: .utf8)! + "\(IndexStyleAppManager.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        JewishCalendarMonthThen.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        JewishCalendarMonthThen.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension StochasticProcessMenuManager {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func singingVoiceCall(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = ValueLabelReactiveCompatible(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.giftPrice(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = HalfTransformable(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(str_infoNumberValue) + String(str_sendStyleNameTitle)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(str_infoNumberValue) + String(str_sendStyleNameTitle)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.noneUp(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            history(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func history(type: HalfTransformable) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.selectDoingComplection()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.ticktockAway()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func ticktockAway(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        KeyPermissionTool.awakeEqual(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.noblesseExtra(showMsg: consLet_busySoundData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            JewishCalendarMonthThen.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            JewishCalendarMonthThen.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.sortNow(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func selectDoingComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        KeyPermissionTool.searchAndMicrophoneCell { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.noblesseExtra(showMsg: consLet_busySoundData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            JewishCalendarMonthThen.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            JewishCalendarMonthThen.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.sortNow(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension StochasticProcessMenuManager {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func noneUp(type: HalfTransformable, vipPrompt: String) {
        //: guard IndexStyleAppManager.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard IndexStyleAppManager.share.loginUserMode.status == FailHashable.normal.rawValue else {
            //: self.requestCall(type: type)
            self.history(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = consLet_partyTitle.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.history(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        consLet_partyTitle.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = AtAlertView(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.history(type: type)
        }
        //: alert.show()
        alert.atAdd()
    }
}

// MARK: - QualityMatchDelegate, ViewObjectProtocol【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension StochasticProcessMenuManager: QualityMatchDelegate, ViewObjectProtocol {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func sortNow(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.noblesseExtra(showMsg: String(bytes: str_reactionName.map{sexAddNet(view: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = ["type": type, "uid": uid]
        //: let index = EnableFreeCallType.nor
        let index = SumHiddenSubscriptType.nor
        //: if IndexStyleAppManager.share.loginUserMode.freeCallTimes > 0 && IndexStyleAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if IndexStyleAppManager.share.loginUserMode.freeCallTimes > 0 && IndexStyleAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_viewValue)))
            //: TalkingSocketManager.shared.isFreeCall = true
            JewishCalendarMonthThen.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = ["cmd": (String(str_tapName)), "data": data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        JewishCalendarMonthThen.shared.objectInfo(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func subjugate(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData["uid"] = self.uid
        //: IndexStyleAppManager.share.start1v1TalkCall(info: newData)
        IndexStyleAppManager.share.componentView(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func sizeBy(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func realize(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_cellData.suffix(4)) + "ques" + String(str_equalValue.prefix(4)) + String(str_labelTitle)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.noblesseExtra(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == ResourceBlockDefaultsSerializable.MoneyLack.rawValue {
                //: let json = JSON(data)
                let json = JSON(data)
                //: var appendParams = "&type=3"
                var appendParams = "&type=3"
                //: if json["type"].intValue == 1 { // 音频
                if json["type"].intValue == 1 { // 音频
                    //: appendParams = "&type=4"
                    appendParams = "&type=4"
                }
                //: PostPushManager.share.func__pushToRechargeAlert(appendParams: appendParams)
                PostPushManager.share.everyReason(appendParams: appendParams)
            }
        }
    }
}
