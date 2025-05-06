
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let str_finishData:[Character] = ["l"]
fileprivate let str_menuTitle:[Character] = ["a","u","n","c","h","F","r","o","m","A","p","n","s"]

/*: "type" :*/
fileprivate let str_attributeText:String = "TYPE"

/*: "fromUid" :*/
fileprivate let str_visualText:String = "fromUidvalue container"

/*: "roomId" :*/
fileprivate let str_cellName:String = "roomIdfalse more"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EveryLastThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum VersionTableConvertible: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class EveryLastThen: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = EveryLastThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func withInit() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (String(str_finishData) + String(str_menuTitle)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.equalInfo()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func equalInfo() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json["type"].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = VersionTableConvertible(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json["fromUid"].stringValue
                    //: PostPushManager.share.func__pushToPriveteChatVC(chatID: fromUid)
                    PostPushManager.share.birthday(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json["roomId"].stringValue
                    //: PostPushManager.share.func__pushToGroupChat(groupId: roomId)
                    PostPushManager.share.aboveContent(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json["fromUid"].stringValue
                    //: PostPushManager.share.func__pushToUserDetailVC(uid: fromUid)
                    PostPushManager.share.miniskirt(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                EveryLastThen.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                EveryLastThen.share.launchFromApns = false
            }
        }
    }
}
