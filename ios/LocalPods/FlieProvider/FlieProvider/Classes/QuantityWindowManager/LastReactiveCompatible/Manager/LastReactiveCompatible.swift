
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let str_viewValue:[Character] = ["m","f","/","u","s","e","r","/"]
fileprivate let str_enableAppText:[Character] = ["r","e","c","o","m","m","e"]
fileprivate let str_photoValue:[Character] = ["n","d","U","s","e","r"]

/*: "page" :*/
fileprivate let str_dataValue:[UInt8] = [0x65,0x67,0x61,0x70]

/*: "mf/user/singleUser" :*/
fileprivate let str_mePromptTitle:String = "mf/userlabel size let make add"
fileprivate let str_resourceText:[Character] = ["/","s","i","n","g","l","e","U","s","e","r"]

/*: "uid" :*/
fileprivate let str_hideName:[UInt8] = [0xf3,0xef,0xe2]

private func nameManager(app num: UInt8) -> UInt8 {
    return num ^ 134
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LastReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class LastReactiveCompatible: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func enableUtilizer(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(str_viewValue) + String(str_enableAppText) + String(str_photoValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = ["page": recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = OnlyModelType.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func today(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(str_mePromptTitle.prefix(7)) + String(str_resourceText))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = OnlyModelType.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [OnlyModelType] = //: return Array<OnlyModelType>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [OnlyModelType] = //: return Array<OnlyModelType>()
        .init()
    //: }()
}
