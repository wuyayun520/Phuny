
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let str_countNameValue:String = "mf/viview value row"
fileprivate let str_everyTempData:String = "switcgroup"

/*: "status" :*/
fileprivate let str_viewValue:[UInt8] = [0x8b,0x8c,0x99,0x8c,0x8d,0x8b]

private func rankOn(array num: UInt8) -> UInt8 {
    return num ^ 248
}

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let str_centerData:String = "mf/vself let block let"
fileprivate let str_homeAddText:String = "Match/self in cancel"
fileprivate let str_bagValue:String = "CHEC"

/*: "matchVersion" :*/
fileprivate let str_imageValue:[UInt8] = [0x12,0x6,0x19,0x8,0xd,0xfb,0xa,0x17,0x18,0xe,0x14,0x13]

fileprivate func valueExtra(background num: UInt8) -> UInt8 {
    let value = Int(num) + 91
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "v4" :*/
fileprivate let str_insideName:[Character] = ["v","4"]

/*: "enterType" :*/
fileprivate let str_tableData:[UInt8] = [0xa2,0xa9,0xb3,0xa2,0xb5,0x93,0xbe,0xb7,0xa2]

private func errorManager(clear num: UInt8) -> UInt8 {
    return num ^ 199
}

/*: "mf/videoMatch/headPics" :*/
fileprivate let str_screenName:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","h","e","a","d","P","i","c","s"]

/*: "mf/videoMatch/matchV3" :*/
fileprivate let str_normalText:String = "mf/vimake back square first"
fileprivate let str_attentionName:[Character] = ["d","e","o","M","a","t","c","h","/","m","a","t","c","h","V","3"]

/*: "matchId" :*/
fileprivate let str_roomData:[UInt8] = [0x64,0x49,0x68,0x63,0x74,0x61,0x6d]

/*: "mf/videoMatch/matchV4" :*/
fileprivate let str_translationData:String = "intimate type layer makemf/vi"
fileprivate let str_barText:String = "avideoh"
fileprivate let str_propertyBecomeData:[Character] = ["/","m","a","t","c","h","V","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LogSendThen.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class LogSendThen: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func dataDownEmpty(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(str_countNameValue.prefix(5)) + "deoMatch/" + str_everyTempData.replacingOccurrences(of: "group", with: "h"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = ["status": status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func then(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(str_centerData.prefix(4)) + "ideo" + String(str_homeAddText.prefix(6)) + str_bagValue.lowercased() + "kMatch")
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: str_imageValue.map{valueExtra(background: $0)}, encoding: .utf8)!: "v4", String(bytes: str_tableData.map{errorManager(clear: $0)}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func valueBy(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(str_screenName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func dismissal(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(str_normalText.prefix(5)) + String(str_attentionName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = ["matchId": matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func hitOrMissImage(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(str_translationData.suffix(5)) + "deoM" + str_barText.replacingOccurrences(of: "video", with: "tc") + String(str_propertyBecomeData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
