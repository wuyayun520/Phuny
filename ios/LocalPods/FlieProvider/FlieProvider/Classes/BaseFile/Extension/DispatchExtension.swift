
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let str_showName:[UInt8] = [0x16,0x3b,0x21,0x22,0x33,0x26,0x31,0x3a,0x3,0x27,0x37,0x27,0x37,0x6,0x3d,0x39,0x37,0x3c,0xd,0x1,0x26,0x33,0x26,0x27,0x21,0x10,0x33,0x20,0x1b,0x3c,0x3b,0x26]

private func playerShared(number num: UInt8) -> UInt8 {
    return num ^ 82
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let consLet_limitText = String(bytes: str_showName.map{playerShared(number: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func toMagnitude(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
