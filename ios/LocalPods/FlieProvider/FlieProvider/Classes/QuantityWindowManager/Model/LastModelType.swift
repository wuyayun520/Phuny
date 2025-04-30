
//: Declare String Begin

/*: "/dist/loungePlus/index5.html" :*/
fileprivate let str_currentTitle:[Character] = ["/","d","i","s","t","/","l"]
fileprivate let str_acceptTitle:[Character] = ["o","u","n","g","e","P","l","u","s","/","i","n","d","e"]
fileprivate let str_normalTitle:[Character] = ["x","5",".","h","t","m","l"]

/*: "&type=1" :*/
fileprivate let str_liveGiftTitle:[Character] = ["&","t","y","p","e"]
fileprivate let str_dateEndValue:[Character] = ["=","1"]

/*: "PremiumStarPlanBanner" :*/
fileprivate let str_viewData:[Character] = ["P","r","e","m","i","u","m","S","t"]
fileprivate let str_loadCornerToValue:[Character] = ["a","r","P","l","a","n","B","a","n","n","e","r"]

/*: "uid" :*/
fileprivate let str_equalTitle:String = "uobject"

/*: "mfChatGift" :*/
fileprivate let str_viewFloorValue:String = "mfChalet photo"
fileprivate let str_labTableValue:[Character] = ["t","G","i","f","t"]

/*: "mfChat" :*/
fileprivate let str_mData:String = "mfChaerror language error pick height"
fileprivate let str_underData:[Character] = ["t"]

/*: "user" :*/
fileprivate let str_cookieValue:[Character] = ["u","s","e","r"]

/*: "Please verification first" :*/
fileprivate let str_imageData:[Character] = ["P","l","e","a","s","e"," ","v","e","r","i","f","i","c","a","t","i"]
fileprivate let str_colorListContent:String = "name"
fileprivate let str_countName:[Character] = ["n"," ","f","i","r","s","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LastModelType.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct LastModelType: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension LastModelType {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func nonevent(model: LastModelType) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index5.html") {
            if newUrl.contains((String(str_currentTitle) + String(str_acceptTitle) + String(str_normalTitle))) {
                //: PostPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=1")
                PostPushManager.share.markParams(appendParams: "&type=1")
                //: return
                return
            }
            //: PostPushManager.share.func__pushToWebVC(urlStr: model.url)
            PostPushManager.share.gildTheLilyCount(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(str_viewData) + String(str_loadCornerToValue))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                LastModelType.pastBanner()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(str_viewFloorValue.prefix(5)) + String(str_labTableValue))) { // 私聊打开礼物面板
                    //: PostPushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    PostPushManager.share.birthday(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.itemBtn()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains("mfChat") { // 私聊
                    //: PostPushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    PostPushManager.share.birthday(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains("user") { // 用户详情
                    //: PostPushManager.share.func__pushToUserDetailVC(uid: uid)
                    PostPushManager.share.miniskirt(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = FailConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: PostPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            PostPushManager.share.gildTheLilyCount(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func pastBanner() {
        //: if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isSuccessed.rawValue ||
            //: IndexStyleAppManager.share.loginUserMode.isRealPersonAuth == false {
            IndexStyleAppManager.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if IndexStyleAppManager.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if IndexStyleAppManager.share.loginUserMode.premiumStarApplyStatus != ServerCollection.isOnGoing.rawValue {
                //: PostPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                PostPushManager.share.scene(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: PostPushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                PostPushManager.share.scene(webViewType: .StarPlanAudit)
            }
            //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().scaleMsg(showMsg: (String(str_imageData) + str_colorListContent.replacingOccurrences(of: "name", with: "o") + String(str_countName)).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = StyleViewController()
            //: PostPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            PostPushManager.share.overDoinglineVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().scaleMsg(showMsg: (String(str_imageData) + str_colorListContent.replacingOccurrences(of: "name", with: "o") + String(str_countName)).localized)
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
        }
    }
}
