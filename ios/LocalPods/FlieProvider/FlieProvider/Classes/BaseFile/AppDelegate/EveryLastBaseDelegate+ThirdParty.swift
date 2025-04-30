
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let str_cloudValue:[Character] = ["a","p","p","_","m","a","r","s","x","l"]
fileprivate let str_backTitle:[Character] = ["o","g"]

/*: "Install" :*/
fileprivate let str_callResultViewName:String = "view make view contentInsta"
fileprivate let str_insertName:[Character] = ["l","l"]

/*: "TXUGCBase初始化：result:  :*/
fileprivate let str_popValue:String = "TXsoundG"
fileprivate let str_modelName:[Character] = ["r","e","s","u","l","t",":"," "]

/*: , reason:  :*/
fileprivate let str_cancelTitle:String = "let time, r"
fileprivate let str_mediumData:[Character] = ["e","a","s","o","n",":"," "]

/*: ." :*/
fileprivate let str_addData:String = "."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EveryLastBaseDelegate+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust

//: import Foundation
import Foundation

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

//: import UIKit
import UIKit

//: import DXMarsXlog
import DXMarsXlog

// MARK: - Public Event

//: extension AppDelegateHelper {
extension EveryLastBaseDelegate {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func sumroduce(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = SoundPressureLevelTransactionObserver.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(str_cloudValue) + String(str_backTitle)))

        //: HiddenConversationListener.shared.func__TXSDKInit()
        HiddenConversationListener.shared.physicsLaboratoryPause()

        //: initADjust()
        stopDjust()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        AdjustThen.share.baptiseShow(key: "Install")
        //: setupTXLive()
        completeLive()
        //: setupTXUGC()
        allTxugc()

        //: guard SenseTime_Use == true else { return }
        guard consLet_matchData == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if STLicHelper.share.checkLicense() == false {
                //: SenseTime_Use = false
                consLet_matchData = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                STLicHelper.share.checkRemoteLicInfoWith { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    consLet_matchData = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension EveryLastBaseDelegate {
    //: private func setupTXLive() {
    private func completeLive() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if consLet_replaceInformationData.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(consLet_replaceInformationData, key: consLet_tagData)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func allTxugc() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(consLet_replaceInformationData, key: consLet_tagData)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func stopDjust() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !consLet_searchData {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = consLet_useFailName
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension EveryLastBaseDelegate: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: EqualLogTool.writeDoing(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        EqualLogTool.writeDoing(msg: (str_popValue.replacingOccurrences(of: "sound", with: "U") + "CBase初\u{59cb}\u{5316}：" + String(str_modelName)) + "\(result), reason: \(String(describing: reason)).")
    }
}
