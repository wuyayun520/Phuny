
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let str_produceData:[Character] = ["m","f","/","b","u","s","i","n","e","s","s","/","l","i","s","t"]

/*: "Any" :*/
fileprivate let str_titleText:String = "raw view effect viewAny"

/*: "58+" :*/
fileprivate let str_elementValue:String = "58+"

/*: "Yes" :*/
fileprivate let str_topData:String = "Yesif call"

/*: "tab" :*/
fileprivate let str_cellData:[UInt8] = [0x62,0x61,0x74]

/*: "page" :*/
fileprivate let str_keyOffContent:[UInt8] = [0x3f,0x30,0x36,0x34]

fileprivate func falseEvent(equal num: UInt8) -> UInt8 {
    let value = Int(num) + 49
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "minAge" :*/
fileprivate let str_areaText:[UInt8] = [0x3b,0x3f,0x38,0x17,0x31,0x33]

private func pathWith(block num: UInt8) -> UInt8 {
    return num ^ 86
}

/*: "maxAge" :*/
fileprivate let str_toName:[UInt8] = [0x32,0x3e,0x27,0x1e,0x38,0x3a]

private func curveAll(indicator num: UInt8) -> UInt8 {
    return num ^ 95
}

/*: "datingVideo" :*/
fileprivate let str_statusTitle:[UInt8] = [0x71,0x74,0x61,0x7c,0x7b,0x72,0x43,0x7c,0x71,0x70,0x7a]

private func toStyle(button num: UInt8) -> UInt8 {
    return num ^ 21
}

/*: "uid" :*/
fileprivate let str_gestureTitle:String = "UID"

/*: "mf/premiumStar/list" :*/
fileprivate let str_layerRegularText:String = "mf/premimale self type"
fileprivate let str_myValue:String = "umStreturn size height not to"

/*: "mf/business/adBanner" :*/
fileprivate let str_viewValue:String = "mf/blive text add"
fileprivate let str_deviceShareValue:String = "height make title right imagess/ad"

/*: "position" :*/
fileprivate let str_addressToName:[UInt8] = [0x58,0x47,0x5b,0x41,0x5c,0x41,0x47,0x46]

private func ofKit(row num: UInt8) -> UInt8 {
    return num ^ 40
}

/*: "bannerList" :*/
fileprivate let str_createText:String = "bmessagene"
fileprivate let str_showText:String = "video if if promotion colorrList"

/*: "mf/rank/list" :*/
fileprivate let str_appName:String = "else middle in let namemf/r"

/*: "name" :*/
fileprivate let str_delayText:[UInt8] = [0x2a,0x25,0x29,0x21]

private func actionStar(error num: UInt8) -> UInt8 {
    return num ^ 68
}

/*: "period" :*/
fileprivate let str_frameData:[UInt8] = [0x15,0x0,0x17,0xc,0xa,0x1]

/*: "user/position" :*/
fileprivate let str_imageData:[Character] = ["u","s","e","r","/","p","o"]
fileprivate let str_nearOfData:String = "sequaltequalon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpectralColourRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum StyleSignedQuantityerval: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class SpectralColourRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func anyTextCompletion(tab: StyleSignedQuantityerval, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(str_produceData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if consLet_limitTableValue == "Any".localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if consLet_limitTableValue == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = consLet_limitTableValue.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if consLet_deviceText == "Yes".localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = ["tab": tab.rawValue,
                           //: "page": listPage,
                           "page": listPage,
                           //: "minAge": minAge,
                           "minAge": minAge,
                           //: "maxAge": maxAge,
                           "maxAge": maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: str_statusTitle.map{toStyle(button: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict["uid"] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = VideoDeviceHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func afterBar(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(str_layerRegularText.prefix(8)) + String(str_myValue.prefix(4)) + "ar/list")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = ["page": premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = CountSendMeasurable.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func serverPosition(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(str_viewValue.prefix(4)) + "usine" + String(str_deviceShareValue.suffix(5)) + "Banner")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: str_addressToName.map{ofKit(row: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
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

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_createText.replacingOccurrences(of: "message", with: "an") + String(str_showText.suffix(5)))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = LastModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func redirect(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(str_appName.suffix(4)) + "ank/list")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func microdot(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(str_imageData) + str_nearOfData.replacingOccurrences(of: "equal", with: "i"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [VideoDeviceHandyJSON] = //: return Array<VideoDeviceHandyJSON>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [VideoDeviceHandyJSON] = //: return Array<VideoDeviceHandyJSON>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [CountSendMeasurable] = //: return Array<CountSendMeasurable>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [LastModelType] = //: return Array<LastModelType>()
        .init()
    //: }()
}
