
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let str_viewText:String = "V4ujGjsnor text player index"
fileprivate let str_labelContent:[Character] = ["N","U","l","6","R","v","g","j","v","g"]
fileprivate let str_pushValue:[Character] = ["D","6","m","9","1"]

/*: "data/index" :*/
fileprivate let str_myTitle:String = "clear log for backgrounddata/i"
fileprivate let str_topSearchName:[Character] = ["n","d","e","x"]

/*: "toUid" :*/
fileprivate let str_fatalName:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let str_userName:String = "uasset"

/*: "POST" :*/
fileprivate let str_whiteArcName:[Character] = ["P","O","S","T"]

/*: "Token" :*/
fileprivate let str_dataContainerValue:String = "bottom resign let stop fireToken"

/*: "%@" :*/
fileprivate let str_makeValue:[Character] = ["%","@"]

/*: "无法解析出JSON字符串" :*/
fileprivate let str_picBirthdayValue:String = "无法解\u{6790}出J"

/*: "plat" :*/
fileprivate let str_countData:String = "normalat"

/*: "ios" :*/
fileprivate let str_messageText:[Character] = ["i","o","s"]

/*: "packageId" :*/
fileprivate let str_textName:[Character] = ["p"]
fileprivate let str_transformData:String = "name image menuackageId"

/*: "channel" :*/
fileprivate let str_collectionText:String = "CH"
fileprivate let str_succeedData:String = "auseruserel"

/*: "type" :*/
fileprivate let str_textValueInData:String = "TYPE"

/*: "stat" :*/
fileprivate let str_roomMyData:[Character] = ["s","t","a","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire

//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let consLet_contentData = ManagerReactiveCompatible()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let consLet_timeData = (String(str_viewText.prefix(7)) + String(str_labelContent) + String(str_pushValue))

//: class UploadRecordManage: NSObject {
class ManagerReactiveCompatible: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func postEqual(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_myTitle.suffix(6)) + String(str_topSearchName))
        //: reqModel.requestServer = IndexStyleAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = IndexStyleAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.getEnterCountProgrammeDict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary(jsonString: jsonStr!)
            dict["c"] = NSDictionary(jsonString: jsonStr!)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic["toUid"] = toUid
            }
            //: messageDic["uid"] = IndexStyleAppManager.share.loginUserMode.userID
            messageDic["uid"] = IndexStyleAppManager.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.roundness(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func selectEvent(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_myTitle.suffix(6)) + String(str_topSearchName))
        //: reqModel.requestServer = IndexStyleAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = IndexStyleAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.getEnterCountProgrammeDict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = IndexStyleAppManager.share.loginUserMode.userID
        messageDic["uid"] = IndexStyleAppManager.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.roundness(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func roundness(model: SafetyMarginReactiveCompatible, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = consLet_listTitle.sendOf(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.statusJudge()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = "POST"
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: "Token")

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", consLet_timeData)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.bluntEqual(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.equal(for: key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<BlockVideoBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func bluntEqual(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (str_picBirthdayValue + "SON字\u{7b26}串"))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension ManagerReactiveCompatible {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func getEnterCountProgrammeDict() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict["plat"] = "ios" /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(String(str_textName) + String(str_transformData.suffix(8)))] = consLet_packageName /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = consLet_environmentContent /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.statusJudge() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict["channel"] = consLet_packageName /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
