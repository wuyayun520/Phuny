
//: Declare String Begin

/*: "-1" :*/
fileprivate let str_reportValue:[Character] = ["-","1"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilizationKingfisherCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/3/2.
//

//: import UIKit
import UIKit

//: public class TalkingApplication: UIApplication {
public class UtilizationKingfisherCompatible: UIApplication {
    // 上次操作时间
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    // 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    // 女性用户是否活跃
    //: private var isActivity = false
    private var isActivity = false
    // 是否正在请求中
    //: private var isRequesting = false
    private var isRequesting = false

    //: public override func sendEvent(_ event: UIEvent) {
    override public func sendEvent(_ event: UIEvent) {
        //: super.sendEvent(event)
        super.sendEvent(event)
        //: lastEventTime = Date().timeIntervalSince1970
        lastEventTime = Date().timeIntervalSince1970
        //: let touches: Set<UITouch> = event.allTouches ?? []
        let touches: Set<UITouch> = event.allTouches ?? []
        //: guard touches.first?.phase == .began else { return }
        guard touches.first?.phase == .began else { return }
        //: femaleBusyStatusReport()
        anArrayOffline()
    }
}

// MARK: - 【开启女性用户busy状态上报】

//: extension TalkingApplication {
extension UtilizationKingfisherCompatible {
    /// 女性用户busy状态上报
    //: func femaleBusyStatusReport() {
    func anArrayOffline() {
        //: destroyTimer()
        destroyTime()
        //: guard IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue else { return }
        //: guard IndexStyleAppManager.share.loginUid.count > 0 else { return }
        guard IndexStyleAppManager.share.loginUid.count > 0 else { return }
        //: guard IndexStyleAppManager.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        guard IndexStyleAppManager.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        //: guard !TalkingLiveManager.shared().isLive && !TalkingSocketManager.shared.isTalking && !TalkingSocketManager.shared.isCalling else { return }
        guard !DecisionMakerReactiveCompatible.barIn().isLive, !JewishCalendarMonthThen.shared.isTalking, !JewishCalendarMonthThen.shared.isCalling else { return }
        //: if IndexStyleAppManager.share.loginUserMode.videoAuth == "-1",
        if IndexStyleAppManager.share.loginUserMode.videoAuth == "-1",
           //: IndexStyleAppManager.share.loginUserMode.voiceAuth == "-1",
           IndexStyleAppManager.share.loginUserMode.voiceAuth == "-1",
           //: IndexStyleAppManager.share.appUserConfigMode.randomVideo == "-1" { // 用户同时关闭了音视频权限
           IndexStyleAppManager.share.appUserConfigMode.randomVideo == "-1"
        { // 用户同时关闭了音视频权限
            //: req_reportBusyStatus(type: 0)
            backgroundOn(type: 0)
            //: return
            return
        }
        //: if isActivity == true {
        if isActivity == true {
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(IndexStyleAppManager.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: {[weak self] time in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(IndexStyleAppManager.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.req_reportBusyStatus(type: 0)
                self.backgroundOn(type: 0)
                //: })
            })
            //: } else {
        } else {
            //: req_reportBusyStatus(type: 1)
            backgroundOn(type: 1)
        }
    }

    /// 销毁状态
    //: func destroy() {
    func giftDown() {
        //: self.isActivity = false
        self.isActivity = false
        //: destroyTimer()
        destroyTime()
    }

    /// 上报busy状态
    /// - Parameter type: 0：非活跃；1：活跃
    //: private func req_reportBusyStatus(type: Int) {
    private func backgroundOn(type: Int) {
        //: guard (isActivity == true && type == 0) || ( isActivity == false && type == 1) else { return }
        guard (isActivity == true && type == 0) || (isActivity == false && type == 1) else { return }
        //: guard isRequesting == false else { return }
        guard isRequesting == false else { return }
        //: isRequesting = true
        isRequesting = true
        //: TalkingMeRequestTool.req_settingStatus(type: type) { succeed, result, errorModel in
        KeyReactiveCompatible.anBar(type: type) { _, _, _ in
            //: self.isRequesting = false
            self.isRequesting = false
            //: self.isActivity = (type == 1) ? true:false
            self.isActivity = (type == 1) ? true : false
            //: if type == 1 {
            if type == 1 {
                //: self.femaleBusyStatusReport()
                self.anArrayOffline()
            }
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func destroyTime() {
        //: if timeoutTimer != nil {
        if timeoutTimer != nil {
            //: timeoutTimer?.invalidate()
            timeoutTimer?.invalidate()
            //: timeoutTimer = nil
            timeoutTimer = nil
        }
    }
}
