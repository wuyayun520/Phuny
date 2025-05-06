
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let str_modeName:[Character] = ["l","i","v","e","/","e"]
fileprivate let str_textData:String = "nthaner"

/*: "streamerUid" :*/
fileprivate let str_coverValue:[UInt8] = [0x64,0x69,0x55,0x72,0x65,0x6d,0x61,0x65,0x72,0x74,0x73]

/*: "live/userNum" :*/
fileprivate let str_toName:String = "liinfo"
fileprivate let str_itemValue:[Character] = ["r","N","u","m"]

/*: "chatGroupId" :*/
fileprivate let str_noteManagerValue:[UInt8] = [0x4,0xf,0x6,0x13,0x20,0x15,0x8,0x12,0x17,0x2e,0x3]

private func extraTo(reply num: UInt8) -> UInt8 {
    return num ^ 103
}

/*: "live/members" :*/
fileprivate let str_imageValue:String = "live/mtrue equal make"
fileprivate let str_sizeMakeTitle:[Character] = ["e","m","b","e","r","s"]

/*: "live/mute" :*/
fileprivate let str_changeValue:[Character] = ["l","i","v","e","/"]
fileprivate let str_stateValue:String = "mrequeste"

/*: "targetUid" :*/
fileprivate let str_titleIndexName:[UInt8] = [0xbd,0xaa,0xbb,0xb0,0xae,0xbd,0x9e,0xb2,0xad]

fileprivate func ofTalk(make num: UInt8) -> UInt8 {
    let value = Int(num) + 183
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "duration" :*/
fileprivate let str_objectValue:[UInt8] = [0xcc,0xdd,0xda,0xc9,0xdc,0xc1,0xc7,0xc6]

/*: "live/unmute" :*/
fileprivate let str_appTitle:String = "add extension see range tolive/unmu"
fileprivate let str_modelValue:String = "like"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class ServerReactiveCompatible: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func irrupt(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(str_modeName) + str_textData.replacingOccurrences(of: "than", with: "t"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: str_coverValue.reversed(), encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func hadith(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (str_toName.replacingOccurrences(of: "info", with: "ve") + "/use" + String(str_itemValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_noteManagerValue.map{extraTo(reply: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func voiceRareEarthElement(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(str_imageValue.prefix(6)) + String(str_sizeMakeTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_noteManagerValue.map{extraTo(reply: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func roomKey(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(str_changeValue) + str_stateValue.replacingOccurrences(of: "request", with: "ut"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: str_titleIndexName.map{ofTalk(make: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_objectValue.map{$0^168}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func recreation(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(str_appTitle.suffix(9)) + str_modelValue.replacingOccurrences(of: "like", with: "te"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_titleIndexName.map{ofTalk(make: $0)}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
