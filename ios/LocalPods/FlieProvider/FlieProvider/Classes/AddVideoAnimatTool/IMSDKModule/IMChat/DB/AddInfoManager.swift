
//: Declare String Begin

/*: "serialQueue" :*/
fileprivate let str_mediumEmptyValue:String = "rangeria"
fileprivate let str_lifeText:String = "lQueuein send else height"

/*: "fromUids" :*/
fileprivate let str_normalText:[UInt8] = [0x83,0x8f,0x8c,0x8a,0x72,0x86,0x81,0x90]

fileprivate func imageColor(value num: UInt8) -> UInt8 {
    let value = Int(num) + 227
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//  AddInfoManager.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/6/12.
//

//: import UIKit
import UIKit

/// 每次请求最大数
//: let PER_REQUEST_COUNT_LIMIT = 50
let consLet_pointContent = 50

//: @objcMembers
@objcMembers
//: public class AddInfoManager: NSObject {
public class AddInfoManager: NSObject {
    /// 消息列表还未初始化时，先把要请求的用户信息缓存；待消息列表初始化后，一次性发送请求；
    //: var needReqUidsSet: Set<String>?
    var needReqUidsSet: Set<String>?
    /// 已经请求过的用户ids（防止重复请求）
    //: private var reqedUidsSet = Set<String>()
    private var reqedUidsSet = Set<String>()

    /// singleton
    //: private static var _instance: AddInfoManager?
    private static var _instance: AddInfoManager?
    //: class func shared() -> AddInfoManager {
    class func pastGenerate() -> AddInfoManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = AddInfoManager()
            _instance = AddInfoManager()
            // 添加退出账号通知
            //: NotificationCenter.default.addObserver(_instance!,
            NotificationCenter.default.addObserver(_instance!,
                                                   //: selector: #selector(accountLogout),
                                                   selector: #selector(realCapitulationPath),
                                                   //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                                   name: consLet_askData,
                                                   //: object: nil)
                                                   object: nil)
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: needReqUidsSet = Set<String>()
        needReqUidsSet = Set<String>()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    /// 销毁单例
    //: class func destroy() {
    class func miniObjectCell() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if _instance != nil {
            if _instance != nil {
                //: _instance = nil
                _instance = nil
            }
        }
    }

    /// 退出登录
    //: @objc private func accountLogout() {
    @objc private func realCapitulationPath() {
        //: AddInfoManager.destroy()
        AddInfoManager.miniObjectCell()
    }
}

// MARK: - 【获取用户信息、在线状态】

//: extension AddInfoManager {
extension AddInfoManager {
    /// 获取用户消息
    /// - Parameters:
    ///   - userIdsArr: 用户ids
    ///   - completion: 回调
    //: class func cache_getUserInfo(with userIdsArr: [String], completion: @escaping ([UserHandyJSON]?, Error?) -> Void) {
    class func express(with userIdsArr: [String], completion: @escaping ([UserHandyJSON]?, Error?) -> Void) {
        // 数量过多，wcdb的where语句会因过长而报错，所以做分页
        //: var newUserIdsArr = userIdsArr
        var newUserIdsArr = userIdsArr
        //: if AddInfoManager.shared().needReqUidsSet != nil {
        if AddInfoManager.pastGenerate().needReqUidsSet != nil { // 合并去重
            //: newUserIdsArr = Array(AddInfoManager.shared().needReqUidsSet!.union(userIdsArr))
            newUserIdsArr = Array(AddInfoManager.pastGenerate().needReqUidsSet!.union(userIdsArr))
            //: AddInfoManager.shared().needReqUidsSet = nil
            AddInfoManager.pastGenerate().needReqUidsSet = nil
        }

        //: let limitSum = newUserIdsArr.count
        let limitSum = newUserIdsArr.count
        //: guard limitSum > 0 else {
        guard limitSum > 0 else {
            //: completion(nil, nil)
            completion(nil, nil)
            //: return
            return
        }

        //: var location = 0
        var location = 0
        //: let pageSize = PER_REQUEST_COUNT_LIMIT
        let pageSize = consLet_pointContent
        //: repeat {
        repeat {
            //: let len = min(pageSize, limitSum - location)
            let len = min(pageSize, limitSum - location)
            //: let range = NSRange(location: location, length: len)
            let range = NSRange(location: location, length: len)
            //: let subArr: [String] = Array(newUserIdsArr[range.location ..< range.location + range.length])
            let subArr: [String] = Array(newUserIdsArr[range.location ..< range.location + range.length])
            //: inner_getUserInfo(with: subArr, completion: completion)
            breakIn(with: subArr, completion: completion)
            //: location += len
            location += len

            //: } while location < limitSum
        } while location < limitSum
    }

    /// 获取会话用户的在线状态
    /// - Parameters:
    ///   - userArr: 用户ids
    ///   - completion: 回调
    //: class func cache_getChatUserStatus(with userArr: [String], completion: @escaping ([[String: Any]]?, Error?) -> Void) {
    class func giveaway(with userArr: [String], completion: @escaping ([[String: Any]]?, Error?) -> Void) {
        //: guard userArr.count > 0 else {
        guard userArr.count > 0 else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: completion(nil, nil)
                completion(nil, nil)
            }
            //: return
            return
        }

        //: let Maxindex = 50
        let Maxindex = 50
        //: let serialQueue = DispatchQueue(label: "serialQueue")
        let serialQueue = DispatchQueue(label: (str_mediumEmptyValue.replacingOccurrences(of: "range", with: "se") + String(str_lifeText.prefix(6))))
        //: var alldata = [[String: Any]]()
        var alldata = [[String: Any]]()
        //: let finalArray = stride(from: 0, to: userArr.endIndex, by: Maxindex).map {
        let finalArray = stride(from: 0, to: userArr.endIndex, by: Maxindex).map {
            //: Array(userArr[$0 ..< min($0 + Maxindex, userArr.count)])
            Array(userArr[$0 ..< min($0 + Maxindex, userArr.count)])
        }
        //: serialQueue.async {
        serialQueue.async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)
            //: for item in finalArray {
            for item in finalArray {
                //: let requestUidsStr = item.map { String(describing: $0) }.joined(separator: ",")
                let requestUidsStr = item.map { String(describing: $0) }.joined(separator: ",")
                //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //: TalkingChatRequestTool.req_queryStatus(toUids: requestUidsStr) { _, list in
                    ChatMakeReactiveCompatible.completionDigitiserCoinVideoLowness(toUids: requestUidsStr) { _, list in
                        //: defer { sema.signal() }
                        defer { sema.signal() }
                        //: alldata.append(contentsOf: list ?? [])
                        alldata.append(contentsOf: list ?? [])
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: completion(alldata, nil)
                completion(alldata, nil)
            }
        }
    }

    /// 根据TX消息体获取语音模型
    /// - Parameter message: TX消息体
    //: public class func cache_getAudioDB(message: V2TIMMessage) -> QualityMsgTable {
    public class func mapStream(message: V2TIMMessage) -> QualityMsgTable {
        //: let key = TUISocialChatManager.checkPrimaryKey(withMsgModel: message)
        let key = TUISocialChatManager.checkPrimaryKey(withMsgModel: message)
        //: var cacheWrap = QualityMsgTable.db_getVoiceMsg(with: key)
        var cacheWrap = QualityMsgTable.ofRecord(with: key)
        //: if cacheWrap == nil {
        if cacheWrap == nil {
            //: let info = TUISocialChatManager.packageDict(withTXMessage: message)
            let info = TUISocialChatManager.packageDict(withTXMessage: message)
            //: cacheWrap = QualityMsgTable.db_inserVoiceMsgToDB(info)
            cacheWrap = QualityMsgTable.equidistantModel(info)
        }
        //: return cacheWrap!
        return cacheWrap!
    }
}

// MARK: - 操作数据库【数据库更新尽量放在此处中间层】

//: extension AddInfoManager {
extension AddInfoManager {
    /// 获取用户数据（从数据库取）
    /// - Parameter targetId: id
    /// - Returns: 用户信息model
    //: @discardableResult
    @discardableResult
    //: class func cache_getCachedUserInfo(targetId: String) -> UserHandyJSON? {
    class func displayIn(targetId: String) -> UserHandyJSON? {
        //: return WCDBUserInfoTable.db_getUserInfo(with: targetId)
        return VersionInfoTable.tableName(with: targetId)
    }

    /// 更新数据库【用户模型】，并发送通知
    /// - Parameter userInfo: 用户信息model
    //: class func cache_updateMsgUserInfoAndPostNotif(with userInfo: UserHandyJSON?) {
    class func secret(with userInfo: UserHandyJSON?) {
        //: guard let userInfo = userInfo, !userInfo.uid.isEmpty else { return }
        guard let userInfo = userInfo, !userInfo.uid.isEmpty else { return }
        //: let model = AddInfoManager.cache_getCachedUserInfo(targetId: userInfo.uid)
        let model = AddInfoManager.displayIn(targetId: userInfo.uid)
        // 自定义字段需要赋值，防止被覆盖
        //: userInfo.isHaveSession = model?.isHaveSession ?? false
        userInfo.isHaveSession = model?.isHaveSession ?? false
        //: userInfo.intimateTime = Int(Date().timeIntervalSince1970)
        userInfo.intimateTime = Int(Date().timeIntervalSince1970)
        //: userInfo.readReceiptTime = model?.readReceiptTime ?? 0
        userInfo.readReceiptTime = model?.readReceiptTime ?? 0
        //: WCDBUserInfoTable.db_updateUserInfo(userInfo)
        VersionInfoTable.ammunitionEqual(userInfo)
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: NotificationCenter.default.post(name: USER_INFO_MSG_LIST_NOTIFICATION, object: [userInfo.uid: userInfo])
            NotificationCenter.default.post(name: consLet_robotName, object: [userInfo.uid: userInfo])
        }
    }

    /// 更新数据库【会话】
    /// - Parameter targetId: 用户Id
    //: class func cache_updateSessionAndPostNotif(with targetId: String) {
    class func singleOut(with targetId: String) {
        //: guard let model = AddInfoManager.cache_getCachedUserInfo(targetId: targetId) else { return }
        guard let model = AddInfoManager.displayIn(targetId: targetId) else { return }
        //: guard model.isHaveSession == false else { return }
        guard model.isHaveSession == false else { return }
        //: model.isHaveSession = true
        model.isHaveSession = true
        //: WCDBUserInfoTable.db_updateUserInfo(model)
        VersionInfoTable.ammunitionEqual(model)
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: NotificationCenter.default.post(name: USER_INFO_MSG_LIST_NOTIFICATION, object: [targetId: model])
            NotificationCenter.default.post(name: consLet_robotName, object: [targetId: model])
        }
    }

    /// 更新数据库【亲密值】
    /// - Parameters:
    ///   - targetId: 用户Id
    ///   - intimate: 亲密值
    ///   - currTime: 当前更新时间
    //: class func cache_updateIntimate(with targetId: String, intimate: Int, currTime: Int) {
    class func map(with targetId: String, intimate: Int, currTime: Int) {
        //: guard let model = AddInfoManager.cache_getCachedUserInfo(targetId: targetId) else { return }
        guard let model = AddInfoManager.displayIn(targetId: targetId) else { return }
        //: model.intimate = intimate
        model.intimate = intimate
        //: model.intimateTime = currTime
        model.intimateTime = currTime
        //: WCDBUserInfoTable.db_updateUserInfo(model)
        VersionInfoTable.ammunitionEqual(model)
    }

    /// 更新数据库【对方已读消息回执时间戳】
    /// - Parameter time: 时间戳
    //: class func cache_updateReadReceiptTime(with targetId: String, time: Int) {
    class func nameSh(with targetId: String, time: Int) {
        //: guard let model = AddInfoManager.cache_getCachedUserInfo(targetId: targetId) else { return }
        guard let model = AddInfoManager.displayIn(targetId: targetId) else { return }
        //: model.readReceiptTime = time
        model.readReceiptTime = time
        //: WCDBUserInfoTable.db_updateUserInfo(model)
        VersionInfoTable.ammunitionEqual(model)
    }

    /// 删除DB中记录的信息
    /// - Parameter targetUid: 用户id
    //: class func db_removeRecord(with targetUid: String) {
    class func subShowWith(with targetUid: String) {
        //: WCDBUserInfoTable.db_deleteUserInfo(with: targetUid)
        VersionInfoTable.noStart(with: targetUid)
        //: AddInfoManager.shared().reqedUidsSet.remove(targetUid)
        AddInfoManager.pastGenerate().reqedUidsSet.remove(targetUid)
    }
}

// MARK: - Private Func

//: extension AddInfoManager {
extension AddInfoManager {
    /// 获取用户消息
    /// - Parameters:
    ///   - userIdsArr: 用户ids
    ///   - completion: 回调
    //: private class func inner_getUserInfo(with userIdsArr: [String], completion: @escaping ([UserHandyJSON]?, Error?) -> Void) {
    private class func breakIn(with userIdsArr: [String], completion: @escaping ([UserHandyJSON]?, Error?) -> Void) {
        //: let userModels = WCDBUserInfoTable.db_getUserInfos(with: userIdsArr)
        let userModels = VersionInfoTable.infoSize(with: userIdsArr)
        //: var noDBUidArr = [String]()
        var noDBUidArr = [String]()
        // 过滤db或者请求中的数据
        //: for uid in userIdsArr where !userModels.contains(where: { $0.uid == uid }) {
        for uid in userIdsArr where !userModels.contains(where: { $0.uid == uid }) {
            //: if AddInfoManager.shared().reqedUidsSet.contains(uid) == false {
            if AddInfoManager.pastGenerate().reqedUidsSet.contains(uid) == false {
                //: noDBUidArr.append(uid)
                noDBUidArr.append(uid)
            }
        }
        //: completion(userModels, nil)
        completion(userModels, nil)
        //: if !noDBUidArr.isEmpty {
        if !noDBUidArr.isEmpty {
            //: AddInfoManager.inner_requestUserInfoList(with: noDBUidArr)
            AddInfoManager.writeSend(with: noDBUidArr)
        }
    }

    /// 请求用户消息列表
    /// - Parameters:
    ///   - withUids: 用户Ids
    ///   - completion: 回调
    //: private class func inner_requestUserInfoList(with userIdsArr: [String]) {
    private class func writeSend(with userIdsArr: [String]) {
        //: let requestUidsStr = userIdsArr.joined(separator: ",")
        let requestUidsStr = userIdsArr.joined(separator: ",")
        //: if requestUidsStr.isEmpty { return }
        if requestUidsStr.isEmpty { return }
        // 加入已请求Set，防止重复请求
        //: AddInfoManager.shared().reqedUidsSet = AddInfoManager.shared().reqedUidsSet.union(userIdsArr)
        AddInfoManager.pastGenerate().reqedUidsSet = AddInfoManager.pastGenerate().reqedUidsSet.union(userIdsArr)

        // 请求用户消息列表
        //: TalkingChatRequestTool.req_refreshMsgUserListInfo(param: ["fromUids": requestUidsStr]) { succeed, dataArr in
        ChatMakeReactiveCompatible.noLocal(param: [String(bytes: str_normalText.map{imageColor(value: $0)}, encoding: .utf8)!: requestUidsStr]) { succeed, dataArr in
            //: guard succeed else {
            guard succeed else { // 失败还原数据
                //: AddInfoManager.shared().reqedUidsSet.subtract(userIdsArr)
                AddInfoManager.pastGenerate().reqedUidsSet.subtract(userIdsArr)
                //: return
                return
            }
            // 更新数据库
            //: AddInfoManager.updateMsgUserInfoTable(userInfoArr: dataArr)
            AddInfoManager.upVideo(userInfoArr: dataArr)
            // 发送通知
            //: var retInfoDict: [String: UserHandyJSON] = [:]
            var retInfoDict: [String: UserHandyJSON] = [:]
            //: dataArr.forEach { model in
            for model in dataArr {
                //: retInfoDict[model.uid] = model
                retInfoDict[model.uid] = model
            }
            //: if !retInfoDict.isEmpty {
            if !retInfoDict.isEmpty {
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: NotificationCenter.default.post(name: USER_INFO_MSG_LIST_NOTIFICATION, object: retInfoDict)
                    NotificationCenter.default.post(name: consLet_robotName, object: retInfoDict)
                }
            }
        }
    }

    /// 更新用户信息表
    /// - Parameter userInfoArr: 用户model
    //: private class func updateMsgUserInfoTable(userInfoArr: [UserHandyJSON]) {
    private class func upVideo(userInfoArr: [UserHandyJSON]) {
        //: for aWrap in userInfoArr {
        for aWrap in userInfoArr {
            //: WCDBUserInfoTable.db_updateUserInfo(aWrap)
            VersionInfoTable.ammunitionEqual(aWrap)
        }
    }
}
