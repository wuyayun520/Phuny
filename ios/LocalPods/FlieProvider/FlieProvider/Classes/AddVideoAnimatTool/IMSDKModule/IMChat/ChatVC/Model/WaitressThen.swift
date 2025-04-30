
//: Declare String Begin

/*: "TalkingIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let str_backCellName:[UInt8] = [0x2c,0x19,0x14,0x13,0x11,0x16,0x1f,0x31,0x16,0xc,0x11,0x15,0x19,0xc,0x1d,0x28,0x10,0x17,0xc,0x17,0x2d,0x16,0x14,0x17,0x1b,0x13,0x35,0xb,0x1f,0x31,0x1c,0x39,0xa,0xa,0x19,0x1,0x33,0x1d,0x1]

private func nameInfo(tap num: UInt8) -> UInt8 {
    return num ^ 120
}

/*: "TalkingPrivateChatVideoTipsIsShow_ :*/
fileprivate let str_textData:[UInt8] = [0x8c,0xb9,0xb4,0xb3,0xb1,0xb6,0xbf,0x88,0xaa,0xb1,0xae,0xb9,0xac,0xbd,0x9b,0xb0,0xb9,0xac,0x8e,0xb1,0xbc,0xbd,0xb7,0x8c,0xb1,0xa8,0xab,0x91,0xab,0x8b,0xb0,0xb7,0xaf,0x87]

private func matchView(live num: UInt8) -> UInt8 {
    return num ^ 216
}

/*: _ :*/
fileprivate let str_tagName:String = "_"

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let str_directionFileStartName:[UInt8] = [0x65,0x63,0x6e,0x6f,0x20,0x6d,0x69,0x68,0x20,0x6f,0x74,0x20,0x74,0x6e,0x65,0x73,0x20,0x65,0x62,0x20,0x79,0x6c,0x6e,0x6f,0x20,0x6e,0x61,0x63,0x20,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6b,0x63,0x69,0x75,0x51]

/*: "txt" :*/
fileprivate let str_viewText:[Character] = ["t","x","t"]

/*: "audio" :*/
fileprivate let str_styleData:String = "audeviceo"

/*: "Please add greeting text" :*/
fileprivate let str_pageName:String = "room menu if self viewPlease"
fileprivate let str_topValue:String = " add gmode with make"
fileprivate let str_labValue:String = "reetsize"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let str_busyName:[UInt8] = [0x96,0xac,0xb2,0x5d,0xa5,0x9e,0xb3,0xa2,0x5d,0xab,0xac,0xb1,0x5d,0xb0,0xa2,0xb1,0x5d,0xb2,0xad,0x5d,0x9e,0x5d,0xad,0xa5,0xac,0xb1,0xac,0x5d,0xa4,0xaf,0xa2,0xa2,0xb1,0xa6,0xab,0xa4,0x69,0x5d,0xad,0xa9,0xa2,0x9e,0xb0,0xa2,0x5d,0xb0,0xa2,0xb1,0x5d,0xa6,0xb1,0x5d,0xb2,0xad,0x5d,0x9f,0xa2,0xa3,0xac,0xaf,0xa2,0x5d,0xb0,0xa2,0xab,0xa1,0xa6,0xab,0xa4,0x5e]

fileprivate func makeFrame(except num: UInt8) -> UInt8 {
    let value = Int(num) - 61
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_viewErrorTitle:String = "Canceview photo gift if"
fileprivate let str_pairValue:String = "hold"

/*: "Go to set" :*/
fileprivate let str_playerBlockValue:String = "make user render seat sizeGo to"

/*: "#startTime#" :*/
fileprivate let str_buttonData:[Character] = ["#","s","t","a","r","t"]
fileprivate let str_userValue:[Character] = ["T","i","m","e","#"]

/*: "#endTime#" :*/
fileprivate let str_screenName:String = "value nor type#endT"
fileprivate let str_toName:String = "error leading menu selfime#"

/*: "text" :*/
fileprivate let str_countBlockName:String = "liveexlive"

/*: "img" :*/
fileprivate let str_dataName:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let str_beginData:String = "vipositioneo"

/*: "gift" :*/
fileprivate let str_modeData:String = "gvideot"

/*: "map" :*/
fileprivate let str_borderData:String = "mimagep"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let str_titleData:[Character] = ["P","r","i","v","a","t","e","C","h","a","t"," "]
fileprivate let str_indexModelTitle:[Character] = ["点","击","\u{5f15}","用","消","息"]

/*: ." :*/
fileprivate let str_backgroundValue:[Character] = ["."]

/*: "Sent " :*/
fileprivate let str_columnLabelText:String = "false toSent "

/*: " x :*/
fileprivate let str_tapName:[Character] = [" ","x"]

/*: "&type= :*/
fileprivate let str_modelName:String = "regular"
fileprivate let str_hiddenData:String = "status private string equaltype="

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WaitressThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class WaitressThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = WaitressThen()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "TalkingIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: str_backCellName.map{nameInfo(tap: $0)}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func sharedWithHandler(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue else { return }
        // 男性
        //: guard IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "TalkingPrivateChatVideoTipsIsShow_\(String(IndexStyleAppManager.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: str_textData.map{matchView(live: $0)}, encoding: .utf8)! + "\(String(IndexStyleAppManager.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = consLet_partyTitle.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TUIMessageCellData
            let indexModel = indexModel as? TUIMessageCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: BackgroundLabelCellData.self) {
                if indexModel!.isKind(of: BackgroundLabelCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! BackgroundLabelCellData
                    let textMsgModel = indexModel as! BackgroundLabelCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: ClearCellData.self) ||
                if indexModel!.isKind(of: ClearCellData.self) ||
                    //: indexModel!.isKind(of: BackgroundLabelCellData.self) ||
                    indexModel!.isKind(of: BackgroundLabelCellData.self) ||
                    //: indexModel!.isKind(of: TalkingManagerCollectionCellData.self) ||
                    indexModel!.isKind(of: TalkingManagerCollectionCellData.self) ||
                    //: indexModel!.isKind(of: TalkingCellData.self) {
                    indexModel!.isKind(of: TalkingCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            consLet_partyTitle.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            consLet_partyTitle.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func todayRequest(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(IndexStyleAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(IndexStyleAppManager.share.loginUserMode.userID)_\(consLet_cancelStorageValue)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: str_directionFileStartName.reversed(), encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingChatRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        ChatMakeReactiveCompatible.turnAround { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !IndexStyleAppManager.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !IndexStyleAppManager.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    QuantityWindowManager.shared.sectionIntervalimate()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict["txt"] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict["audio"] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(str_pageName.suffix(6)) + String(str_topValue.prefix(6)) + str_labValue.replacingOccurrences(of: "size", with: "i") + "ng text").localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            month(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func month(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(IndexStyleAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(IndexStyleAppManager.share.loginUserMode.userID)_\(consLet_cancelStorageValue)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func fireside(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingChatRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        ChatMakeReactiveCompatible.mixIn(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = ResourceAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                EqualAlertShow.pathFinish(message: String(bytes: str_busyName.map{makeFrame(except: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !IndexStyleAppManager.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !IndexStyleAppManager.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                QuantityWindowManager.shared.sectionIntervalimate()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func tiptoe(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard IndexStyleAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard IndexStyleAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: IndexStyleAppManager.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.dateAddStr(shDateStr: IndexStyleAppManager.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: IndexStyleAppManager.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.dateAddStr(shDateStr: IndexStyleAppManager.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.startBy(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = IndexStyleAppManager.share.appConfigMode.CSConfig.systemTips
        var tips = IndexStyleAppManager.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(str_buttonData) + String(str_userValue)), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
    static func direction(cellData: TUIMessageCellData, msgView: TUIMessageController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = consLet_partyTitle.object(forKey: WaitressThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: TalkingManagerCollectionCellData.self) ||
                  cellData.isKind(of: TalkingManagerCollectionCellData.self) ||
                  //: cellData.isKind(of: TalkingCellData.self)) else { return }
                  cellData.isKind(of: TalkingCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                quantityimate(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                consLet_partyTitle.set(array, forKey: WaitressThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: CellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: CellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TUIMessageCellData
            let data = msgCellData as! TUIMessageCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                quantityimate(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
    private static func quantityimate(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
        //: if cellData.isKind(of: TalkingManagerCollectionCellData.self) {
        if cellData.isKind(of: TalkingManagerCollectionCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: TalkingCellData.self) {
        } else if cellData.isKind(of: TalkingCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func roomFlush(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
        //: guard IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard CountensityViewController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        CountensityViewController.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func messageNeedEqualInstanceTypePresentReplySplit(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
        //: guard IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard CountensityViewController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard WaitressThen.nameSay(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func nameSay(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TUIMessageCellData) -> Bool {
    static func addData(cellData: TUIMessageCellData) -> Bool {
        //: if IndexStyleAppManager.share.loginUserMode.loungePlus == false,
        if IndexStyleAppManager.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TUIMessageCellData) -> Bool {
    static func heritage(cellData: TUIMessageCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if IndexStyleAppManager.share.loginUserMode.loungePlus == true,
        if IndexStyleAppManager.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TUIMessageCellData) -> Bool {
    static func isometrical(cellData: TUIMessageCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = WaitressThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TUIMessageCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func alongCurrentId(cellData: TUIMessageCellData, targetId: String) -> DeviceJsonModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = DeviceJsonModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = IndexStyleAppManager.share.loginUserMode.userID
            quoteModel.uid = IndexStyleAppManager.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = ManagerJsonModel()
        //: if cellData.isKind(of: BackgroundLabelCellData.self) {
        if cellData.isKind(of: BackgroundLabelCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = "text"
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: TalkingManagerCollectionCellData.self) {
        } else if cellData.isKind(of: TalkingManagerCollectionCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = "img"
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: TalkingCellData.self) {
        } else if cellData.isKind(of: TalkingCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = "video"
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: ClearCellData.self) {
        } else if cellData.isKind(of: ClearCellData.self) {
            //: let audioCelldata = cellData as! ClearCellData
            let audioCelldata = cellData as! ClearCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = "audio"
            //: let voiceCache = AddInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = AddInfoManager.mapStream(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: CellData.self) {
        } else if cellData.isKind(of: CellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = "gift"
            //: let giftCellData = cellData as! CellData
            let giftCellData = cellData as! CellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            //: }else if cellData.isKind(of: HiddenCellData.self) {
        } else if cellData.isKind(of: HiddenCellData.self) {
            //: quoteModel.renderType = "map"
            quoteModel.renderType = "map"
            //: renderData.latlon = cellData.msgModel.msgInfo.latlon
            renderData.latlon = cellData.msgModel.msgInfo.latlon
        }
        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TUIMessageCellData, targetId: String) {
    static func handleNameReference(cellData: TUIMessageCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: EqualLogTool.writeDoing(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        EqualLogTool.writeDoing(msg: (String(str_titleData) + String(str_indexModelTitle)) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == "text" {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = TitlePopView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.mortalPath()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == "img" {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(consLet_callTitle)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = MakeModelType()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = TextTransformable()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [MakeModelType] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = DevicePhotosVc(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            WaitressThen.share.uphold()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == "video" {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = JewishCalendarMonthViewController(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            WaitressThen.share.uphold()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == "audio" {
            //: let cacheWrap = QualityMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = QualityMsgTable.ofRecord(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = StartModelType()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = QualityMsgTable()
                let model = QualityMsgTable()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == IndexStyleAppManager.share.loginUserMode.userID {
                if renderData.uid == IndexStyleAppManager.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = IndexStyleAppManager.share.loginUserMode.userID
                    model.db_touid = IndexStyleAppManager.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: QualityMsgTable.db_insertVoiceMsg(model)
                QualityMsgTable.callPlayMove(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            PrizeObjectProtocol.shared.requestPosition()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            PrizeObjectProtocol.shared.eventBy(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == "gift" {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = TitlePopView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = "Sent ".localized + renderData.renderData.giftLocal() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.mortalPath()
            //: } else if renderData.renderType == "map" {
        } else if renderData.renderType == "map" {
            //: let location = TalkingMapView(frame: CGRect.zero, isSelf: (cellData.direction == .MsgDirectionOutgoing), latlon: renderData.renderData.latlon)
            let location = EventSwitchlyMapView(frame: CGRect.zero, isSelf: cellData.direction == .MsgDirectionOutgoing, latlon: renderData.renderData.latlon)
            //: location.show()
            location.roundShow()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension WaitressThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func videoUserVersionShortRangeQueryGift(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }

    /// 检测用户是否可以直接进入预览界面

    //: static func checkCanPreview(isImg: Bool, needAlert:Bool) -> Int {
    static func titleAlert(isImg: Bool, needAlert: Bool) -> Int {
        //: let modelArr = IndexStyleAppManager.share.loginUserMode.residualInfo.filter { model in
        let modelArr = IndexStyleAppManager.share.loginUserMode.residualInfo.filter { model in
            //: model.type == (isImg ? 1 : 2)
            model.type == (isImg ? 1 : 2)
        }

        //: if let model = modelArr[safe: 0], model.num > 0 {
        if let model = modelArr[safe: 0], model.num > 0 {
            //: return model.num
            return model.num
        }

        //: if needAlert {
        if needAlert {
            //: if IndexStyleAppManager.share.loginUserMode.loungePlus {
            if IndexStyleAppManager.share.loginUserMode.loungePlus {
                //: PostPushManager.share.func__pushToRechargeAlert(appendParams: "&type=\((isImg ? 1 : 2))")
                PostPushManager.share.everyReason(appendParams: "&type=\(isImg ? 1 : 2)")
                //: }else{
            } else {
                //: PostPushManager.share.func__pushToSubscribeAlert()
                PostPushManager.share.markParams()
            }
        }

        //: return 0
        return 0
    }
}
