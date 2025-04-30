
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let str_makeValue:String = "tag share maketoUser"
fileprivate let str_bringData:String = "model type ofInfo"

/*: "toUid" :*/
fileprivate let str_topValue:String = "appear start for home selftoUid"

/*: "nickname" :*/
fileprivate let str_sectionData:String = "edge"
fileprivate let str_labelText:String = "ICKNAME"

/*: "headPic" :*/
fileprivate let str_arrangeName:String = "enter app fileheadPic"

/*: "sex" :*/
fileprivate let str_colorText:String = "secrop"

/*: "age" :*/
fileprivate let str_leadingContent:String = "atranslate"

/*: "tpAuth" :*/
fileprivate let str_sizeValue:String = "color equal point dynamic buttontpAuth"

/*: "interest" :*/
fileprivate let str_weeTitle:String = "isharet"
fileprivate let str_methodGiftTapData:String = "emodelest"

/*: "picture" :*/
fileprivate let str_lastTitle:String = "pictall"
fileprivate let str_toName:String = "RE"

/*: "loungePlus" :*/
fileprivate let str_modelValue:[Character] = ["l","o","u"]
fileprivate let str_statusTitleValue:[Character] = ["n","g","e","P","l","u","s"]

/*: "vipSkinId" :*/
fileprivate let str_indexName:String = "show now in channelvipSk"
fileprivate let str_leadingTitle:String = "content clear if cellinId"

/*: "voicePrice" :*/
fileprivate let str_sharedValue:String = "vomanagere"
fileprivate let str_lengthNameData:String = "make color icon collectionPrice"

/*: "videoPrice" :*/
fileprivate let str_userValue:String = "videoPmode return class text"

/*: "voiceVIPPrice" :*/
fileprivate let str_addNameValue:[Character] = ["v","o","i","c","e","V","I","P"]
fileprivate let str_sizeText:[Character] = ["P","r","i","c","e"]

/*: "videoVIPPrice" :*/
fileprivate let str_thatName:[Character] = ["v","i","d","e","o","V","I"]
fileprivate let str_tabName:String = "PPricewith return return"

/*: "version" :*/
fileprivate let str_sourceName:String = "vobserve"
fileprivate let str_sharedTitle:[Character] = ["r","s","i","o","n"]

/*: "headPicFrame" :*/
fileprivate let str_sectionText:String = "iconead"
fileprivate let str_buttonName:String = "PicFview view each menu data"

/*: "signature" :*/
fileprivate let str_equalValue:String = "sigphonea"

/*: "constellation" :*/
fileprivate let str_tapData:[Character] = ["c","o","n","s","t","e","l","l","a","t","i","o","n"]

/*: "onlineStatus" :*/
fileprivate let str_nearData:[Character] = ["o","n","l","i","n","e","S"]
fileprivate let str_availableValue:[Character] = ["t","a","t","u","s"]

/*: "isNewUser" :*/
fileprivate let str_infoValue:String = "isNewUsertype then let"

/*: "isOfficial" :*/
fileprivate let str_trackLoadText:String = "isOfficiimagination size array bottom"
fileprivate let str_makeTitle:String = "corner"

/*: "userStatus" :*/
fileprivate let str_pointText:String = "effect standard returnuserSt"

/*: "remarkInfo" :*/
fileprivate let str_ofUserValue:String = "first content string background viewremarkI"
fileprivate let str_toInputAppearanceName:String = "nfresult"

/*: "content" :*/
fileprivate let str_allTitle:[Character] = ["c","o","n","t","e","n","t"]

/*: "top" :*/
fileprivate let str_shareContent:String = "tomake"

/*: "enableVideoCall" :*/
fileprivate let str_colorName:[Character] = ["e","n","a"]
fileprivate let str_labContent:String = "tap super center thebleVi"

/*: "voiceBean" :*/
fileprivate let str_callValue:[Character] = ["v","o","i","c"]
fileprivate let str_sizeTitle:[Character] = ["e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let str_photoValue:String = "monthd"
fileprivate let str_modelLineTitle:String = "lab info neteoBean"

/*: "prompt" :*/
fileprivate let str_giftName:[Character] = ["p","r","o","m","p","t"]

/*: "matchRate" :*/
fileprivate let str_localTitle:[Character] = ["m","a","t","c","h","R","a","t","e"]

/*: "existSess" :*/
fileprivate let str_viewText:[Character] = ["e","x","i","s"]
fileprivate let str_sizeName:[Character] = ["t","S","e","s","s"]

/*: "totalIntimate" :*/
fileprivate let str_makeName:String = "destroyodestroyal"
fileprivate let str_sendText:String = "mainfo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserHandyJSON.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class UserHandyJSON: NSObject, HandyJSON {
public class UserHandyJSON: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> UserHandyJSON {
    public class func willDic(userDic: [String: Any]) -> UserHandyJSON {
        //: let wrap = UserHandyJSON.init()
        let wrap = UserHandyJSON()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(str_makeValue.suffix(6)) + String(str_bringData.suffix(4)))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(str_makeValue.suffix(6)) + String(str_bringData.suffix(4)))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains("toUid") {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(str_sectionData.replacingOccurrences(of: "edge", with: "n") + str_labelText.lowercased())] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic["sex"] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(str_weeTitle.replacingOccurrences(of: "share", with: "n") + str_methodGiftTapData.replacingOccurrences(of: "model", with: "r"))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic["picture"] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(str_modelValue) + String(str_statusTitleValue))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(str_indexName.suffix(5)) + String(str_leadingTitle.suffix(4)))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(str_sharedValue.replacingOccurrences(of: "manager", with: "ic") + String(str_lengthNameData.suffix(5)))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(String(str_userValue.prefix(6)) + "rice")] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(str_addNameValue) + String(str_sizeText))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(str_thatName) + String(str_tabName.prefix(6)))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic["version"] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(str_sectionText.replacingOccurrences(of: "icon", with: "h") + String(str_buttonName.prefix(4)) + "rame")] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(str_equalValue.replacingOccurrences(of: "phone", with: "n") + "ture")] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(String(str_tapData))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(String(str_nearData) + String(str_availableValue))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(str_infoValue.prefix(9)))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(str_trackLoadText.prefix(8)) + str_makeTitle.replacingOccurrences(of: "corner", with: "al"))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(str_pointText.suffix(6)) + "atus")] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((String(str_ofUserValue.suffix(7)) + str_toInputAppearanceName.replacingOccurrences(of: "result", with: "o"))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(String(str_ofUserValue.suffix(7)) + str_toInputAppearanceName.replacingOccurrences(of: "result", with: "o"))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict["content"] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict["top"] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((String(str_colorName) + String(str_labContent.suffix(5)) + "deoCall")) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(String(str_colorName) + String(str_labContent.suffix(5)) + "deoCall")] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(str_callValue) + String(str_sizeTitle))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(str_callValue) + String(str_sizeTitle))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((str_photoValue.replacingOccurrences(of: "month", with: "vi") + String(str_modelLineTitle.suffix(6)))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(str_photoValue.replacingOccurrences(of: "month", with: "vi") + String(str_modelLineTitle.suffix(6)))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains("prompt") {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic["prompt"] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(str_localTitle))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(str_localTitle))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(str_viewText) + String(str_sizeName))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(str_viewText) + String(str_sizeName))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((str_makeName.replacingOccurrences(of: "destroy", with: "t") + "Inti" + str_sendText.replacingOccurrences(of: "info", with: "te"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(str_makeName.replacingOccurrences(of: "destroy", with: "t") + "Inti" + str_sendText.replacingOccurrences(of: "info", with: "te"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
