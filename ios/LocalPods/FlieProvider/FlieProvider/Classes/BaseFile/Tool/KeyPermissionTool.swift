
//: Declare String Begin

/*: "Please click 'Go' to allow access" :*/
fileprivate let str_addName:[UInt8] = [0x66,0x82,0x7b,0x77,0x89,0x7b,0x36,0x79,0x82,0x7f,0x79,0x81,0x36,0x3d,0x5d,0x85,0x3d,0x36,0x8a,0x85,0x36,0x77,0x82,0x82,0x85,0x8d,0x36,0x77,0x79,0x79,0x7b,0x89,0x89]

fileprivate func tableCurrent(skip num: UInt8) -> UInt8 {
    let value = Int(num) - 22
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option" :*/
fileprivate let str_marginValue:[UInt8] = [0xf9,0xc5,0xcc,0xc8,0xda,0xcc,0x89,0xc8,0xc5,0xc5,0xc6,0xde,0x89,0x8e,0x8c,0xe9,0x8e,0x89,0xdd,0xc6,0x89,0xc8,0xca,0xca,0xcc,0xda,0xda,0x89,0xd0,0xc6,0xdc,0xdb,0x89,0xc8,0xc5,0xcb,0xdc,0xc4,0x89,0xc0,0xc7,0x89,0xd0,0xc6,0xdc,0xdb,0x89,0xc0,0xf9,0xc1,0xc6,0xc7,0xcc,0x8e,0xda,0x89,0x8e,0xfa,0xcc,0xdd,0xdd,0xc0,0xc7,0xce,0xda,0x84,0xf9,0xdb,0xc0,0xdf,0xc8,0xca,0xd0,0x84,0xe8,0xc5,0xcb,0xdc,0xc4,0x8e,0x89,0xc6,0xd9,0xdd,0xc0,0xc6,0xc7]

private func quantityuitionObject(layer num: UInt8) -> UInt8 {
    return num ^ 169
}

/*: "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option" :*/
fileprivate let str_actionTitle:[UInt8] = [0x4c,0x68,0x61,0x5d,0x6f,0x61,0x1c,0x5d,0x68,0x68,0x6b,0x73,0x1c,0x23,0x21,0x3c,0x23,0x1c,0x70,0x6b,0x1c,0x5d,0x5f,0x5f,0x61,0x6f,0x6f,0x1c,0x75,0x6b,0x71,0x6e,0x1c,0x68,0x6b,0x5f,0x5d,0x70,0x65,0x6b,0x6a,0x1c,0x6f,0x61,0x6e,0x72,0x65,0x5f,0x61,0x6f,0x1c,0x65,0x6a,0x1c,0x75,0x6b,0x71,0x6e,0x1c,0x65,0x4c,0x64,0x6b,0x6a,0x61,0x23,0x6f,0x1c,0x23,0x4f,0x61,0x70,0x70,0x65,0x6a,0x63,0x6f,0x29,0x4c,0x6e,0x65,0x72,0x5d,0x5f,0x75,0x29,0x48,0x6b,0x5f,0x5d,0x70,0x65,0x6b,0x6a,0x1c,0x4f,0x61,0x6e,0x72,0x65,0x5f,0x61,0x6f,0x23,0x1c,0x6b,0x6c,0x70,0x65,0x6b,0x6a]

fileprivate func sensePath(model num: UInt8) -> UInt8 {
    let value = Int(num) - 252
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_playerText:String = "time colorCancel"

/*: "Go" :*/
fileprivate let str_greetName:String = "selected letGo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyPermissionTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/6.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: import AssetsLibrary
import AssetsLibrary

//: import MediaPlayer
import MediaPlayer

//: import CoreTelephony
import CoreTelephony

//: import CoreLocation
import CoreLocation

//: import AVFoundation
import AVFoundation

//: enum TalkingPermissionsType {
enum EventFilePermissionsType {
    /// 相机
    //: case camera
    case camera
    /// 相册
    //: case photo
    case photo
    /// 位置
    //: case location
    case location
    /// 麦克风
    //: case microphone
    case microphone
    /// 推送
    //: case notification
    case notification
    /// 相机和麦克风（视频速配使用）
    //: case cameraAndMicrophone
    case cameraAndMicrophone
}

//: let object = NSObject()
let consLet_videoData = NSObject()
//: class TalkingPermissionTool: NSObject {
class KeyPermissionTool: NSObject {
    // MARK: - 检测是否开启定位

    /// 检测是否开启定位
    //: class func func__openLocationServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func sommelier(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: var isOpen = false
        var isOpen = false
        //    if CLLocationManager.locationServicesEnabled() || CLLocationManager.authorizationStatus() != .denied {
        //        isOpen = true
        //    }
        //: if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
        if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
            //: isOpen = true
            isOpen = true
        }
        //: if isOpen == false && isSet == true {func__OpenURL(.location)}
        if isOpen == false && isSet == true { want(.location) }
        //: action(isOpen)
        action(isOpen)
    }

    // MARK: - 检测是否开启摄像头

    /// 检测是否开启摄像头 (可用)
    //: class func func__openCaptureDeviceServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func modelBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        //: if authStatus == AVAuthorizationStatus.notDetermined {
        if authStatus == AVAuthorizationStatus.notDetermined {
            //: AVCaptureDevice.requestAccess(for: AVMediaType.video) { (granted) in
            AVCaptureDevice.requestAccess(for: AVMediaType.video) { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.camera)}
                }
            }
            //: } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
        } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.camera)}
            if isSet == true { toImage(.camera) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 检测是否开启相册

    //: class func func__openAlbumServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func albumTheme(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: PHPhotoLibrary.requestAuthorization { authStatus in
        PHPhotoLibrary.requestAuthorization { authStatus in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if(authStatus == .restricted || authStatus == .denied) {
                if authStatus == .restricted || authStatus == .denied {
                    //: action(false)
                    action(false)
                    //: if isSet == true {func__OpenURL(.photo)}
                    if isSet == true { want(.photo) }
                    //: } else {
                } else {
                    //: action(true)
                    action(true)
                }
            }
        }
    }

    // MARK: - 检测是否开启麦克风

    /// 检测是否开启麦克风
    //: class func func__openRecordServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func awakeEqual(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        //: if permissionStatus == .undetermined {
        if permissionStatus == .undetermined {
            //: AVAudioSession.sharedInstance().requestRecordPermission { (granted) in
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.microphone)}
                }
            }
            //: } else if permissionStatus == .denied || permissionStatus == .undetermined {
        } else if permissionStatus == .denied || permissionStatus == .undetermined {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.microphone)}
            if isSet == true { toImage(.microphone) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 跳转系统设置界面

    //: class func func__OpenURL(_ type: TalkingPermissionsType? = nil) {
    class func want(_ type: EventFilePermissionsType? = nil) {
        //: var message = "Please click 'Go' to allow access".localized
        var message = String(bytes: str_addName.map{tableCurrent(skip: $0)}, encoding: .utf8)!.localized

        //: if type == .photo {
        if type == .photo { // 相册
            //: message = "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option".localizedArguments(AppName)
            message = String(bytes: str_marginValue.map{quantityuitionObject(layer: $0)}, encoding: .utf8)!.localizedArguments(consLet_deviceData)
            //: } else if type == .location {
        } else if type == .location { // 位置
            //: message = "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option".localizedArguments(AppName)
            message = String(bytes: str_actionTitle.map{sensePath(model: $0)}, encoding: .utf8)!.localizedArguments(consLet_deviceData)
        }
        //: TalkingAlertShow.alert(title: nil, message: message, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go".localized, leftBlock: {
        EqualAlertShow.showConfig(title: nil, message: message, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go".localized, leftBlock: {
            //: }, rightBlock: {
        }, rightBlock: {
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if  UIApplication.shared.canOpenURL(url!) {
            if UIApplication.shared.canOpenURL(url!) {
                //: if #available(iOS 10, *) {
                if #available(iOS 10, *) {
                    //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                    UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    //: } else {
                } else {
                    //: UIApplication.shared.openURL(url!)
                    UIApplication.shared.openURL(url!)
                }
            }
            //: })
        })
    }

    // MARK: - 提示弹窗界面

    //: class func showTostView(_ type: TalkingPermissionsType? = nil) {
    class func toImage(_ type: EventFilePermissionsType? = nil) {
        //: let view = TalkingPermissionView.init()
        let view = MakeView()
        //: view.setPermissionIconView(type: type ?? .camera)
        view.pastIcon(type: type ?? .camera)
        //: view.show()
        view.receiveEnable()
    }

    // MARK: - 检测是否开启推送

    //: class func checkPushNotification(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
    class func upStatus(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
        //: if #available(iOS 10.0, *) {
        if #available(iOS 10.0, *) {
            //: UNUserNotificationCenter.current().getNotificationSettings { (setttings) in
            UNUserNotificationCenter.current().getNotificationSettings { setttings in

                //: switch setttings.authorizationStatus {
                switch setttings.authorizationStatus {
                //: case .authorized:
                case .authorized:
                    //: isEnable?(true)
                    isEnable?(true)
                //: case .denied:
                case .denied:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .notDetermined:
                case .notDetermined:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .provisional:
                case .provisional:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .ephemeral:
                case .ephemeral:
                    //: isEnable?(false)
                    isEnable?(false)
                //: @unknown default:
                @unknown default:
                    //: isEnable?(false)
                    isEnable?(false)
                }
            }
            //: } else {
        } else {
            //: let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            //: if isNotificationEnabled == true {
            if isNotificationEnabled == true {
                //: isEnable?(true)
                isEnable?(true)
                //: } else {
            } else {
                //: isEnable?(false)
                isEnable?(false)
            }
        }
    }
}

//: extension TalkingPermissionTool {
extension KeyPermissionTool {
    /// 检查相机和麦克风权限
    /// - Parameter action: 回调
    //: class func checkCameraAndMicrophone(_ handler: @escaping ((Bool) -> Void)) {
    class func searchAndMicrophoneCell(_ handler: @escaping ((Bool) -> Void)) {
        // 相机权限
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        KeyPermissionTool.modelBlock(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
                KeyPermissionTool.awakeEqual(false) { isOpen in
                    //: if isOpen {
                    if isOpen {
                        //: showTostView(.camera)
                        toImage(.camera)
                        //: } else {
                    } else {
                        //: showTostView(.cameraAndMicrophone)
                        toImage(.cameraAndMicrophone)
                    }
                }
                //: handler(false)
                handler(false)
                //: return
                return
            }

            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
            KeyPermissionTool.awakeEqual(false) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: showTostView(.microphone)
                    toImage(.microphone)
                    //: handler(false)
                    handler(false)
                    //: return
                    return
                }

                //: handler(true)
                handler(true)
            }
        }
    }

    /// 检测是否开启 直播间/语聊房
    /// - Returns: 结果
    //: class func isLiveOrPartyActive() -> Bool {
    class func militaryPost() -> Bool {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard DecisionMakerReactiveCompatible.barIn().isLive == false else { // 直播间
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            consLet_videoData.noblesseExtra(showMsg: consLet_netName)
            //: return true
            return true
        }
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard EqualSendReactiveCompatible.clout().isParty == false else { // 语聊房
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
            consLet_videoData.noblesseExtra(showMsg: consLet_firstTotalLimitData)
            //: return true
            return true
        }
        //: return false
        return false
    }
}
