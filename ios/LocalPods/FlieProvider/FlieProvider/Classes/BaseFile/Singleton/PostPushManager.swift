
//: Declare String Begin

/*: "fee" :*/
fileprivate let str_addValue:[Character] = ["f","e","e"]

/*: "VIPFee" :*/
fileprivate let str_imageSizeValue:[Character] = ["V","I","P","F","e","e"]

/*: "chattingNum" :*/
fileprivate let str_viewData:[Character] = ["c","h","a","t","t","i","n"]
fileprivate let str_equalValue:[Character] = ["g","N","u","m"]

/*: "You're already in her live room" :*/
fileprivate let str_centerValue:[UInt8] = [0xbc,0xd2,0xd8,0x8a,0xd5,0xc8,0x83,0xc4,0xcf,0xd5,0xc8,0xc4,0xc7,0xdc,0x83,0xcc,0xd1,0x83,0xcb,0xc8,0xd5,0x83,0xcf,0xcc,0xd9,0xc8,0x83,0xd5,0xd2,0xd2,0xd0]

fileprivate func moveCell(button num: UInt8) -> UInt8 {
    let value = Int(num) - 99
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUid" :*/
fileprivate let str_showViewName:[UInt8] = [0x37,0x2c,0x16,0x2a,0x27]

/*: "momentId" :*/
fileprivate let str_userContent:[UInt8] = [0x37,0x35,0x37,0x3f,0x34,0x2e,0x13,0x3e]

/*: "extra" :*/
fileprivate let str_streamName:[UInt8] = [0xf4,0x7,0x3,0x1,0xf0]

fileprivate func moreLab(input num: UInt8) -> UInt8 {
    let value = Int(num) - 143
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "uid" :*/
fileprivate let str_scaleTitle:[UInt8] = [0x64,0x69,0x75]

/*: "onlineStatus" :*/
fileprivate let str_monthValue:[UInt8] = [0x40,0x41,0x43,0x46,0x41,0x4a,0x7c,0x5b,0x4e,0x5b,0x5a,0x5c]

private func endUser(name num: UInt8) -> UInt8 {
    return num ^ 47
}

/*: "isNewUser" :*/
fileprivate let str_rangeData:[UInt8] = [0x77,0x6d,0x50,0x7b,0x69,0x4b,0x6d,0x7b,0x6c]

/*: "userStatus" :*/
fileprivate let str_managerContent:[UInt8] = [0x17,0x11,0x7,0x10,0x31,0x16,0x3,0x16,0x17,0x11]

private func mVideo(of num: UInt8) -> UInt8 {
    return num ^ 98
}

/*: "Account is restricted！" :*/
fileprivate let str_selectData:String = "clear selfAccoun"
fileprivate let str_barName:String = "table"
fileprivate let str_blockText:[Character] = ["s","t","r","i","c","t","e","d","\u{ff01}"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_modelData:[UInt8] = [0xb3,0x94,0x9c,0x99,0x90,0x91,0xd5,0x81,0x9a,0xd5,0x90,0x9b,0x81,0x90,0x87,0xd5,0x81,0x9d,0x90,0xd5,0x96,0x9d,0x94,0x81,0xd5,0x87,0x9a,0x9a,0x98,0xdb,0xd5,0xa5,0x99,0x90,0x94,0x86,0x90,0xd5,0x81,0x87,0x8c,0xd5,0x94,0x92,0x94,0x9c,0x9b,0xd5,0x99,0x94,0x81,0x90,0x87]

private func valueView(image num: UInt8) -> UInt8 {
    return num ^ 245
}

/*: "url" :*/
fileprivate let str_titleValue:[Character] = ["u","r","l"]

/*: "userDetail" :*/
fileprivate let str_labText:String = "USER"
fileprivate let str_screenData:String = "button"

/*: "&type=7" :*/
fileprivate let str_responseName:String = "&type=7white manager make let"

/*: "&type=0" :*/
fileprivate let str_imageValue:[Character] = ["&","t","y","p","e","=","0"]

/*: "amount" :*/
fileprivate let str_homePublishLabValue:[UInt8] = [0x74,0x6e,0x75,0x6f,0x6d,0x61]

/*: "transparency" :*/
fileprivate let str_showValue:String = "trawillspar"
fileprivate let str_beanWinName:String = "statuscy"

/*: "`%^{}\"[]|\\<>" :*/
fileprivate let str_hiddenBackgroundName:String = "`%^{}\"["
fileprivate let str_colorValue:String = "]|\\<>"

/*: "version= :*/
fileprivate let str_everyName:[Character] = ["v","e","r","s","i"]
fileprivate let str_managerTitle:String = "on=private mode min height self"

/*: &packageId= :*/
fileprivate let str_endText:String = "&packaerror hidden in"
fileprivate let str_pureName:String = "geId=error value equal to image"

/*: &bundleId= :*/
fileprivate let str_priceCoverData:[Character] = ["&","b","u","n","d","l","e"]
fileprivate let str_extraTitle:[Character] = ["I","d","="]

/*: & :*/
fileprivate let str_actionText:String = "&"

/*: ? :*/
fileprivate let str_receiveTitle:String = "?"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PostPushManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class PostPushManager: NSObject {
public class PostPushManager: NSObject {
    //: @objc static public let share = PostPushManager()
    @objc public static let share = PostPushManager()
    //: private override init() {}
    override private init() {}
}

//: extension PostPushManager {
extension PostPushManager {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func exceptBe(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        consLet_contentData.postEqual(eventID: consLet_clickTitle)
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        KeyPermissionTool.searchAndMicrophoneCell { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            LogSendThen.then { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = FailRecognizerDelegate()
                //: vc.fee = json["fee"].intValue
                vc.fee = json["fee"].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json["VIPFee"].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(String(str_viewData) + String(str_equalValue))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.userRead()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func fromEqual() {
        //: IndexStyleAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        IndexStyleAppManager.share.userFillInfoMode = TotalensityInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = ServerTotalensityGenderVc()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = overDoinglineVc()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func actuarialTable(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = overDoinglineVc()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: ContextViewController.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: PresentationReactiveCompatible.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = ContextViewController()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func miniskirt(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.userRead() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? RoomContextViewController, DecisionMakerReactiveCompatible.barIn().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.trunk()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: LogViewDelegate.self), EqualSendReactiveCompatible.clout().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            EqualSendReactiveCompatible.clout().noText()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? CuttingEdgeThen {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.aggregationData()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = CuttingEdgeThen(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        uphold()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func anTarget(uid: String, enterType: VersionEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard KeyPermissionTool.militaryPost() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(DecisionMakerReactiveCompatible.barIn().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.noblesseExtra(showMsg: String(bytes: str_centerValue.map{moveCell(button: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        ServerReactiveCompatible().irrupt(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = DomicileModelType.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.overDoinglineVc()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: QualityPlayListener.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! QualityPlayListener).imageFinish()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            DecisionMakerReactiveCompatible.barIn().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = QualityPlayListener()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                consLet_contentData.postEqual(eventID: consLet_meetingName, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                consLet_contentData.postEqual(eventID: consLet_barAttributeValue, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func drogueAction(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if DecisionMakerReactiveCompatible.barIn().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            noblesseExtra(showMsg: consLet_netName)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == EqualSendReactiveCompatible.clout().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            EqualSendReactiveCompatible.clout().tin()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if EqualSendReactiveCompatible.clout().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                EqualSendReactiveCompatible.clout().cubby(roomId: roomId!, beforeRoomId: EqualSendReactiveCompatible.clout().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        EqualSendReactiveCompatible.clout().colorModel(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func colorGroup(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = PresentationCalorieChartDataSource(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = overDoinglineVc()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func birthday(chatID: String, isFrom: ModelDeviceFromEnum = .Normal, completion: ((_ vc: CountensityViewController) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != OverdoReactiveCompatible.getXiaoMiID() {
        if chatID != OverdoReactiveCompatible.winImage() { // 系统消息
            //: ProgressHUD.show()
            DeviceFailThen.callMake()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = ["toUid": chatID, String(bytes: str_userContent.map{$0^90}, encoding: .utf8)!: "0", "extra": "1"]
            //: TalkingChatRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            ChatMakeReactiveCompatible.report(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = UserHandyJSON.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = UserHandyJSON.willDic(userDic: result as! [String: Any])
                //: AddInfoManager.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                AddInfoManager.secret(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = ["uid": chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: str_monthValue.map{endUser(name: $0)}, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: str_rangeData.map{$0^30}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: str_managerContent.map{mVideo(of: $0)}, encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: consLet_appData,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.noblesseExtra(showMsg: (String(str_selectData.suffix(6)) + "t is r" + str_barName.replacingOccurrences(of: "table", with: "e") + String(str_blockText)).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.putUp(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: UserHandyJSON())
                let chatVC = self.putUp(chatID: chatID, isFrom: isFrom, userWrap: UserHandyJSON())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: UserHandyJSON ) -> TalkingPrivateChatController {
    func putUp(chatID: String, isFrom: ModelDeviceFromEnum = .Normal, userWrap: UserHandyJSON) -> CountensityViewController {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = overDoinglineVc()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: CountensityViewController.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! CountensityViewController
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = CountensityViewController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func aboveContent(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingChatRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        ChatMakeReactiveCompatible.strikeOut(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.noblesseExtra(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if OverdoReactiveCompatible.isGroupChat(groupId) {
            if OverdoReactiveCompatible.loadChat(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.afterError(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = TotalensityControllerDelegate(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.overDoinglineVc()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.afterError(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = TotalensityControllerDelegate(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.overDoinglineVc()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.noblesseExtra(showMsg: String(bytes: str_modelData.map{valueView(image: $0)}, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func afterError(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.overDoinglineVc()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: TotalensityControllerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! TotalensityControllerDelegate
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func loadToast(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: IndexStyleAppManager.share.loginUserMode.isTPAuth)
        let tpAuth = QualityNameLiteral(rawValue: IndexStyleAppManager.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = CheekThen()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = overDoinglineVc()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = StyleViewController()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = overDoinglineVc()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func funcConstraint(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func titleBar() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = overDoinglineVc()
        //: let vc = TalkingFeedbackVC.init()
        let vc = TitleResourceReactiveCompatible()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func titleModel(jumpModel: AllTransformable) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == "url" {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            gildTheLilyCount(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (str_labText.lowercased() + "Deta" + str_screenData.replacingOccurrences(of: "button", with: "il")) {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func nearQuitShow() {
        //: PostPushManager.share.func__pushToWebVC(webViewType: .SubscribePage)
        PostPushManager.share.scene(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func dataPwd(type: VersionViewEquatable, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = KeyHalfViewController()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        overDoinglineVc()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension PostPushManager {
extension PostPushManager {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func scene(webViewType: AutomaticallyCollection) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        positionConfig(webViewType: webViewType, webConfig: FailConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func chromaticColourMakeEnd(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
        //: let payWinType = IndexStyleAppManager.share.appUserConfigMode.payWinType
        let payWinType = IndexStyleAppManager.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (IndexStyleAppManager.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (IndexStyleAppManager.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            seeThroughEvent(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            markParams(appendParams: appendParams)
        }
    }

    /// 跳转会员充值弹窗
    /// - Parameter appendParams: 1 私密照片、2 私密视频、3 视频包、4 音频包
    //: func func__pushToRechargeAlert(appendParams: String = "&type=0") {
    func everyReason(appendParams: String = "&type=0") {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .RechargeAlert)
        var urlStr = ServiceManager.kind(urlType: .RechargeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: PostPushManager.share.func__pushToWebVC(urlStr: urlStr)
        PostPushManager.share.gildTheLilyCount(urlStr: urlStr)
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func markParams(appendParams: String = "&type=7") {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = ServiceManager.kind(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: PostPushManager.share.func__pushToWebVC(urlStr: urlStr)
        PostPushManager.share.gildTheLilyCount(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        consLet_contentData.selectEvent(eventID: consLet_userText, parameterStr: ["amount": 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func seeThroughEvent(webViewType: AutomaticallyCollection, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = FailConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        positionConfig(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            consLet_windowData = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                consLet_contentData.selectEvent(eventID: clickEvent, parameterStr: ["amount": 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func positionConfig(webViewType: AutomaticallyCollection, webConfig: FailConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = ServiceManager.kind(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        putToDeathConfig(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func gildTheLilyCount(urlStr: String?, webConfig: FailConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? FailConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        putToDeathConfig(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func putToDeathConfig(urlStr: String?, webViewType: AutomaticallyCollection?, webConfig: FailConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(str_showValue.replacingOccurrences(of: "will", with: "n") + str_beanWinName.replacingOccurrences(of: "status", with: "en"))].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}\"[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = "version=\(consLet_environmentContent)" + (String(str_endText.prefix(6)) + String(str_pureName.prefix(5))) + "\(consLet_packageName)" + (String(str_priceCoverData) + String(str_extraTitle)) + "\(consLet_recordData)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = EqualViewController(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = overDoinglineVc() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: EqualViewController.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! EqualViewController).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.dragInput(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_errorDeviceHeightData / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension PostPushManager {
public extension PostPushManager {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func overDoinglineVc() -> UIViewController? {
        //: return currentViewController()
        return userRead()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct AllTransformable: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
