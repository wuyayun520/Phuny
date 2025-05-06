
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let str_leadingData:String = "block"
fileprivate let str_textGoldName:[Character] = ["p","p","/","g","e","t","C","o","n","f","i","g"]

/*: "mf/user/getMyInfo" :*/
fileprivate let str_commentContent:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","M","y","I","n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let str_giftName:String = "self window show space errormf/u"
fileprivate let str_redData:String = "enter background vargetIn"
fileprivate let str_levelText:[Character] = ["u","m","n"]

/*: "%.2f" :*/
fileprivate let str_modelContent:String = "for view path%.2f"

/*: "mfCoin" :*/
fileprivate let str_logData:String = "mfCoinvar style back self"

/*: "mf/index/getConfig" :*/
fileprivate let str_inputValue:String = "property item startmf/inde"
fileprivate let str_positionText:[Character] = ["x","/","g","e","t","C","o","n","f","i","g"]

/*: _ :*/
fileprivate let str_startData:String = "flow"

/*: "baseinfo =  :*/
fileprivate let str_canText:[Character] = ["b","a","s","e","i","n","f","o"," ","="]
fileprivate let str_titleComponentName:[Character] = [" "]

/*: "UserBasicInfoSetting" :*/
fileprivate let str_appTitle:String = "Userat error gift text item"
fileprivate let str_addData:String = "data gift let truenfoSe"
fileprivate let str_willValue:String = "ttintervalng"

/*: "/userTag.json" :*/
fileprivate let str_sessionContent:String = "view show manager/user"
fileprivate let str_atTitle:String = "if record backTag.json"

/*: "json 解析失败" :*/
fileprivate let str_toPinData:String = "json string main session equal app"
fileprivate let str_skipName:String = "解\u{6790}失败"

/*: "app/reportDeviceId" :*/
fileprivate let str_imageText:String = "limit finish quoteapp/"
fileprivate let str_modeData:String = "recording view model acceptrtDevi"
fileprivate let str_dateToContent:String = "voice observer equalceId"

/*: "p0" :*/
fileprivate let str_insertViewData:[Character] = ["p","0"]

/*: "token" :*/
fileprivate let str_stepTitle:[UInt8] = [0x98,0x83,0x87,0x89,0x82]

private func titleAction(to num: UInt8) -> UInt8 {
    return num ^ 236
}

/*: "app/reportFcmPushToken" :*/
fileprivate let str_momentText:String = "string circleapp/repo"
fileprivate let str_dataTitle:String = "model listrtFcm"
fileprivate let str_labelTitle:String = "load enable time publicPushToken"

/*: "app/init" :*/
fileprivate let str_presentText:String = "path match let ofapp/ini"
fileprivate let str_bottomTitle:String = "group"

/*: "app/ping" :*/
fileprivate let str_socialTitle:String = "app/system live view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceManagerRequest.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import UIKit
import UIKit

//: import Alamofire
import Alamofire

//: import Adjust
import Adjust

//: import FirebaseMessaging
import FirebaseMessaging

//: var isRequestingInit = false
var consLet_recordInfoValue = false

//: var isRetryDeviceIdTime = 3.0
var consLet_barVideoTitle = 3.0

//: class AppManagerRequest: NSObject {
class DeviceManagerRequest: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func dataCompletion(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = SafetyMarginReactiveCompatible()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (str_leadingData.replacingOccurrences(of: "block", with: "a") + String(str_textGoldName))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                consLet_partyTitle.set(result, forKey: consLet_tableValue)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<LabelHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: IndexStyleAppManager.share.appConfigMode = configModel
                    IndexStyleAppManager.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: consLet_progressValue, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = consLet_partyTitle.dictionary(forKey: consLet_tableValue)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<LabelHandyJSON>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: IndexStyleAppManager.share.appConfigMode = configModel
                    IndexStyleAppManager.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: consLet_progressValue, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func readOut(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(str_commentContent))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                consLet_partyTitle.set(result, forKey: consLet_keyPartyTitle)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<DominoUserModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: IndexStyleAppManager.share.loginUserMode = userModel
                    IndexStyleAppManager.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func toThat(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(str_giftName.suffix(4)) + "ser/" + String(str_redData.suffix(5)) + "foCol" + String(str_levelText))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: IndexStyleAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                IndexStyleAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func location(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(str_inputValue.suffix(7)) + String(str_positionText))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: IndexStyleAppManager.share.loginUserMode.sex))"
            let configKey = "\(consLet_netText)_\(String(describing: IndexStyleAppManager.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                consLet_partyTitle.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<IsoclinalReactiveCompatible>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: IndexStyleAppManager.share.appUserConfigMode = userModel
                    IndexStyleAppManager.share.appUserConfigMode = userModel
                    //: HiddenConversationListener.shared.func__LogingIn()
                    HiddenConversationListener.shared.instanceThen()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: IndexStyleAppManager.share.appUserConfigMode.baseInfo)
                    everyLast(baseinfo: IndexStyleAppManager.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        EqualLogTool.shared.betweenGift(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (UtilizationKingfisherCompatible.shared as! UtilizationKingfisherCompatible).anArrayOffline()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = consLet_partyTitle.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<IsoclinalReactiveCompatible>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: IndexStyleAppManager.share.appUserConfigMode = userModel
                    IndexStyleAppManager.share.appUserConfigMode = userModel
                    //: HiddenConversationListener.shared.func__LogingIn()
                    HiddenConversationListener.shared.instanceThen()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: consLet_contentValue, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func everyLast(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = consLet_partyTitle.string(forKey: consLet_errValue)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (String(str_canText) + String(str_titleComponentName)) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<UserBlockHandyJSON>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        consLet_partyTitle.set(baseinfo, forKey: consLet_errValue)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.ofAllVideo() + (String(str_appTitle.prefix(4)) + "BasicI" + String(str_addData.suffix(5)) + str_willValue.replacingOccurrences(of: "interval", with: "i"))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.underWith(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.itemTrademark(content: responseJson!, writePath: jsonPath + (String(str_sessionContent.suffix(5)) + String(str_atTitle.suffix(8))))
                            //: IndexStyleAppManager.share.func__loadUserTagCacheData()
                            IndexStyleAppManager.share.barDown()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(str_toPinData.prefix(5)) + str_skipName))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: IndexStyleAppManager.share.func__loadUserTagCacheData()
            IndexStyleAppManager.share.barDown()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func conversation() {
        //: func__reportDeviceIdentifier()
        subTool()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func subTool() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = SafetyMarginReactiveCompatible()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(str_imageText.suffix(4)) + "repo" + String(str_modeData.suffix(6)) + String(str_dateToContent.suffix(4)))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.statusJudge()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(consLet_timeData)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.equal(for: key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            consLet_listTitle.coloring(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if consLet_barVideoTitle <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + consLet_barVideoTitle) {
                    //: isRetryDeviceIdTime *= 2
                    consLet_barVideoTitle *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.subTool()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func handle() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = ["token": token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = SafetyMarginReactiveCompatible()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(str_momentText.suffix(8)) + String(str_dataTitle.suffix(5)) + String(str_labelTitle.suffix(9)))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                consLet_listTitle.coloring(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func noApp() {
        //: if isRequestingInit {
        if consLet_recordInfoValue {
            //: return
            return
        }
        //: isRequestingInit = true
        consLet_recordInfoValue = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = "app/init"
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            consLet_recordInfoValue = false
            //: if succeed && IndexStyleAppManager.share.request_HasInit == false {
            if succeed && IndexStyleAppManager.share.request_HasInit == false {
                //: IndexStyleAppManager.share.request_HasInit = true
                IndexStyleAppManager.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func showConstraint(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = "app/ping"
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
