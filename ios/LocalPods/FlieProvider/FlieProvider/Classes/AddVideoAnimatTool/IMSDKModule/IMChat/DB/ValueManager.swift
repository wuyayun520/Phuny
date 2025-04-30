
//: Declare String Begin

/*: ".db" :*/
fileprivate let str_arrayName:[Character] = [".","d","b"]

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let str_nowValue:String = "false registerWCDB数"
fileprivate let str_callMakeTitle:String = "self letserI"

/*: "WCDB/ :*/
fileprivate let str_phoneData:String = "center error app premium quoteWCDB/"

/*: "WCDB数据库打开失败： :*/
fileprivate let str_stateText:[Character] = ["W","C","D","B","数"]
fileprivate let str_gestureRemoveData:String = "据"
fileprivate let str_itemName:String = "\u{5e93}打开失败："

/*: "WCDB数据库成功打开： :*/
fileprivate let str_maxData:String = "WCDB数\u{636e}"
fileprivate let str_errorData:String = "库成功打开："

/*: "WCDB数据库成功关闭。" :*/
fileprivate let str_userData:[Character] = ["W","C","D","B","数","据","库","\u{6210}","功","关","闭","。"]

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let str_modelContent:String = "WCDB\u{6570}据"
fileprivate let str_cellTitleName:String = "败。errorow add content"
fileprivate let str_makeData:String = "r：view in let else height"

/*: ." :*/
fileprivate let str_managerEmptyTitle:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueManager.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class ValueManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = ValueManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return IndexStyleAppManager.share.loginUserMode.userID + ".db"
        return IndexStyleAppManager.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.totalerlinkBar()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func totalerlinkBar() {
        //: closeDatabase()
        sizeSub()

        //: guard !IndexStyleAppManager.share.loginUserMode.userID.isEmpty else {
        guard !IndexStyleAppManager.share.loginUserMode.userID.isEmpty else {
            //: EqualLogTool.writeDoing(msg: "WCDB数据库打开失败：userId为空。")
            EqualLogTool.writeDoing(msg: (String(str_nowValue.suffix(5)) + "据库打\u{5f00}失\u{8d25}：u" + String(str_callMakeTitle.suffix(4)) + "d为空\u{3002}"))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent("WCDB/\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: EqualLogTool.writeDoing(msg: "WCDB数据库打开失败：\(fileURL.path)")
            EqualLogTool.writeDoing(msg: (String(str_stateText) + str_gestureRemoveData.capitalized + str_itemName) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (str_maxData + str_errorData.capitalized) + "\(fileURL.path)")
        //: createTables()
        beforeTag()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func sizeSub() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(str_userData)))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension ValueManager {
    /// 创建表
    //: private func createTables() {
    private func beforeTag() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: consLet_netPostName, of: VersionInfoTable.self)
            // 语音消息表
            //: try database?.create(table: QualityMsgTableName, of: QualityMsgTable.self)
            try database?.create(table: consLet_appName, of: QualityMsgTable.self)
            //: } catch {
        } catch {
            //: EqualLogTool.writeDoing(msg: "WCDB数据库：创建表失败。error：\(error).")
            EqualLogTool.writeDoing(msg: (str_modelContent + "库：\u{521b}建表失" + String(str_cellTitleName.prefix(6)) + String(str_makeData.prefix(2))) + "\(error).")
        }
    }
}
