
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let str_sizeData:[Character] = ["u","n","a","r","c","h","i","v","e"," ","f","a","i","l","u"]
fileprivate let str_creationValue:String = "button viewre i"

/*: "App" :*/
fileprivate let str_interactionValue:[Character] = ["A","p","p"]

/*: "privateChatEffect%@" :*/
fileprivate let str_ofValue:[Character] = ["p","r","i","v","a"]
fileprivate let str_rowCountervalName:[Character] = ["t","e","C","h","a","t","E","f","f","e","c","t","%","@"]

/*: "extra" :*/
fileprivate let str_clickData:String = "exdevicera"

/*: "user" :*/
fileprivate let str_operateData:String = "useshow"

/*: "%@" :*/
fileprivate let str_giftTitle:[Character] = ["%","@"]

/*: "id" :*/
fileprivate let str_imageDateData:String = "list"

/*: "gift" :*/
fileprivate let str_makeTitle:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let str_noteItemViewContent:String = "fromUidcoin pillow text answer"

/*: "fromNickname" :*/
fileprivate let str_equalText:[Character] = ["f","r","o","m","N","i","c"]
fileprivate let str_titleData:String = "knambe"

/*: "name" :*/
fileprivate let str_modelLocationText:[Character] = ["n","a","m","e"]

/*: "fromHeadPic" :*/
fileprivate let str_managerName:String = "button behind to data leadingfromHe"
fileprivate let str_colorResultName:String = "log"

/*: "icon" :*/
fileprivate let str_statusTitle:[Character] = ["i","c","o","n"]

/*: "pid" :*/
fileprivate let str_cellData:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let str_tableTitle:String = "addm"

/*: "pname" :*/
fileprivate let str_frameValueMakeName:[Character] = ["p","n","a","m","e"]

/*: "giftPic" :*/
fileprivate let str_partyValue:String = "request"
fileprivate let str_errorData:[Character] = ["i","f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let str_labelToTitle:String = "CO"
fileprivate let str_dataMakeValue:[Character] = ["m","b","o","N","u","m"]

/*: "iosEffect" :*/
fileprivate let str_packageHideContent:[Character] = ["i","o","s","E","f"]
fileprivate let str_signData:[Character] = ["f","e","c","t"]

/*: "showType" :*/
fileprivate let str_addData:[Character] = ["s","h","o","w","T","y"]
fileprivate let str_moveText:String = "frame"

/*: "animationTimes" :*/
fileprivate let str_timeVideoName:String = "anmodelat"

/*: "iosVapEffect" :*/
fileprivate let str_imageValue:String = "gap size sharediosV"
fileprivate let str_centerData:String = "CT"

/*: "msgInfo" :*/
fileprivate let str_roomViewTitle:String = "msgInsize add key of"
fileprivate let str_nameValue:String = "index"

/*: "mfBean" :*/
fileprivate let str_progressContent:[UInt8] = [0xfc,0xf7,0xd3,0xf4,0xf0,0xff]

private func frontSumerval(view num: UInt8) -> UInt8 {
    return num ^ 145
}

/*: "toUser" :*/
fileprivate let str_withValue:[Character] = ["t","o","U","s","e","r"]

/*: "uid" :*/
fileprivate let str_menuFavoriteData:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let str_styleData:[Character] = ["g"]
fileprivate let str_equalName:String = "iftNumtitle state record view data"

/*: "nickname" :*/
fileprivate let str_itemContent:String = "nindicatorckn"
fileprivate let str_videoText:[Character] = ["a","m","e"]

/*: "Send to %@" :*/
fileprivate let str_cellValue:String = "center re equal edgeSend "
fileprivate let str_labPushValue:[Character] = ["t","o"," ","%","@"]

/*: "Send to All Numbers" :*/
fileprivate let str_profileName:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," ","N"]
fileprivate let str_sizeLegacyToData:[Character] = ["u"]
fileprivate let str_miniData:String = "mbmanagerrs"

/*: "headPic" :*/
fileprivate let str_tablePathText:[Character] = ["h","e","a","d","P","i"]
fileprivate let str_showValue:String = "need"

/*: "LiveGift_%@" :*/
fileprivate let str_indexSucceedData:String = "share if pageLiveG"
fileprivate let str_hiddenViewData:String = "self self sex heightift_%@"

/*: "toUid" :*/
fileprivate let str_clickName:String = "view stain color designtoUid"

/*: "PartyGift_%@" :*/
fileprivate let str_makeData:String = "context request count item selfPartyGi"
fileprivate let str_toTitle:String = "front title show equalft_%@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddVideoAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class AddVideoAnimatTool: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = AddVideoAnimatTool()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        dipCountoFromInformation()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension AddVideoAnimatTool {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func dipCountoFromInformation() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: representation()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(str_sizeData) + String(str_creationValue.suffix(4)) + "n init"))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.representation()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func nextFile() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: representation()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.representation())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func representation() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent("App")

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", IndexStyleAppManager.share.loginUserMode.userID)
        let name = String(format: (String(str_ofValue) + String(str_rowCountervalName)), IndexStyleAppManager.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func bedGroundAt(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.nextFile()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func freeSpoken(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.nextFile()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func toLine(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains("gift") == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ItemHandyJSON>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM["fromUid"] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(str_equalText) + str_titleData.replacingOccurrences(of: "be", with: "e"))] = user?["name"]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(str_managerName.suffix(6)) + "adPi" + str_colorResultName.replacingOccurrences(of: "log", with: "c"))] = user?["icon"]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM["pid"] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM["num"] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM["pname"] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM["giftPic"] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(str_labelToTitle.lowercased() + String(str_dataMakeValue))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(str_packageHideContent) + String(str_signData))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_addData) + str_moveText.replacingOccurrences(of: "frame", with: "pe"))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM["fromUid"] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(str_equalText) + str_titleData.replacingOccurrences(of: "be", with: "e"))] = user?["name"]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(str_managerName.suffix(6)) + "adPi" + str_colorResultName.replacingOccurrences(of: "log", with: "c"))] = user?["icon"]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM["pid"] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM["num"] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM["pname"] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM["giftPic"] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(str_labelToTitle.lowercased() + String(str_dataMakeValue))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(str_packageHideContent) + String(str_signData))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_imageValue.suffix(4)) + "apEffe" + str_centerData.lowercased())] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_addData) + str_moveText.replacingOccurrences(of: "frame", with: "pe"))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = dictM["num"]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.userRead() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if DecisionMakerReactiveCompatible.barIn().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?["mfBean"] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: consLet_callValue, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? MetronymicThen {
                    // 音视频通话时，只展示通话人的礼物
                    //: if IndexStyleAppManager.share.loginUserMode.userID != targetId,
                    if IndexStyleAppManager.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.catchEqual(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? NameManagerViewDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if IndexStyleAppManager.share.loginUserMode.userID != targetId,
                    if IndexStyleAppManager.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.switchside(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? CountensityViewController {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.modelGet() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.dowery(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: RoomContextViewController.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: LogViewDelegate.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: CountensityViewController.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! CountensityViewController
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.modelGet() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.dowery(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.nextFile()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func aidAcross(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?["uid"] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains("gift") == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<ItemHandyJSON>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?["gift"] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM["fromUid"] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(str_equalText) + str_titleData.replacingOccurrences(of: "be", with: "e"))] = user?["name"]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(str_managerName.suffix(6)) + "adPi" + str_colorResultName.replacingOccurrences(of: "log", with: "c"))] = user?["icon"]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM["pid"] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM["num"] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(str_itemContent.replacingOccurrences(of: "indicator", with: "i") + String(str_videoText))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM["pname"] = "Send to %@".localizedArguments(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM["pname"] = (String(str_profileName) + String(str_sizeLegacyToData) + str_miniData.replacingOccurrences(of: "manager", with: "e")).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM["giftPic"] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(str_labelToTitle.lowercased() + String(str_dataMakeValue))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(str_packageHideContent) + String(str_signData))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_addData) + str_moveText.replacingOccurrences(of: "frame", with: "pe"))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM["fromUid"] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(str_equalText) + str_titleData.replacingOccurrences(of: "be", with: "e"))] = user?[(str_itemContent.replacingOccurrences(of: "indicator", with: "i") + String(str_videoText))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(str_managerName.suffix(6)) + "adPi" + str_colorResultName.replacingOccurrences(of: "log", with: "c"))] = user?["headPic"]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM["pid"] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM["num"] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(str_itemContent.replacingOccurrences(of: "indicator", with: "i") + String(str_videoText))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM["pname"] = "Send to %@".localizedArguments(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM["pname"] = (String(str_profileName) + String(str_sizeLegacyToData) + str_miniData.replacingOccurrences(of: "manager", with: "e")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM["giftPic"] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(str_labelToTitle.lowercased() + String(str_dataMakeValue))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(str_packageHideContent) + String(str_signData))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_imageValue.suffix(4)) + "apEffe" + str_centerData.lowercased())] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_addData) + str_moveText.replacingOccurrences(of: "frame", with: "pe"))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = dictM["num"]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?["uid"] as? Int
                //: if TalkingLiveManager.shared().isLive, IndexStyleAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if DecisionMakerReactiveCompatible.barIn().isLive, IndexStyleAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?["mfBean"] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: consLet_callValue, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if PostPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if PostPushManager.share.overDoinglineVc()!.isKind(of: TotalensityControllerDelegate.self) {
                    //: let chatVC = PostPushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = PostPushManager.share.overDoinglineVc() as! TotalensityControllerDelegate
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.supplement(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func upwardlyDic(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if DecisionMakerReactiveCompatible.barIn().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_indexSucceedData.suffix(5)) + String(str_hiddenViewData.suffix(6))), extraDict?["toUid"] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if EqualSendReactiveCompatible.clout().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_makeData.suffix(7)) + String(str_toTitle.suffix(5))), extraDict?["toUid"] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?["gift"] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains("gift") == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ItemHandyJSON>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM["fromUid"] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(str_equalText) + str_titleData.replacingOccurrences(of: "be", with: "e"))] = user?[(str_itemContent.replacingOccurrences(of: "indicator", with: "i") + String(str_videoText))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(str_managerName.suffix(6)) + "adPi" + str_colorResultName.replacingOccurrences(of: "log", with: "c"))] = user?["headPic"]

                //: dictM["pid"] = gift?["id"] as? String
                dictM["pid"] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM["num"] = gift?["num"] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM["pname"] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM["giftPic"] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(str_labelToTitle.lowercased() + String(str_dataMakeValue))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_packageHideContent) + String(str_signData))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_imageValue.suffix(4)) + "apEffe" + str_centerData.lowercased())] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_addData) + str_moveText.replacingOccurrences(of: "frame", with: "pe"))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(str_timeVideoName.replacingOccurrences(of: "model", with: "im") + "ionTimes")] = dictM["num"]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.nextFile()
            }
        }
    }
}
