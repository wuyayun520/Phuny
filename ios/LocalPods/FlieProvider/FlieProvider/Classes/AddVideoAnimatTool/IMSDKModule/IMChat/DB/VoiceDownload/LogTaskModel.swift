
//: Declare String Begin

/*: "http://" :*/
fileprivate let str_imageText:[Character] = ["h","t","t","p",":"]
fileprivate let str_renderData:String = "managermanager"

/*: "https://" :*/
fileprivate let str_emptyData:String = "self actual returnhttps://"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let str_toolValue:[UInt8] = [0x2a,0x26,0x1b,0x2e,0x20,0x29,0x2c,0x27,0xf7,0x23,0x2a,0x22,0x29,0x28,0x1f,0xe0,0x30,0x1f,0x2c,0x2d,0x23,0x29,0x28,0xf7,0xdf,0xfa,0xe0,0x2a,0x1b,0x1d,0x25,0x1b,0x21,0x1f,0x3,0x1e,0xf7,0xdf,0xfa,0xe0,0x1c,0x2f,0x28,0x1e,0x26,0x1f,0x3,0x1e,0xf7,0xdf,0xfa]

fileprivate func modeFail(plus num: UInt8) -> UInt8 {
    let value = Int(num) + 70
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "%@%@&%@" :*/
fileprivate let str_panData:String = "%@%@&%@"

/*: "url" :*/
fileprivate let str_equivalentText:String = "urcorner"

/*: "id" :*/
fileprivate let str_coinText:String = "iclear"

/*: "length" :*/
fileprivate let str_appTitle:String = "leaddth"

/*: "getFileSize error : :*/
fileprivate let str_layerData:String = "getFself add"
fileprivate let str_rowEraseValue:String = "e errfalse user"
fileprivate let str_scaleValue:[Character] = ["o","r"," ",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LogTaskModel.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum NumberMirrorPath: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum FailMirrorPath: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class LogTaskModel: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: NumberMirrorPath = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: FailMirrorPath = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: QualityMsgTable) -> VoiceDownloadTaskModel {
    class func voxColor(_ tempModel: QualityMsgTable) -> LogTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = LogTaskModel()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", OverdoReactiveCompatible.getAppNetVersion(), OverdoReactiveCompatible.getPackageID(), OverdoReactiveCompatible.getAppBundle())
            let otherParams = String(format: String(bytes: str_toolValue.map{modeFail(plus: $0)}, encoding: .utf8)!, OverdoReactiveCompatible.anApp(), OverdoReactiveCompatible.package(), OverdoReactiveCompatible.nameBundle())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", TalkingBenderTotalensityRequestThen.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = LogTaskModel.ambages(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func littlenessModel(_ voiceInfo: [String: Any]) -> LogTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = LogTaskModel()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo["url"] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(AppCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(ContextWhiteThen.clear())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension LogTaskModel {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func ambages(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(str_layerData.prefix(4)) + "ileSiz" + String(str_rowEraseValue.prefix(5)) + String(str_scaleValue)) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func pathBy() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(AppCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(ContextWhiteThen.clear())\(self.taskId)\(timeInterval)"
    }
}
