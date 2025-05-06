
//: Declare String Begin

/*: "className" :*/
fileprivate let str_indexName:[Character] = ["c","l","a","s","s","N","a","m","e"]

/*: "nativeClassName" :*/
fileprivate let str_cellText:[Character] = ["n","a","t","i","v","e","C","l","a","s"]
fileprivate let str_backgroundTitle:String = "sNamelast hide"

/*: "effectType" :*/
fileprivate let str_hiddenContent:String = "etablee"
fileprivate let str_partyValue:String = "ctTypeview gallery"

/*: "gifFile" :*/
fileprivate let str_makeBottomTitle:String = "gtap"
fileprivate let str_identityText:String = "fFileself self let let var"

/*: "versions" :*/
fileprivate let str_mediumData:String = "intimateersi"
fileprivate let str_contentValue:[Character] = ["o","n","s"]

/*: "config" :*/
fileprivate let str_iconTitle:[Character] = ["c","o","n","f","i","g"]

/*: "mainFile" :*/
fileprivate let str_backTitle:[Character] = ["m","a","i","n","F","i","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextModelType.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum SumScalarLiteral: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum ValueRepresentable: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum WhiteMultiplierTarget: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct TextModelType: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = SumScalarLiteral.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension TextModelType {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func sinceEnd(dic: NSDictionary) -> TextModelType {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = TextModelType()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(str_indexName))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(str_cellText) + String(str_backgroundTitle.prefix(5)))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(str_hiddenContent.replacingOccurrences(of: "table", with: "ff") + String(str_partyValue.prefix(6)))] as? SumScalarLiteral ?? SumScalarLiteral.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic["gifFile"] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[SumScalarLiteral.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(str_mediumData.replacingOccurrences(of: "intimate", with: "v") + String(str_contentValue))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item["config"] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(str_indexName))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(str_cellText) + String(str_backgroundTitle.prefix(5)))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(str_hiddenContent.replacingOccurrences(of: "table", with: "ff") + String(str_partyValue.prefix(6)))] as? SumScalarLiteral ?? SumScalarLiteral.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(str_backTitle))] as? String ?? ""
        }
        //: return model
        return model
    }
}
