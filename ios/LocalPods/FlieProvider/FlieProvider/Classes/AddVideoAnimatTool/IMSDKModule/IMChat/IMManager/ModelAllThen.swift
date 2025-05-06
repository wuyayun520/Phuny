
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_oneTitle:[UInt8] = [0xc3,0xc4,0xc3,0xde,0x82,0xc9,0xc5,0xce,0xcf,0xd8,0x90,0x83,0x8a,0xc2,0xcb,0xd9,0x8a,0xc4,0xc5,0xde,0x8a,0xc8,0xcf,0xcf,0xc4,0x8a,0xc3,0xc7,0xda,0xc6,0xcf,0xc7,0xcf,0xc4,0xde,0xcf,0xce]

private func letView(style num: UInt8) -> UInt8 {
    return num ^ 170
}

/*: "System notification" :*/
fileprivate let str_addFireFalseValue:String = "Systereturn count bubble of"
fileprivate let str_ofTopFrameTitle:String = "TI"
fileprivate let str_toolData:String = "ficfromtion"

/*: "http://static. :*/
fileprivate let str_writeName:[Character] = ["h","t","t","p",":","/","/","s","t","a","t"]
fileprivate let str_countValue:[Character] = ["i","c","."]

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let str_pageValue:[UInt8] = [0x47,0x7c,0x88,0x86,0x48,0x7a,0x89,0x89,0x48,0x82,0x86,0x80,0x48,0x86,0x7e,0x8c,0x8c,0x7a,0x80,0x7e,0x48,0x91,0x82,0x8d,0x88,0x87,0x80,0x46,0x8f,0x4b,0x47,0x89,0x87,0x80]

fileprivate func controlLab(intimate num: UInt8) -> UInt8 {
    let value = Int(num) - 25
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Customer Care Center" :*/
fileprivate let str_fileTitle:String = "Custoerror bottom"
fileprivate let str_scaleData:String = "label err system border viewre C"
fileprivate let str_toTitle:String = "modelntmodelr"

/*: .com/app/img/message/cs.png" :*/
fileprivate let str_gestureText:[Character] = [".","c","o","m","/","a"]
fileprivate let str_playerColorText:[Character] = ["p","p","/","i","m","g"]
fileprivate let str_titleData:[Character] = ["/","m","e","s","s","a","g","e","/","c","s",".","p","n","g"]

/*: "Public Chat Room" :*/
fileprivate let str_collectionTitle:[Character] = ["P","u","b","l"]
fileprivate let str_equalObjectValue:String = "ic Cmodel let"

/*: "icon_chats_pcr" :*/
fileprivate let str_renderValue:[Character] = ["i","c","o","n","_","c","h"]
fileprivate let str_makeData:String = "max path equal edit normalats_pcr"

/*: "New friends" :*/
fileprivate let str_practiceName:[Character] = ["N","e","w"," ","f","r","i","e","n","d","s"]

/*: "icon_chats_mm" :*/
fileprivate let str_addName:String = "icon_succeed selected class"
fileprivate let str_pastTopData:String = "manager"
fileprivate let str_equalIndexCallData:[Character] = ["h","a","t","s","_","m","m"]

/*: " customElem.data is error" :*/
fileprivate let str_titleName:String = " cusmessage skin let group list"
fileprivate let str_postTitle:String = "em.dtitle bar make height"
fileprivate let str_iconValue:String = "is errcount leading make live"
fileprivate let str_playerData:String = "OR"

/*: "extra" :*/
fileprivate let str_colorName:String = "extoperationa"

/*: "msgInfo" :*/
fileprivate let str_layerText:[Character] = ["m","s","g","I","n","f","o"]

/*: "messageType" :*/
fileprivate let str_rangeTitle:String = "sizes"
fileprivate let str_labelValue:String = "effect make number total varsageType"

/*: "msgType" :*/
fileprivate let str_rootValue:String = "title"
fileprivate let str_renderText:String = "user bubble class zone tosgType"

/*: "tips" :*/
fileprivate let str_viewData:[Character] = ["t","i","p","s"]

/*: "totalIntimate" :*/
fileprivate let str_labName:String = "buildtal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelAllThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class ModelAllThen: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: UserHandyJSON?
    var gj_userInfo: UserHandyJSON? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == OverdoReactiveCompatible.getXiaoMiID() {
            if conv.userID == OverdoReactiveCompatible.winImage() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == OverdoReactiveCompatible.getCustomerServiceID() {
            } else if conv.userID == OverdoReactiveCompatible.use() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.statusInfo(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.photo()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_oneTitle.map{letView(style: $0)}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension ModelAllThen {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func tablet(chatType: TalkingIMChatType) -> ModelAllThen {
        //: let model = TalkingConversationModel()
        let model = ModelAllThen()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = OverdoReactiveCompatible.getXiaoMiID()
            model.userID = OverdoReactiveCompatible.winImage()
            //: model.targetId = OverdoReactiveCompatible.getXiaoMiID()
            model.targetId = OverdoReactiveCompatible.winImage()
            //: model.showName = "System notification".localized
            model.showName = (String(str_addFireFalseValue.prefix(5)) + "m no" + str_ofTopFrameTitle.lowercased() + str_toolData.replacingOccurrences(of: "from", with: "a")).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(str_writeName) + String(str_countValue)) + "\(consLet_netTitle)" + String(bytes: str_pageValue.map{controlLab(intimate: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = OverdoReactiveCompatible.getCustomerServiceID()
            model.userID = OverdoReactiveCompatible.use()
            //: model.targetId = OverdoReactiveCompatible.getCustomerServiceID()
            model.targetId = OverdoReactiveCompatible.use()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(str_fileTitle.prefix(5)) + "mer Ca" + String(str_scaleData.suffix(4)) + str_toTitle.replacingOccurrences(of: "model", with: "e")).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(str_writeName) + String(str_countValue)) + "\(consLet_netTitle)" + (String(str_gestureText) + String(str_playerColorText) + String(str_titleData))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(str_collectionTitle) + String(str_equalObjectValue.prefix(4)) + "hat Room").localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(str_renderValue) + String(str_makeData.suffix(7)))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(str_practiceName)).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(str_addName.prefix(5)) + str_pastTopData.replacingOccurrences(of: "manager", with: "c") + String(str_equalIndexCallData))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension ModelAllThen {
    //: func func__updateLastShowMsg() {
    func photo() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.statusInfo(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.statusInfo(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func statusInfo(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_titleName.prefix(4)) + "tomEl" + String(str_postTitle.prefix(4)) + "ata " + String(str_iconValue.prefix(6)) + str_playerData.lowercased()))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json["extra"]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic["msgInfo"]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(str_rangeTitle.replacingOccurrences(of: "size", with: "me") + String(str_labelValue.suffix(8)))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo["msgType"].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(str_rangeTitle.replacingOccurrences(of: "size", with: "me") + String(str_labelValue.suffix(8)))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func backgroundShow(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.statusInfo(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.beauty(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.photo()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension ModelAllThen {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func beauty(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic["extra"].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?["msgInfo"]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(str_labName.replacingOccurrences(of: "build", with: "to") + "Intimate")]?.int {
            //: if let model = AddInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = AddInfoManager.displayIn(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: AddInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    AddInfoManager.map(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
