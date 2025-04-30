
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let str_tableName:String = "quote fill elsecall/se"
fileprivate let str_playName:[Character] = ["n","d","M","s","g"]

/*: "logId" :*/
fileprivate let str_iconMoveTitle:[Character] = ["l","o","g","I","d"]

/*: "content" :*/
fileprivate let str_makeData:[Character] = ["c","o"]
fileprivate let str_appValue:[Character] = ["n","t","e","n","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol HalfManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func backgroundToComponent(Msg: TrademarkModelType)
}

//: class TalkingVideoDanmuManager: NSObject {
class LabelThen: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: LabelThen? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: HalfManagerDelegate?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func beyondMini() -> LabelThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = LabelThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension LabelThen {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func fillUp(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = TrademarkModelType.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = QuantityCellData()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.minimize(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.backgroundToComponent(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func unhinge(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(str_tableName.suffix(7)) + String(str_playName))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict["logId"] = logId
        //: dict["content"] = content
        dict["content"] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension LabelThen {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func accomplish() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if LabelThen._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            LabelThen._instance = nil
        }
    }
}
