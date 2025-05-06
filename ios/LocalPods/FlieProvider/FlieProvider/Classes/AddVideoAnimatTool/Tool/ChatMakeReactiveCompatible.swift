
//: Declare String Begin

/*: "mf/business/giftList" :*/
fileprivate let str_enableColorContentText:[Character] = ["m","f","/","b","u"]
fileprivate let str_dateValue:[Character] = ["s","i","n","e","s","s","/","g","i","f","t","L","i","s","t"]

/*: "type" :*/
fileprivate let str_pathText:[UInt8] = [0xae,0xb3,0xaa,0x9f]

fileprivate func onPrice(label num: UInt8) -> UInt8 {
    let value = Int(num) + 198
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/chatRoom/giftList" :*/
fileprivate let str_viewValue:String = "ping have the supermf/c"
fileprivate let str_propertyValueName:String = "oom/giapp for view"
fileprivate let str_normalData:[Character] = ["t"]

/*: "live/giftList" :*/
fileprivate let str_userText:String = "live/grow view push tap match"

/*: "party/giftList" :*/
fileprivate let str_cellValue:[Character] = ["p","a","r","t","y","/","g","i","f","t"]
fileprivate let str_shareName:[Character] = ["L","i","s","t"]

/*: "IM/getMessageList" :*/
fileprivate let str_equalData:String = "IM/getcolor gender"
fileprivate let str_documentTitle:[Character] = ["M","e","s","s","a","g","e","L","i","s","t"]

/*: "mf/business/sendMsg" :*/
fileprivate let str_pointValue:String = "self modelmf/bu"
fileprivate let str_screenText:String = "ss/sego component var equal var"
fileprivate let str_borderTitle:String = "output titlendMsg"

/*: "mf/chatRoom/sendMsg" :*/
fileprivate let str_acceptMaxValue:[Character] = ["m","f","/","c","h","a"]
fileprivate let str_textValue:[Character] = ["t","R","o","o","m","/","s","e","n","d","M","s","g"]

/*: "mf/business/sendGift" :*/
fileprivate let str_viewName:String = "mf/bustatus size succeed if name"
fileprivate let str_addData:[Character] = ["s","e","n"]
fileprivate let str_listLiveContent:String = "data formatdGift"

/*: "mf/chatRoom/sendGift" :*/
fileprivate let str_buttonValue:String = "mf/cfile status direct"
fileprivate let str_addTitle:String = "retain top color winoom/sen"
fileprivate let str_dataValue:String = "view image let icondGift"

/*: "live/sendGift" :*/
fileprivate let str_appearShowText:[Character] = ["l","i","v","e","/","s","e","n","d","G","i","f","t"]

/*: "party/sendGift" :*/
fileprivate let str_labelContent:[Character] = ["p","a","r","t","y","/","s","e","n","d","G","i","f","t"]

/*: "mf/user/getChatInfo" :*/
fileprivate let str_clearData:String = "capacity associate statusmf/use"
fileprivate let str_cellContent:String = "lab live load guardhatInfo"

/*: "IM/getMessageUserInfoList" :*/
fileprivate let str_appValue:String = "name equal time textIM/get"
fileprivate let str_atCommentData:String = "in modern at no countageU"
fileprivate let str_successFromIndexName:String = "foListself gift else app of"

/*: "mf/crush/whoLikeMeList" :*/
fileprivate let str_emptyValue:[Character] = ["m","f","/","c","r","u","s","h","/","w"]
fileprivate let str_objectText:String = "type equal image corner imagehoLike"

/*: "mf/crush/ignore" :*/
fileprivate let str_attributeName:String = "mf/cdata var button manager"
fileprivate let str_userData:String = "print place/ignore"

/*: "mf/crush/like" :*/
fileprivate let str_itemValue:String = "mf/crusraw end"
fileprivate let str_nameValue:String = "cancel"
fileprivate let str_pathTitle:[Character] = ["/","l","i","k","e"]

/*: "mf/user/getRelation" :*/
fileprivate let str_imageDeviceManagerContent:String = "height screen make popmf/u"
fileprivate let str_genderValue:String = "table format view vargetRel"

/*: "user/attention" :*/
fileprivate let str_fieldData:[UInt8] = [0x20,0x26,0x30,0x27,0x7a,0x34,0x21,0x21,0x30,0x3b,0x21,0x3c,0x3a,0x3b]

private func labelData(content num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "user/removeAttention" :*/
fileprivate let str_marginPriceData:String = "to share user lowuser/"
fileprivate let str_toTitle:String = "eAttenvertical var label guard"

/*: "Can't earn points if you follow each other~" :*/
fileprivate let str_hideWhiteName:[UInt8] = [0x9a,0xb8,0xb7,0xfe,0xad,0xf9,0xbc,0xb8,0xab,0xb7,0xf9,0xa9,0xb6,0xb0,0xb7,0xad,0xaa,0xf9,0xb0,0xbf,0xf9,0xa0,0xb6,0xac,0xf9,0xbf,0xb6,0xb5,0xb5,0xb6,0xae,0xf9,0xbc,0xb8,0xba,0xb1,0xf9,0xb6,0xad,0xb1,0xbc,0xab,0xa7]

private func temporaryWorker(since num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "follow Success" :*/
fileprivate let str_visualValue:[Character] = ["f","o","l","l","o","w"," ","S","u","c","c","e","s","s"]

/*: "unfollow Success" :*/
fileprivate let str_shareTimeViewName:String = "definenfollo"
fileprivate let str_pathValue:String = "icon image with coinw Su"
fileprivate let str_modelTitle:String = "cceview"

/*: "translate/msg" :*/
fileprivate let str_headName:String = "tranpointla"
fileprivate let str_modifyName:String = "te/msgview leading equal push manager"

/*: "msgId" :*/
fileprivate let str_viewSharedComeName:[UInt8] = [0x0,0x6,0xfa,0xdc,0xf7]

fileprivate func dogTagMake(bottom num: UInt8) -> UInt8 {
    let value = Int(num) - 147
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "targetLng" :*/
fileprivate let str_bottomValue:[UInt8] = [0x1a,0xf,0x1c,0x9,0xb,0x1a,0x22,0x0,0x9]

private func imagePending(name num: UInt8) -> UInt8 {
    return num ^ 110
}

/*: "mf/greet/getAutoGreetContent" :*/
fileprivate let str_transactionName:[Character] = ["m","f","/","g","r","e","e","t","/","g","e","t","A","u","t","o","G","r","e","e","t","C","o","n"]
fileprivate let str_screenValue:String = "labnt"

/*: "mf/greet/getIntimatePhoto" :*/
fileprivate let str_quickName:String = "empty else var status selfmf/gr"
fileprivate let str_sizeValue:String = "view center equal selftIntim"
fileprivate let str_makeEqualName:[Character] = ["o","t","o"]

/*: "toUid" :*/
fileprivate let str_errorColorData:[UInt8] = [0x72,0x69,0x53,0x6f,0x62]

private func versionUp(send num: UInt8) -> UInt8 {
    return num ^ 6
}

/*: "mf/chatRoom/info" :*/
fileprivate let str_writeName:[Character] = ["m","f","/","c","h","a","t","R","o"]
fileprivate let str_makeName:String = "size object formatom/info"

/*: "mf/chatRoom/list" :*/
fileprivate let str_onName:[Character] = ["m","f","/","c","h","a","t"]
fileprivate let str_textData:String = "image var builderRoom/list"

/*: "roomId" :*/
fileprivate let str_countValue:[UInt8] = [0xea,0xf7,0xf7,0xf5,0xd1,0xfc]

private func beautyUser(send num: UInt8) -> UInt8 {
    return num ^ 152
}

/*: "needExtraInfo" :*/
fileprivate let str_hitText:[UInt8] = [0x6f,0x66,0x6e,0x49,0x61,0x72,0x74,0x78,0x45,0x64,0x65,0x65,0x6e]

/*: "mf/chatRoom/check" :*/
fileprivate let str_titleValue:[Character] = ["m","f","/","c","h","a","t","R","o","o","m","/","c","h","e","c","k"]

/*: "mf/chatRoom/joinOrQuit" :*/
fileprivate let str_logAtData:String = "mf/chimage list re request"
fileprivate let str_permissionTitle:String = "show classom/jo"
fileprivate let str_intervalValue:String = "let videoQuit"

/*: "mf/chatRoom/members" :*/
fileprivate let str_pauseTitle:[Character] = ["m","f","/","c","h","a","t","R","o","o","m","/","m"]
fileprivate let str_giftSectionData:String = "modebers"

/*: "translate/text" :*/
fileprivate let str_modelData:String = "trhiddenn"
fileprivate let str_priceValue:String = "return model datae/text"

/*: "text" :*/
fileprivate let str_pathName:[UInt8] = [0x8d,0x7e,0x91,0x8d]

fileprivate func socialRecord(photo num: UInt8) -> UInt8 {
    let value = Int(num) + 231
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/queryStatus" :*/
fileprivate let str_contentVideoData:[Character] = ["m","f","/","u","s","e","r","/","q","u","e","r","y","S","t","a","t","u"]
fileprivate let str_femalePathName:String = "define"

/*: "toUids" :*/
fileprivate let str_contentValue:[UInt8] = [0x36,0x2d,0x17,0x2b,0x26,0x31]

/*: "call/getCallTab" :*/
fileprivate let str_touchValue:[Character] = ["c","a","l","l","/","g","e"]
fileprivate let str_managerData:String = "tCallTabload model text user"

/*: "mf/user/remark" :*/
fileprivate let str_viewText:[Character] = ["m","f","/","u","s","e","r","/","r","e","m","a","r","k"]

/*: "content" :*/
fileprivate let str_frameData:[UInt8] = [0x9e,0x92,0x93,0x89,0x98,0x93,0x89]

private func soyaBean(edit num: UInt8) -> UInt8 {
    return num ^ 253
}

/*: "top" :*/
fileprivate let str_makeEqualTitle:[UInt8] = [0x70,0x6f,0x74]

/*: "mf/newFeature/likeList" :*/
fileprivate let str_fromTitle:String = "mf/nekit stage"
fileprivate let str_toData:String = "turhead"
fileprivate let str_pauseValue:[Character] = ["L","i","s","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChatMakeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/7.
//

//: import UIKit
import UIKit

//: public class TalkingChatRequestTool: NSObject {
public class ChatMakeReactiveCompatible: NSObject {
    //: public typealias RequestEndBlock = (_ t: Bool) -> Void
    public typealias RequestEndBlock = (_ t: Bool) -> Void
    //: typealias FinishBlocks = (_ succeed: Bool, _ result: NSDictionary) -> Void
    typealias FinishBlocks = (_ succeed: Bool, _ result: NSDictionary) -> Void
    //: public typealias RequestMsgUserListBlock = (_ succeed: Bool, _ dataArr: [UserHandyJSON]) -> Void
    public typealias RequestMsgUserListBlock = (_ succeed: Bool, _ dataArr: [UserHandyJSON]) -> Void

    /// 私信礼物面板
    /// - Parameters:
    ///   - type: 0=默认， 1=私密照片，2=私密视频,3=节目单
    ///   - completion: 回调
    //: class func req_ChatGiftList(type: String, completion: @escaping FinishBlock) {
    class func run(type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/business/giftList"
        reqModel.requestPath = (String(str_enableColorContentText) + String(str_dateValue))
        //: reqModel.params = ["type": type]
        reqModel.params = ["type": type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天室礼物面板
    /// - Parameters：
    ///   - completion: 回调
    //: class func req_ChatRoomGiftList(type: String, completion: @escaping FinishBlock) {
    class func codex(type _: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/chatRoom/giftList"
        reqModel.requestPath = (String(str_viewValue.suffix(4)) + "hatR" + String(str_propertyValueName.prefix(6)) + "ftLis" + String(str_normalData))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 直播礼物面板
    /// - Parameters：
    ///   - completion: 回调
    //: class func req_LiveGiftList(type: String, completion: @escaping FinishBlock) {
    class func createPackage(type _: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "live/giftList"
        reqModel.requestPath = (String(str_userText.prefix(6)) + "iftList")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 语聊房礼物面板
    /// - Parameters：
    ///   - completion: 回调
    //: class func req_partyGiftList(type: String, completion: @escaping FinishBlock) {
    class func oversightCompletion(type _: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "party/giftList"
        reqModel.requestPath = (String(str_cellValue) + String(str_shareName))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求系统消息
    /// - Parameter completion: 回调
    //: @objc class func req_sysMessageList(completion: @escaping FinishBlocks) {
    @objc class func equalWithTo(completion: @escaping FinishBlocks) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "IM/getMessageList"
        reqModel.requestPath = (String(str_equalData.prefix(6)) + String(str_documentTitle))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: completion(true, result as! NSDictionary)
                completion(true, result as! NSDictionary)
            }
        }
    }

    /// 私聊发送消息
    /// - Parameters:
    ///   - param: 传参
    ///   - completion: 回调
    //: class func req_SendPrivete(param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func privete(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/business/sendMsg"
        reqModel.requestPath = (String(str_pointValue.suffix(5)) + "sine" + String(str_screenText.prefix(5)) + String(str_borderTitle.suffix(5)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 公共聊天室发送消息
    /// - Parameters:
    ///   - param: 传参
    ///   - completion: 回调
    //: class func req_SendRoomMsg(param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func modeColor(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/chatRoom/sendMsg"
        reqModel.requestPath = (String(str_acceptMaxValue) + String(str_textValue))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_SendGiftPrivete( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func lagniappeEqual(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/business/sendGift"
        reqModel.requestPath = (String(str_viewName.prefix(5)) + "siness/" + String(str_addData) + String(str_listLiveContent.suffix(5)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天室送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_SendGiftChatRoom( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func upwardsCompletion(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/chatRoom/sendGift"
        reqModel.requestPath = (String(str_buttonValue.prefix(4)) + "hatR" + String(str_addTitle.suffix(7)) + String(str_dataValue.suffix(5)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 直播送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_SendGiftLive( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func tableCampOut(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "live/sendGift"
        reqModel.requestPath = (String(str_appearShowText))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 语聊房送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_sendPartyGift(param: [String: Any], completion: @escaping FinishBlock) {
    class func addCompletion(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "party/sendGift"
        reqModel.requestPath = (String(str_labelContent))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求聊天用户信息
    /// - Parameters:
    //: class func req_refreshUserChatInfo( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func report(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getChatInfo"
        reqModel.requestPath = (String(str_clearData.suffix(6)) + "r/getC" + String(str_cellContent.suffix(7)))
        //: reqModel.params = param
        reqModel.params = param
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求用户消息列表
    /// - Parameters:
    //: @objc class public func req_refreshMsgUserListInfo( param: Dictionary<String, Any>, completion: @escaping RequestMsgUserListBlock) {
    @objc public class func noLocal(param: [String: Any], completion: @escaping RequestMsgUserListBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "IM/getMessageUserInfoList"
        reqModel.requestPath = (String(str_appValue.suffix(6)) + "Mess" + String(str_atCommentData.suffix(4)) + "serIn" + String(str_successFromIndexName.prefix(6)))
        //: reqModel.params = param
        reqModel.params = param
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: completion(succeed, [])
                completion(succeed, [])
                //: return
                return
            }

            //: if let datas = Array<UserHandyJSON>.deserialize(from: result as? Array) {
            if let datas = Array<UserHandyJSON>.deserialize(from: result as? Array) {
                //: completion(succeed, datas as! [UserHandyJSON])
                completion(succeed, datas as! [UserHandyJSON])
            }
        }
    }

    /// 请求用户消息列表
    //: @objc class public func req_giftEffectDataUrl(giftUrl: String, path: String, completion: @escaping RequestEndBlock) {
    @objc public class func picGesture(giftUrl: String, path: String, completion: @escaping RequestEndBlock) {
        //: GJ.startGiftZipRequest(giftUrl: giftUrl, path: path) { succeed, result, errorModel in
        consLet_listTitle.listName(giftUrl: giftUrl, path: path) { succeed, _, _ in
            //: completion(succeed)
            completion(succeed)
        }
    }

    /// 谁心动我 - 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_whoLikeMeList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func blockOfMetal(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/crush/whoLikeMeList"
        reqModel.requestPath = (String(str_emptyValue) + String(str_objectText.suffix(6)) + "MeList")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 谁心动我 - nope拒绝操作
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_whoLikeMeIgnore(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func appStatus(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/crush/ignore"
        reqModel.requestPath = (String(str_attributeName.prefix(4)) + "rush" + String(str_userData.suffix(7)))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 谁心动我 - like操作
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_whoLikeMelike(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func analogDigitalConverterCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/crush/like"
        reqModel.requestPath = (String(str_itemValue.prefix(7)) + str_nameValue.replacingOccurrences(of: "cancel", with: "h") + String(str_pathTitle))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 关注列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_atationList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func clickText(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getRelation"
        reqModel.requestPath = (String(str_imageDeviceManagerContent.suffix(4)) + "ser/" + String(str_genderValue.suffix(6)) + "ation")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 关注操作
    /// - Parameters:
    /// - isAttention: 关注/取消
    ///   - completion: 回调
    //: class func req_atationTool(isAttention: Bool, params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func statusElement(isAttention: Bool, params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: let path = isAttention==true ? "user/attention" :"user/removeAttention"
        let path = isAttention == true ? String(bytes: str_fieldData.map{labelData(content: $0)}, encoding: .utf8)! : (String(str_marginPriceData.suffix(5)) + "remov" + String(str_toTitle.prefix(6)) + "tion")
        //: reqModel.requestPath = path
        reqModel.requestPath = path
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            // 统一处理toast
            //: if succeed {
            if succeed {
                //: if isAttention {
                if isAttention {
                    //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue {
                    if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue { // 女性
                        //: object.func__showStatusBarSuccessMsg(showMsg: "Can't earn points if you follow each other~".localized)
                        consLet_videoData.scaleMsg(showMsg: String(bytes: str_hideWhiteName.map{temporaryWorker(since: $0)}, encoding: .utf8)!.localized)
                        //: } else {
                    } else {
                        //: object.func__showStatusBarSuccessMsg(showMsg: "follow Success".localized)
                        consLet_videoData.scaleMsg(showMsg: (String(str_visualValue)).localized)
                    }
                    //: } else {
                } else {
                    //: object.func__showStatusBarSuccessMsg(showMsg: "unfollow Success".localized)
                    consLet_videoData.scaleMsg(showMsg: (str_shareTimeViewName.replacingOccurrences(of: "define", with: "u") + String(str_pathValue.suffix(4)) + str_modelTitle.replacingOccurrences(of: "view", with: "ss")).localized)
                }

                //: } else {
            } else {
                //: object.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                consLet_videoData.noblesseExtra(showMsg: errorModel?.errorMsg ?? "")
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 文本翻译
    /// - Parameters:
    ///   - msgId: 消息ID
    ///   - type=0表示私聊消息，type=1表示聊天室消息
    ///   - completion: 回调
    //: @objc class public func req_translateMsg(msgId: String, type: Int, completion: @escaping (_ succeed: Bool, _ result: NSDictionary, _ errorCode: Int) -> Void) {
    @objc public class func equalFor(msgId: String, type: Int, completion: @escaping (_ succeed: Bool, _ result: NSDictionary, _ errorCode: Int) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "translate/msg"
        reqModel.requestPath = (str_headName.replacingOccurrences(of: "point", with: "s") + String(str_modifyName.prefix(6)))
        //: reqModel.params = ["msgId": msgId, "targetLng": OverdoReactiveCompatible.getSystemLangCode(), "type": "\(type)"]
        reqModel.params = ["msgId": msgId, String(bytes: str_bottomValue.map{imagePending(name: $0)}, encoding: .utf8)!: OverdoReactiveCompatible.whenPhoto(), "type": "\(type)"]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result as? NSDictionary ?? [:], errorModel?.errorCode ?? 0)
            completion(succeed, result as? NSDictionary ?? [:], errorModel?.errorCode ?? 0)
        }
    }

    /// 获取一键打招呼内容
    ///   - completion: 回调
    //: class func req_getAutoGreetContent(completion: @escaping FinishBlock) {
    class func turnAround(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/getAutoGreetContent"
        reqModel.requestPath = (String(str_transactionName) + str_screenValue.replacingOccurrences(of: "lab", with: "te"))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取随机私密照片
    ///   - completion: 回调
    //: class func req_getIntimatePhoto(toUid: String, completion: @escaping FinishBlock) {
    class func mixIn(toUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/getIntimatePhoto"
        reqModel.requestPath = (String(str_quickName.suffix(5)) + "eet/ge" + String(str_sizeValue.suffix(6)) + "atePh" + String(str_makeEqualName))
        //: reqModel.params = ["toUid": toUid]
        reqModel.params = ["toUid": toUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取聊天广场在线人数和家族信息
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getChatRoomInfo(completion: @escaping FinishBlock) {
    class func primaryColor(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/chatRoom/info"
        reqModel.requestPath = (String(str_writeName) + String(str_makeName.suffix(7)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天广场列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getChatRoomList(completion: @escaping FinishBlock) {
    class func blacklist(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/chatRoom/list"
        reqModel.requestPath = (String(str_onName) + String(str_textData.suffix(9)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 检测聊天室
    /// - Parameters:
    ///   - roomId: 聊天室Id
    ///   - completion: 回调
    //: class func req_checkChatRoom(roomId: String, completion: @escaping FinishBlock) {
    class func strikeOut(roomId: String, completion: @escaping FinishBlock) {
        //: let params = ["roomId": roomId, "needExtraInfo": "1"]
        let params = ["roomId": roomId, String(bytes: str_hitText.reversed(), encoding: .utf8)!: "1"]
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/chatRoom/check"
        reqModel.requestPath = (String(str_titleValue))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 进入或退出聊天室
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_chatRoomJoinOrQuit(params: [String: Any], completion: @escaping FinishBlock) {
    class func remote(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/chatRoom/joinOrQuit"
        reqModel.requestPath = (String(str_logAtData.prefix(5)) + "atRo" + String(str_permissionTitle.suffix(5)) + "inOr" + String(str_intervalValue.suffix(4)))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天室在线名单
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getChatRoomMembers(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func numberernaliseList(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/chatRoom/members"
        reqModel.requestPath = (String(str_pauseTitle) + str_giftSectionData.replacingOccurrences(of: "mode", with: "em"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 文本翻译
    /// - Parameters:
    ///   - text: 文本
    ///   - completion: 回调
    //: class func req_translateText(text: String, completion: @escaping FinishBlock) {
    class func nameIn(text: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "translate/text"
        reqModel.requestPath = (str_modelData.replacingOccurrences(of: "hidden", with: "a") + "slat" + String(str_priceValue.suffix(6)))
        //: reqModel.params = ["text": text]
        reqModel.params = ["text": text]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 批量查询消息列表用户在线状态
    /// - Parameters:
    ///   - toUids: 用户ids
    ///   - completion: 回调
    //: @objc class public func req_queryStatus(toUids: String, completion: @escaping (_ succeed: Bool, _ result: [[String: Any]]?) -> Void) {
    @objc public class func completionDigitiserCoinVideoLowness(toUids: String, completion: @escaping (_ succeed: Bool, _ result: [[String: Any]]?) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/queryStatus"
        reqModel.requestPath = (String(str_contentVideoData) + str_femalePathName.replacingOccurrences(of: "define", with: "s"))
        //: reqModel.params = ["toUids": toUids, "type": 1]
        reqModel.params = ["toUids": toUids, "type": 1]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, _ in
            //: completion(succeed, result as? [[String: Any]] ?? [])
            completion(succeed, result as? [[String: Any]] ?? [])
        }
    }

    /// 拨打通话记录
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getCallTab(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func valueView(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "call/getCallTab"
        reqModel.requestPath = (String(str_touchValue) + String(str_managerData.prefix(8)))
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

    /// 新增/修改备注
    /// - Parameters:
    ///   - content: 备注内容
    ///   - isTop: 是否置顶，1：是，2：否
    ///   - toUid: 对方uid
    ///   - completion: 回调
    //: class func req_remark(content: String, isTop: Int, toUid: String, completion: @escaping FinishBlock) {
    class func ingredientDownEqualThrust(content: String, isTop: Int, toUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/remark"
        reqModel.requestPath = (String(str_viewText))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["content": content, "top": isTop, "toUid": toUid]
        reqModel.params = ["content": content, "top": isTop, "toUid": toUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// I Like列表数据
    /// - Parameter completion: 回调
    //: class func req_getILikeList(completion: @escaping FinishBlock) {
    class func replyCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/newFeature/likeList"
        reqModel.requestPath = (String(str_fromTitle.prefix(5)) + "wFea" + str_toData.replacingOccurrences(of: "head", with: "e") + "/like" + String(str_pauseValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
