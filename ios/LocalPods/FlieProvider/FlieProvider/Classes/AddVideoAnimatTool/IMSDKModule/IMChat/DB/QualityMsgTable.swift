
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let str_collectionTitle:String = "DBUsbottom inventory"
fileprivate let str_dataTitle:String = "ceTabif stop push block"
fileprivate let str_imageRenderValue:String = "lhidden"

/*: "msgId" :*/
fileprivate let str_cancelToLayerName:String = "msgIdenable next icon path"

/*: "toUid" :*/
fileprivate let str_sizeStageName:[Character] = ["t","o","U","i","d"]

/*: "senderId" :*/
fileprivate let str_bottomName:String = "scolor"
fileprivate let str_valueViewData:String = "guard clear send self layernderId"

/*: "audioSandbox" :*/
fileprivate let str_toPointVideoValue:[Character] = ["a","u","d","i","o","S","a"]
fileprivate let str_hiCornerTitle:[Character] = ["n","d","b","o","x"]

/*: "audioLength" :*/
fileprivate let str_consentData:String = "case view frame view modeaudioLe"
fileprivate let str_inputTitle:String = "nsharedth"

/*: "audioData" :*/
fileprivate let str_modelContent:[Character] = ["a","u","d","i","o","D","a"]
fileprivate let str_labelContent:[Character] = ["t","a"]

/*: "audioUri" :*/
fileprivate let str_makeTapValue:[Character] = ["a","u","d","i","o","U"]
fileprivate let str_automaticName:String = "rprimary"

/*: "isRead" :*/
fileprivate let str_labName:String = "isReadstring shared live count"

/*: "WCDB表 :*/
fileprivate let str_viewData:[Character] = ["W","C","D","B","表"]

/*: : 批量插入数据失败。error： :*/
fileprivate let str_backgroundText:String = ": 批range插"
fileprivate let str_shareValue:[Character] = ["\u{5165}","\u{6570}","据","失","\u{8d25}","\u{3002}","e","r","r","o","r","："]

/*: ." :*/
fileprivate let str_replyValue:[Character] = ["."]

/*: : 更新数据失败。error： :*/
fileprivate let str_onData:String = ": 更新"
fileprivate let str_seeLabelHeightTitle:[Character] = ["\u{6570}","据","失","败","。","e","r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QualityMsgTable.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: import WCDBSwift
import WCDBSwift

/// 表名
//: let QualityMsgTableName = "DBUserVoiceTable"
let consLet_appName = (String(str_collectionTitle.prefix(4)) + "erVoi" + String(str_dataTitle.prefix(5)) + str_imageRenderValue.replacingOccurrences(of: "hidden", with: "e"))
//: @objcMembers
@objcMembers
//: public final class QualityMsgTable: NSObject, TableCodable {
public final class QualityMsgTable: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = QualityMsgTable
        public typealias Root = QualityMsgTable
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension QualityMsgTable {
extension QualityMsgTable {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> QualityMsgTable {
    public class func equidistantModel(_ dic: [AnyHashable: Any]) -> QualityMsgTable {
        //: let cache = QualityMsgTable()
        let cache = QualityMsgTable()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic["msgId"] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(str_bottomName.replacingOccurrences(of: "color", with: "e") + String(str_valueViewData.suffix(6)))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(str_toPointVideoValue) + String(str_hiCornerTitle))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(str_consentData.suffix(7)) + str_inputTitle.replacingOccurrences(of: "shared", with: "g"))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(str_modelContent) + String(str_labelContent))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(str_modelContent) + String(str_labelContent))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(str_makeTapValue) + str_automaticName.replacingOccurrences(of: "primary", with: "i"))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(str_makeTapValue) + str_automaticName.replacingOccurrences(of: "primary", with: "i"))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic["isRead"] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        overEndMsg(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: QualityMsgTable) {
    class func callPlayMove(_ voiceMsg: QualityMsgTable) {
        //: QualityMsgTable.db_insertVoiceMsgs([voiceMsg])
        QualityMsgTable.manager([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [QualityMsgTable]) {
    class func manager(_ voiceMsgs: [QualityMsgTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ValueManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: QualityMsgTableName)
                try ValueManager.shared.database?.insert(voiceMsgs, intoTable: consLet_appName)
                //: } catch {
            } catch {
                //: EqualLogTool.writeDoing(msg: "WCDB表\(QualityMsgTableName): 批量插入数据失败。error：\(error).")
                EqualLogTool.writeDoing(msg: "WCDB表\(consLet_appName)" + (str_backgroundText.replacingOccurrences(of: "range", with: "量") + String(str_shareValue)) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> QualityMsgTable? {
    public class func ofRecord(with msgId: String) -> QualityMsgTable? {
        //: if let voiceMsgs = QualityMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = QualityMsgTable.equation(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [QualityMsgTable]? {
    class func equation(with msgIds: [String]) -> [QualityMsgTable]? {
        //: do {
        do {
            //: let condition = QualityMsgTable.Properties.msgId.in(msgIds)
            let condition = QualityMsgTable.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [QualityMsgTable]? = try WCDBManager.shared.database?.getObjects(on: QualityMsgTable.Properties.all, fromTable: QualityMsgTableName, where: condition)
            let voiceMsgs: [QualityMsgTable]? = try ValueManager.shared.database?.getObjects(on: QualityMsgTable.Properties.all, fromTable: consLet_appName, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: QualityMsgTable) {
    class func overEndMsg(_ voiceMsg: QualityMsgTable) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ValueManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if QualityMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if QualityMsgTable.ofRecord(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = QualityMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = QualityMsgTable.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: QualityMsgTableName,
                    try ValueManager.shared.database?.update(table: consLet_appName,
                                                            //: on: QualityMsgTable.Properties.all,
                                                            on: QualityMsgTable.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: EqualLogTool.writeDoing(msg: "WCDB表\(QualityMsgTableName): 更新数据失败。error：\(error).")
                    EqualLogTool.writeDoing(msg: "WCDB表\(consLet_appName)" + (str_onData.capitalized + String(str_seeLabelHeightTitle)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: QualityMsgTable.db_insertVoiceMsg(voiceMsg)
                QualityMsgTable.callPlayMove(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func straightAndNarrowPath(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = QualityMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = QualityMsgTable.ofRecord(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: QualityMsgTable.db_updateVoiceMsg(dbModel)
        QualityMsgTable.overEndMsg(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func limpid(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ValueManager.shared.database?.run(transaction: { _ in
            //: let condition = QualityMsgTable.Properties.msgId == msgId
            let condition = QualityMsgTable.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: QualityMsgTableName,
            try? ValueManager.shared.database?.delete(fromTable: consLet_appName,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func withUid(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ValueManager.shared.database?.run(transaction: { _ in
            //: let condition = QualityMsgTable.Properties.db_senduid == userId && QualityMsgTable.Properties.db_touid == toUid
            let condition = QualityMsgTable.Properties.db_senduid == userId && QualityMsgTable.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: QualityMsgTableName,
            try? ValueManager.shared.database?.delete(fromTable: consLet_appName,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
