
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let str_reachLabData:[Character] = [" ","c","u","s","t","o","m","E","l","e","m",".","d","a","t"]
fileprivate let str_deviceValue:String = "a is enormal pull app menu"

/*: "extra" :*/
fileprivate let str_layerData:[Character] = ["e","x","t","r","a"]

/*: "MF:PartyChatSysMsg" :*/
fileprivate let str_sameValue:String = "MF:Partyfalse cell gift var to"
fileprivate let str_birthTitle:String = "ChatStime data var"

/*: "opType" :*/
fileprivate let str_appContent:[Character] = ["o"]
fileprivate let str_controlViewData:[Character] = ["p","T","y","p","e"]

/*: "roomLogout" :*/
fileprivate let str_digitTitle:String = "rooon"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_modeName:String = "manager selfMF:Par"
fileprivate let str_viewValue:String = "atWelMsgneed a var"

/*: "startLive" :*/
fileprivate let str_addReasonValue:String = "stoarto"

/*: "floatingScreen" :*/
fileprivate let str_attachText:[UInt8] = [0x6e,0x65,0x65,0x72,0x63,0x53,0x67,0x6e,0x69,0x74,0x61,0x6f,0x6c,0x66]

/*: "mute" :*/
fileprivate let str_addTitle:[Character] = ["m","u","t","e"]

/*: "uid" :*/
fileprivate let str_onName:[Character] = ["u","i","d"]

/*: "expireAt" :*/
fileprivate let str_turnName:[Character] = ["e","x","p"]
fileprivate let str_headTitle:[Character] = ["i","r","e","A","t"]

/*: "unmute" :*/
fileprivate let str_liveData:[Character] = ["u","n","m","u","t","e"]

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_makeContent:String = "leading equalMF:Liv"
fileprivate let str_viewData:String = "table piceChatG"
fileprivate let str_makeData:String = "var menu contentiftMsg"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let str_momentTitle:String = "MF:Papath color frame user cover"
fileprivate let str_resultData:[Character] = ["r","t","y"]
fileprivate let str_definePathName:String = "ChatGself true show anima let"

/*: "gift" :*/
fileprivate let str_dateValueExtraName:[Character] = ["g","i","f","t"]

/*: "id" :*/
fileprivate let str_sizeText:String = "ifinish"

/*: "imgPreview" :*/
fileprivate let str_progressPartyModelValue:String = "imgPrevicustom session"
fileprivate let str_beginToTitle:[Character] = ["e","w"]

/*: "name" :*/
fileprivate let str_topTitle:[Character] = ["n","a","m","e"]

/*: "num" :*/
fileprivate let str_labelData:String = "NUM"

/*: "mfBean" :*/
fileprivate let str_equalData:[UInt8] = [0xa4,0xaf,0x8b,0xac,0xa8,0xa7]

private func letModelSecret(list num: UInt8) -> UInt8 {
    return num ^ 201
}

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_employmentName:String = "MF:Livuser request else name sex"
fileprivate let str_tapName:String = "eChaheight normal"
fileprivate let str_managerText:String = "to dataeMsg"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_quoteSourceValue:[Character] = ["<","a","t",">","@","[","\\","S","\\"]
fileprivate let str_smallPlayerValue:String = "s]+?</at>return equal let equal"

/*: "加入弹幕房间" :*/
fileprivate let str_imageArrayThroughName:[Character] = ["加","入","弹","幕","房","间"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_priceManagerValue:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "live/sendMsg" :*/
fileprivate let str_hiddenTitle:[Character] = ["l","i","v","e","/","s"]
fileprivate let str_recordCancelData:String = "key"
fileprivate let str_thanData:String = "ndMsgview make table tag lab"

/*: "groupId" :*/
fileprivate let str_makeValue:[Character] = ["g","r","o","u","p","I","d"]

/*: "message" :*/
fileprivate let str_viaValue:String = "feedessage"

/*: "toUid" :*/
fileprivate let str_pendingName:String = "hidden model to viewtoUid"

/*: "party/sendMsg" :*/
fileprivate let str_labText:[Character] = ["p","a","r","t","y","/","s","e","n"]
fileprivate let str_acceptOfData:String = "dMsgany top load color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol QualityManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func dismissAwake(Msg: StoreHandyJSON)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func inputMsg(Msg: StoreHandyJSON)

    //: func func__actionUserNewModel(pushUid: String?)
    func barBy(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func produce(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func magnitudeLogin()
    // 用户退出房间
    //: func func__userLogout()
    func messageLogout()
}

//: class TalkingDanmuManager: NSObject {
class VersionThen: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: VersionThen? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: QualityManagerDelegate?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func clickLoad() -> VersionThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = VersionThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension VersionThen {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func announcement(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = StoreHandyJSON()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = MakeHandyJSON()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = UncertainnessReactiveCompatible()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.equalTime(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.dismissAwake(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func danmuClick(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_reachLabData) + String(str_deviceValue.prefix(6)) + "rror"))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?["extra"] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(str_sameValue.prefix(8)) + String(str_birthTitle.prefix(5)) + "ysMsg"), extraDic?["opType"] as? String == (str_digitTitle.replacingOccurrences(of: "on", with: "m") + "Logout") { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.messageLogout()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(str_modeName.suffix(6)) + "tyCh" + String(str_viewValue.prefix(8))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.magnitudeLogin()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?["opType"], opType as? String == (str_addReasonValue.replacingOccurrences(of: "to", with: "t") + "Live") {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: consLet_clickName, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?["opType"], opType as? String == String(bytes: str_attachText.reversed(), encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: str_attachText.reversed(), encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: consLet_changeContent, object: nil, userInfo: [String(bytes: str_attachText.reversed(), encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?["uid"] as? Int {
                //: if IndexStyleAppManager.share.loginUserMode.userID == "\(uid)" {
                if IndexStyleAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(str_sameValue.prefix(8)) + String(str_birthTitle.prefix(5)) + "ysMsg") { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        EqualSendReactiveCompatible.clout().partyModel.muteExpireAt = extraDic?[(String(str_turnName) + String(str_headTitle))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        DecisionMakerReactiveCompatible.barIn().liveRoomModel.muteExpireAt = extraDic?[(String(str_turnName) + String(str_headTitle))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?["uid"] as? Int {
                //: if IndexStyleAppManager.share.loginUserMode.userID == "\(uid)" {
                if IndexStyleAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if IndexStyleAppManager.share.loginUserMode.userID == "\(uid)" {
                    if IndexStyleAppManager.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(str_sameValue.prefix(8)) + String(str_birthTitle.prefix(5)) + "ysMsg") { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            EqualSendReactiveCompatible.clout().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            DecisionMakerReactiveCompatible.barIn().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = StoreHandyJSON.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(str_makeContent.suffix(6)) + String(str_viewData.suffix(6)) + String(str_makeData.suffix(6))) || model.MsgExtension == (String(str_momentTitle.prefix(5)) + String(str_resultData) + String(str_definePathName.prefix(5)) + "iftMsg") {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(str_progressPartyModelValue.prefix(8)) + String(str_beginToTitle))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?["name"] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if DecisionMakerReactiveCompatible.barIn().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if DecisionMakerReactiveCompatible.barIn().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        AddVideoAnimatTool.shared.upwardlyDic(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.inputMsg(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if EqualSendReactiveCompatible.clout().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if EqualSendReactiveCompatible.clout().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        AddVideoAnimatTool.shared.upwardlyDic(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.inputMsg(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: consLet_callValue, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: consLet_netTitle) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.thrust(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.thrust(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue, model.MsgExtension == (String(str_employmentName.prefix(6)) + String(str_tapName.prefix(4)) + "tPriz" + String(str_managerText.suffix(4))) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            thrust(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func thrust(danmuModel: StoreHandyJSON) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = UncertainnessReactiveCompatible()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.offPrice(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.barBy(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != IndexStyleAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != IndexStyleAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.produce(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.dismissAwake(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension VersionThen {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func enterSave() {
        //: if TalkingDanmuManager._instance != nil {
        if VersionThen._instance != nil {
            //: TalkingDanmuManager._instance = nil
            VersionThen._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func join(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: "加入弹幕房间")
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                VersionThen.clickLoad().announcement(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if VersionThen.clickLoad().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                VersionThen.clickLoad().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                join(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                VersionThen.clickLoad().noblesseExtra(showMsg: String(bytes: str_priceManagerValue.reversed(), encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func popTagCell(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension VersionThen {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func roomFromCompletion(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(str_hiddenTitle) + str_recordCancelData.replacingOccurrences(of: "key", with: "e") + String(str_thanData.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict["groupId"] = groupId
        //: dict["message"] = message
        dict["message"] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict["toUid"] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func messageBy(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(str_labText) + String(str_acceptOfData.prefix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict["groupId"] = groupId
        //: dict["message"] = message
        dict["message"] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict["toUid"] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
