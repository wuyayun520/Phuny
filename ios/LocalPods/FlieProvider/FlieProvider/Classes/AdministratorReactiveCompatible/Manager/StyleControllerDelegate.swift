
//: Declare String Begin

/*: "identifier" :*/
fileprivate let str_hiddenTitle:[UInt8] = [0xa3,0xae,0xaf,0xa4,0xbe,0xa3,0xac,0xa3,0xaf,0xb8]

/*: "token" :*/
fileprivate let str_timeData:[UInt8] = [0xb2,0xad,0xa9,0xa3,0xac]

fileprivate func dueDate(size num: UInt8) -> UInt8 {
    let value = Int(num) - 62
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "authCode" :*/
fileprivate let str_viewContentMakeValue:[UInt8] = [0xf2,0xe6,0xe7,0xfb,0xd0,0xfc,0xf7,0xf6]

/*:   :*/
fileprivate let str_removeText:String = "to"

/*: "nickname" :*/
fileprivate let str_recordResourceText:String = "nicknaeffect"
fileprivate let str_countCenterName:[Character] = ["e"]

/*: "授权请求失败未知原因" :*/
fileprivate let str_screenData:String = "授view请求失败"

/*: "用户取消了授权请求" :*/
fileprivate let str_playTitleValue:String = "用户\u{53d6}消了授"
fileprivate let str_colorData:[Character] = ["权","请","求"]

/*: "授权请求失败" :*/
fileprivate let str_dataValue:[Character] = ["授","权","\u{8bf7}","求","失","败"]

/*: "授权请求响应无效" :*/
fileprivate let str_countValue:String = "授\u{6743}请求"

/*: "未能处理授权请求" :*/
fileprivate let str_zoneValue:[Character] = ["未","能","处","理","授","权","请","求"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StyleControllerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import UIKit
import UIKit

//: import AuthenticationServices
import AuthenticationServices

//: enum AppLeLoginError: Error {
enum ContentError: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class StyleControllerDelegate: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = StyleControllerDelegate()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func make(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: str_hiddenTitle.map{$0^202}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          "token": identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: str_viewContentMakeValue.map{$0^147}, encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(str_recordResourceText.replacingOccurrences(of: "effect", with: "m") + String(str_countCenterName))] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    consLet_partyTitle.set(nickname, forKey: consLet_packageValue)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = consLet_partyTitle.string(forKey: consLet_packageValue)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(str_recordResourceText.replacingOccurrences(of: "effect", with: "m") + String(str_countCenterName))] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: ContentError) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            printLog(message: (str_screenData.replacingOccurrences(of: "view", with: "权") + "未知原因"))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            printLog(message: (str_playTitleValue + String(str_colorData)))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            printLog(message: "授权请求失败")
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            printLog(message: (str_countValue + "响应\u{65e0}\u{6548}"))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            printLog(message: (String(str_zoneValue)))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension StyleControllerDelegate: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return OverdoReactiveCompatible.getWindow()
        return OverdoReactiveCompatible.outMax()
    }
}
