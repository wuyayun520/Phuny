
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let str_contentValue:[Character] = ["p","a","r","t","y","/","e","n","t","e","r"]

/*: "roomId" :*/
fileprivate let str_keyName:[UInt8] = [0x7c,0x61,0x61,0x63,0x47,0x6a]

private func contentShowLabel(from num: UInt8) -> UInt8 {
    return num ^ 14
}

/*: "party/start" :*/
fileprivate let str_videoTitle:[Character] = ["p","a","r","t","y"]
fileprivate let str_itemValue:String = "/startto video"

/*: "party/close" :*/
fileprivate let str_toTitle:[Character] = ["p","a","r","t","y"]
fileprivate let str_modelSessionValue:String = "ting position official/close"

/*: "party/changeRoom" :*/
fileprivate let str_headFilterName:[Character] = ["p","a","r","t","y"]
fileprivate let str_progressData:String = "false me section string/chang"

/*: "beforeRoomId" :*/
fileprivate let str_colorData:[UInt8] = [0xb7,0xb0,0xb3,0xba,0xa7,0xb0,0x87,0xba,0xba,0xb8,0x9c,0xb1]

private func tableDisplay(with num: UInt8) -> UInt8 {
    return num ^ 213
}

/*: "party/mikeList" :*/
fileprivate let str_applicationName:[Character] = ["p","a","r","t","y","/","m","i","k","e","L"]
fileprivate let str_sharedMoreModelContent:String = "ismake"

/*: "uid" :*/
fileprivate let str_viewTitle:[UInt8] = [0x1e,0x2,0xf]

private func cellItem(small num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "type" :*/
fileprivate let str_rangeBeanName:[UInt8] = [0x2b,0x30,0x27,0x1c]

fileprivate func titleWith(content num: UInt8) -> UInt8 {
    let value = Int(num) - 183
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "pos" :*/
fileprivate let str_dataTitle:[UInt8] = [0x86,0x85,0x89]

fileprivate func theoryCoin(from num: UInt8) -> UInt8 {
    let value = Int(num) - 22
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toPos" :*/
fileprivate let str_frameName:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let str_showValue:String = "pakindty"
fileprivate let str_modelTitle:String = "/mikeview extension video start"

/*: "party/adminMike" :*/
fileprivate let str_nearText:String = "pmakerty"
fileprivate let str_hungData:String = "nMikecurrent inside"

/*: "party/list" :*/
fileprivate let str_titleText:[Character] = ["p","a","r","t","y","/","l"]
fileprivate let str_makeData:[Character] = ["i","s","t"]

/*: "party/onlineNum" :*/
fileprivate let str_appName:String = "photo label guard matchparty/"
fileprivate let str_frameAnyoneValue:String = "dismiss"
fileprivate let str_hiddenTitle:String = "centerin"

/*: "party/onlineList" :*/
fileprivate let str_resultName:String = "party/type extension action"
fileprivate let str_topTitleData:String = "backli"

/*: "party/mute" :*/
fileprivate let str_componentTitle:String = "pnowty"
fileprivate let str_addValue:String = "let free self in string/mute"

/*: "targetUid" :*/
fileprivate let str_textTargetTitle:[UInt8] = [0xe7,0xd4,0xe5,0xda,0xd8,0xe7,0xc8,0xdc,0xd7]

fileprivate func reColor(image num: UInt8) -> UInt8 {
    let value = Int(num) + 141
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "duration" :*/
fileprivate let str_listData:[UInt8] = [0x3b,0x4c,0x49,0x38,0x4b,0x40,0x46,0x45]

fileprivate func ordinalTotal(selected num: UInt8) -> UInt8 {
    let value = Int(num) - 215
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/unmute" :*/
fileprivate let str_backgroundSpecialText:String = "party/equal key if"

/*: "party/kickout" :*/
fileprivate let str_tableName:String = "frame var letparty/k"
fileprivate let str_lessValue:String = "ickoblock"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeritageReqTool.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class HeritageReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func gestureOn(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (String(str_contentValue))
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = ["roomId": roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(str_videoTitle) + String(str_itemValue.prefix(6)))
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func addTitle(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(str_toTitle) + String(str_modelSessionValue.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = ["roomId": roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func jailCellSumerglow(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(str_headFilterName) + String(str_progressData.suffix(6)) + "eRoom")
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = ["roomId": roomId, String(bytes: str_colorData.map{tableDisplay(with: $0)}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func playerEnable(roomId: String, completion: @escaping (_ data: [ServerTransformable]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(str_applicationName) + str_sharedMoreModelContent.replacingOccurrences(of: "make", with: "t"))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = ["roomId": roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        consLet_listTitle.coloring(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [ServerTransformable] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<ServerTransformable>.deserialize(from: arr as? Array) as? [ServerTransformable] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func appSave(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params["toPos"] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (str_showValue.replacingOccurrences(of: "kind", with: "r") + String(str_modelTitle.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func multi(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (str_nearText.replacingOccurrences(of: "make", with: "a") + "/admi" + String(str_hungData.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func countimateCreate(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(str_titleText) + String(str_makeData))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func top(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(str_appName.suffix(6)) + str_frameAnyoneValue.replacingOccurrences(of: "dismiss", with: "o") + str_hiddenTitle.replacingOccurrences(of: "center", with: "nl") + "eNum")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = ["roomId": roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func rootFullJudiciaryEqualDisparityCompletion(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (String(str_resultName.prefix(6)) + str_topTitleData.replacingOccurrences(of: "back", with: "on") + "neList")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = ["roomId": roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func statusCompletion(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (str_componentTitle.replacingOccurrences(of: "now", with: "ar") + String(str_addValue.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: str_textTargetTitle.map{reColor(image: $0)}, encoding: .utf8)!: targetUid, "roomId": roomID, String(bytes: str_listData.map{ordinalTotal(selected: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func explainRequestCompletion(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(str_backgroundSpecialText.prefix(6)) + "unmute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: str_textTargetTitle.map{reColor(image: $0)}, encoding: .utf8)!: targetUid, "roomId": roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func doButton(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(str_tableName.suffix(7)) + str_lessValue.replacingOccurrences(of: "block", with: "ut"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: str_textTargetTitle.map{reColor(image: $0)}, encoding: .utf8)!: targetUid, "roomId": roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
