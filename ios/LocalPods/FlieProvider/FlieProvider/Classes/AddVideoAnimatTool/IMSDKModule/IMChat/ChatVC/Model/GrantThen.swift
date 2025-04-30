
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let str_dataValue:String = "camera last selfmsgInfo"

/*: "jumps" :*/
fileprivate let str_renderPauseData:String = "juunables"

/*: "uid" :*/
fileprivate let str_modeData:String = "uiname"

/*: "roomId" :*/
fileprivate let str_keyValue:[UInt8] = [0x67,0x64,0x64,0x62,0x3e,0x59]

fileprivate func likeLeading(play num: UInt8) -> UInt8 {
    let value = Int(num) - 245
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "msgId" :*/
fileprivate let str_afterName:[UInt8] = [0xe2,0xe8,0xdc,0xbe,0xd9]

fileprivate func visualMenuAdd(to num: UInt8) -> UInt8 {
    let value = Int(num) + 139
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "time" :*/
fileprivate let str_sizeText:[UInt8] = [0x65,0x6d,0x69,0x74]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GrantThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class GrantThen: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: TotalensityControllerDelegate?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = GrantThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension GrantThen {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func gestureEqual(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict["msgInfo"]["jumps"].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == IndexStyleAppManager.share.loginUid {
            if dict["uid"].stringValue == IndexStyleAppManager.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if OverdoReactiveCompatible.isGroupChat(msg.groupID) {
        if OverdoReactiveCompatible.loadChat(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = ["roomId": msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       "msgId": msg.msgID ?? "",
                                       //: "time": sendTime]
                                       "time": sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.than(info: dict)
        }
    }
}
