
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let str_sizeValue:String = "mf/useguard enable user type"
fileprivate let str_keyName:[Character] = ["t","U","s","e","r","I","n","f","o"]

/*: "uid" :*/
fileprivate let str_colorName:[UInt8] = [0x45,0x39,0x34]

fileprivate func medicalCenter(to num: UInt8) -> UInt8 {
    let value = Int(num) - 208
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/getReceivedGifts" :*/
fileprivate let str_addValue:String = "mf/usmake for list network"
fileprivate let str_stackChangeQuoteText:String = "label make else selfetRec"
fileprivate let str_textFromName:String = "data size heightGifts"

/*: "mf/crush/send" :*/
fileprivate let str_addData:[Character] = ["m","f","/","c","r","u"]
fileprivate let str_callData:String = "self view count editor sizesh/send"

/*: "targetUid" :*/
fileprivate let str_textRoomValue:[UInt8] = [0xc1,0xd4,0xc7,0xd2,0xd0,0xc1,0xe0,0xdc,0xd1]

private func eventLabel(female num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "user/attention" :*/
fileprivate let str_layerData:[UInt8] = [0x36,0x34,0x26,0x33,0xf0,0x22,0x35,0x35,0x26,0x2f,0x35,0x2a,0x30,0x2f]

fileprivate func physicsLab(title num: UInt8) -> UInt8 {
    let value = Int(num) + 63
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/removeAttention" :*/
fileprivate let str_arrayText:String = "USER"
fileprivate let str_cookieTitle:String = "eAttefile make context"
fileprivate let str_tapData:[Character] = ["n","t","i","o","n"]

/*: "attentionUid" :*/
fileprivate let str_answerSucceedValue:[UInt8] = [0x0,0x15,0x15,0x4,0xf,0x15,0x8,0xe,0xf,0x34,0x8,0x5]

/*: "removeAttentionUid" :*/
fileprivate let str_checkName:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let str_timeTitle:[UInt8] = [0xfd,0xfb,0xed,0xfa,0xa7,0xe9,0xec,0xec,0xca,0xe4,0xe9,0xeb,0xe3]

private func touchPlain(with num: UInt8) -> UInt8 {
    return num ^ 136
}

/*: "user/remBlack" :*/
fileprivate let str_toData:String = "user/type try view tap"
fileprivate let str_keySucceedName:[Character] = ["r","e","m","B","l","a","c","k"]

/*: "mf/moment/like" :*/
fileprivate let str_startRequestTitle:String = "mf/momentap type page value class"
fileprivate let str_fileTitle:[Character] = ["t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let str_textData:[UInt8] = [0xa2,0xa0,0xa2,0xaa,0xa1,0xbb,0x86,0xab]

private func userHidden(add num: UInt8) -> UInt8 {
    return num ^ 207
}

/*: "type" :*/
fileprivate let str_aboutName:[UInt8] = [0x34,0x39,0x30,0x25]

private func iconDataRoom(view num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let str_targetData:[Character] = ["m","f","/","u","s","e","r","/","u","p","l","o","a","d","A"]
fileprivate let str_sendLayerValue:String = "error to for scaleuthPic"

/*: "auth_pic" :*/
fileprivate let str_valueEqualText:[UInt8] = [0x63,0x69,0x70,0x5f,0x68,0x74,0x75,0x61]

/*: "mf/newFeature/residualInfo" :*/
fileprivate let str_traceText:String = "mf/neelse share add container for"
fileprivate let str_inputContent:String = "true imagere/re"
fileprivate let str_galleryValue:[Character] = ["s","i","d","u","a"]
fileprivate let str_stageData:[Character] = ["l","I","n","f","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenRequestManager.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class HiddenRequestManager: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func otherDataCompletionNameUserWrite(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(str_sizeValue.prefix(6)) + "r/ge" + String(str_keyName))
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func received(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(str_addValue.prefix(5)) + "er/g" + String(str_stackChangeQuoteText.suffix(5)) + "eived" + String(str_textFromName.suffix(5)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func seer(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(str_addData) + String(str_callData.suffix(7)))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_textRoomValue.map{eventLabel(female: $0)}, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func relieve(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: str_layerData.map{physicsLab(title: $0)}, encoding: .utf8)! : (str_arrayText.lowercased() + "/remov" + String(str_cookieTitle.prefix(5)) + String(str_tapData))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: str_answerSucceedValue.map{$0^97}, encoding: .utf8)!: uid] : [String(bytes: str_checkName.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func clickIcon(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: str_timeTitle.map{touchPlain(with: $0)}, encoding: .utf8)! : (String(str_toData.prefix(5)) + String(str_keySucceedName))
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    MonthThen.shared.dataConverterRoom(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    MonthThen.shared.ear(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func doMagnitude(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(str_startRequestTitle.prefix(8)) + String(str_fileTitle))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: str_textData.map{userHidden(add: $0)}, encoding: .utf8)!: mid, "type": type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func achromaticColor(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func productAll(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(str_targetData) + String(str_sendLayerValue.suffix(6)))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = ["auth_pic": data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 查询套餐剩余量

    //: class func func__reqResidualInfo(completion: @escaping FinishBlock) {
    class func yesterday(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = "mf/newFeature/residualInfo"
        reqModel.requestPath = (String(str_traceText.prefix(5)) + "wFeatu" + String(str_inputContent.suffix(5)) + String(str_galleryValue) + String(str_stageData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
