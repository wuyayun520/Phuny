
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_normalVideoData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "gift" :*/
fileprivate let str_instanceData:String = "gipick"

/*: "iosEffect" :*/
fileprivate let str_contentValue:String = "iosEcall year model"
fileprivate let str_inputData:[Character] = ["f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let str_toFailValue:String = "segment let gift self iniosEm"
fileprivate let str_countControlEqualData:String = "defineect"

/*: "fromUid" :*/
fileprivate let str_dataListTrueName:String = "fromUidname to"

/*: "fromNickname" :*/
fileprivate let str_upValue:[Character] = ["f","r","o","m","N","i","c","k","n","a","m","e"]

/*: "fromHeadPic" :*/
fileprivate let str_thenValue:[Character] = ["f","r","o","m","H","e","a","d","P","i"]
fileprivate let str_bubbleValue:[Character] = ["c"]

/*: "pid" :*/
fileprivate let str_startMainValue:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let str_labelValue:String = "ncall"

/*: "pname" :*/
fileprivate let str_makeToAddValue:String = "pnacolore"

/*: "name" :*/
fileprivate let str_succeedTitle:String = "insertame"

/*: "giftPic" :*/
fileprivate let str_sizeText:String = "hidden view makegiftP"
fileprivate let str_modeTitle:String = "IC"

/*: "imgPreview" :*/
fileprivate let str_textCountValue:String = "self user trueimgPrevi"
fileprivate let str_addText:String = "EW"

/*: "comboNum" :*/
fileprivate let str_readText:String = "info section detailcomboNum"

/*: "showType" :*/
fileprivate let str_groupData:String = "guard to make layershowType"

/*: "animationTimes" :*/
fileprivate let str_genderRoomVarTitle:[Character] = ["a","n","i","m","a","t","i","o"]
fileprivate let str_modelContent:String = "nTimesgift image list"

/*: "id" :*/
fileprivate let str_loadContent:String = "observerd"

/*: "iosVapEffect" :*/
fileprivate let str_infoCoverTitle:[Character] = ["i","o","s","V","a","p","E"]
fileprivate let str_constraintData:[Character] = ["f","f","e","c","t"]

/*: "giftNum" :*/
fileprivate let str_sessionData:[Character] = ["g","i","f","t","N","u","m"]

/*: "Send to %@" :*/
fileprivate let str_videoValue:String = "intimate manager across beautySend to %"
fileprivate let str_allKeyData:String = "@"

/*: "all" :*/
fileprivate let str_componentName:String = "aposition"

/*: "Send to All Numbers" :*/
fileprivate let str_rowTitle:[Character] = ["S","e","n","d"," "]
fileprivate let str_performText:[Character] = ["t","o"," ","A","l","l"," ","N","u","m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountAnimatView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class CountAnimatView: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.deleteSection()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_normalVideoData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: LeapfrogReactiveCompatible = {
        //: let view = TalkingGiftAnimatView.init()
        let view = LeapfrogReactiveCompatible()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension CountAnimatView {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func behindDismiss(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict["gift"] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(str_contentValue.prefix(4)) + String(str_inputData))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_toFailValue.suffix(5)) + "perorE" + str_countControlEqualData.replacingOccurrences(of: "define", with: "ff"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_toFailValue.suffix(5)) + "perorE" + str_countControlEqualData.replacingOccurrences(of: "define", with: "ff"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_contentValue.prefix(4)) + String(str_inputData))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = IndexStyleAppManager.share.loginUserMode.nickname
                dictM[(String(str_upValue))] = IndexStyleAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = IndexStyleAppManager.share.loginUserMode.headPic
                dictM[(String(str_thenValue) + String(str_bubbleValue))] = IndexStyleAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM["pid"] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM["num"] = giftInfo?["num"]
                //: dictM["pname"] = giftInfo?["name"]
                dictM["pname"] = giftInfo?["name"]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM["giftPic"] = giftInfo?[(String(str_textCountValue.suffix(8)) + str_addText.lowercased())]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_readText.suffix(8)))] = giftInfo?[(String(str_readText.suffix(8)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_contentValue.prefix(4)) + String(str_inputData))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_groupData.suffix(8)))] = giftInfo?[(String(str_groupData.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo!["num"] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
            dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = IndexStyleAppManager.share.loginUserMode.nickname
            dictM[(String(str_upValue))] = IndexStyleAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = IndexStyleAppManager.share.loginUserMode.headPic
            dictM[(String(str_thenValue) + String(str_bubbleValue))] = IndexStyleAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM["pid"] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM["num"] = giftInfo?["num"]
            //: dictM["pname"] = giftInfo?["name"]
            dictM["pname"] = giftInfo?["name"]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM["giftPic"] = giftInfo?[(String(str_textCountValue.suffix(8)) + str_addText.lowercased())]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_readText.suffix(8)))] = giftInfo?[(String(str_readText.suffix(8)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_contentValue.prefix(4)) + String(str_inputData))] = giftInfo?[(String(str_contentValue.prefix(4)) + String(str_inputData))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_groupData.suffix(8)))] = giftInfo?[(String(str_groupData.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_infoCoverTitle) + String(str_constraintData))] = giftInfo?[(String(str_infoCoverTitle) + String(str_constraintData))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = giftInfo?[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = dictM["num"]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        halogen()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func alongRe(dict: [String: Any]) -> PeriodOfTimeMeasurable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict["gift"] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_toFailValue.suffix(5)) + "perorE" + str_countControlEqualData.replacingOccurrences(of: "define", with: "ff"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_toFailValue.suffix(5)) + "perorE" + str_countControlEqualData.replacingOccurrences(of: "define", with: "ff"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_contentValue.prefix(4)) + String(str_inputData))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = IndexStyleAppManager.share.loginUserMode.nickname
                dictM[(String(str_upValue))] = IndexStyleAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = IndexStyleAppManager.share.loginUserMode.headPic
                dictM[(String(str_thenValue) + String(str_bubbleValue))] = IndexStyleAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM["pid"] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM["num"] = giftInfo?["num"]
                //: dictM["pname"] = giftInfo?["name"]
                dictM["pname"] = giftInfo?["name"]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM["giftPic"] = giftInfo?[(String(str_textCountValue.suffix(8)) + str_addText.lowercased())]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_readText.suffix(8)))] = giftInfo?[(String(str_readText.suffix(8)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_contentValue.prefix(4)) + String(str_inputData))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_groupData.suffix(8)))] = giftInfo?[(String(str_groupData.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
            dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = IndexStyleAppManager.share.loginUserMode.nickname
            dictM[(String(str_upValue))] = IndexStyleAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = IndexStyleAppManager.share.loginUserMode.headPic
            dictM[(String(str_thenValue) + String(str_bubbleValue))] = IndexStyleAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM["pid"] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM["num"] = giftInfo?["num"]
            //: dictM["pname"] = giftInfo?["name"]
            dictM["pname"] = giftInfo?["name"]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM["giftPic"] = giftInfo?[(String(str_textCountValue.suffix(8)) + str_addText.lowercased())]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_readText.suffix(8)))] = giftInfo?[(String(str_readText.suffix(8)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_contentValue.prefix(4)) + String(str_inputData))] = giftInfo?[(String(str_contentValue.prefix(4)) + String(str_inputData))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_groupData.suffix(8)))] = giftInfo?[(String(str_groupData.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_infoCoverTitle) + String(str_constraintData))] = giftInfo?[(String(str_infoCoverTitle) + String(str_constraintData))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = giftInfo?[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = dictM["num"]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func recRoom(giftMessageDic: [String: Any], model: TotalensityMemberModel) -> PeriodOfTimeMeasurable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains("gift") == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<ItemHandyJSON>.deserializeFrom(dict: giftMessageDic["gift"] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic["gift"] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                    dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                    //: dictM["fromNickname"] = IndexStyleAppManager.share.loginUserMode.nickname
                    dictM[(String(str_upValue))] = IndexStyleAppManager.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = IndexStyleAppManager.share.loginUserMode.headPic
                    dictM[(String(str_thenValue) + String(str_bubbleValue))] = IndexStyleAppManager.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM["pid"] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM["num"] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == "all" {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM["pname"] = (String(str_rowTitle) + String(str_performText)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM["giftPic"] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_readText.suffix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(str_contentValue.prefix(4)) + String(str_inputData))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_groupData.suffix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
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
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                dictM["fromUid"] = IndexStyleAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = IndexStyleAppManager.share.loginUserMode.nickname
                dictM[(String(str_upValue))] = IndexStyleAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = IndexStyleAppManager.share.loginUserMode.headPic
                dictM[(String(str_thenValue) + String(str_bubbleValue))] = IndexStyleAppManager.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM["pid"] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM["num"] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                //: if model.uid == "all" {
                if model.uid == "all" {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM["pname"] = (String(str_rowTitle) + String(str_performText)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM["giftPic"] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_readText.suffix(8)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_contentValue.prefix(4)) + String(str_inputData))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_infoCoverTitle) + String(str_constraintData))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_groupData.suffix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(str_genderRoomVarTitle) + String(str_modelContent.prefix(6)))] = dictM["num"]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<PeriodOfTimeMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func animat(model: PeriodOfTimeMeasurable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        halogen()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func giftArr(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        halogen()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func anError() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func ignore(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        halogen()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func actionFromPing(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = AddVideoAnimatTool.shared.bedGroundAt(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        halogen()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func halogen() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            atInfoUser()
        }
    }

    /// 播放
    //: func playNext() {
    func atInfoUser() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: PeriodOfTimeMeasurable = obj as! PeriodOfTimeMeasurable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == HalfColumnConvertible.myStery.rawValue || model.showType == HalfColumnConvertible.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.searchModel(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                halogen()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension CountAnimatView {
    // 添加视图
    //: private func setupSubviews() {
    private func deleteSection() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.atInfoUser()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.atInfoUser()
            }
        }
    }
}
