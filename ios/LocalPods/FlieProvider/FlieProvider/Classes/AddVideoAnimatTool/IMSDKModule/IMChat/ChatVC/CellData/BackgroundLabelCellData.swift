
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_rangeName:[UInt8] = [0xf4,0xf3,0xf4,0xe9,0xb5,0xfe,0xf2,0xf9,0xf8,0xef,0xa7,0xb4,0xbd,0xf5,0xfc,0xee,0xbd,0xf3,0xf2,0xe9,0xbd,0xff,0xf8,0xf8,0xf3,0xbd,0xf4,0xf0,0xed,0xf1,0xf8,0xf0,0xf8,0xf3,0xe9,0xf8,0xf9]

private func jumpingOpenPlace(share num: UInt8) -> UInt8 {
    return num ^ 157
}

/*: "[未知消息]" :*/
fileprivate let str_userData:[Character] = ["["]
fileprivate let str_errorName:[Character] = ["未","知","消","\u{606f}","]"]

/*: "extra" :*/
fileprivate let str_visibleName:String = "extnamea"

/*: "rYMsgType" :*/
fileprivate let str_clearData:String = "rYMsgTinfo let block if fill"
fileprivate let str_modelInfoData:String = "YPE"

/*: "GJ:CallCustom" :*/
fileprivate let str_modeName:String = "GJ:Cname return make let gift"

/*: "stopCall" :*/
fileprivate let str_pathFormatViewValue:[Character] = ["s","t","o","p","C"]
fileprivate let str_upName:[Character] = ["a","l","l"]

/*: "#FF5A4D" :*/
fileprivate let str_infoHiddenVarName:String = "resume read lab#F"
fileprivate let str_shareValue:[Character] = ["F","5","A","4","D"]

/*: "msgInfo" :*/
fileprivate let str_toolModelValue:String = "guard mask self self buttonmsgInfo"

/*: "logType" :*/
fileprivate let str_sinceUserName:[Character] = ["l","o","g","T","y","p","e"]

/*: "  " :*/
fileprivate let str_dataContent:[Character] = [" "," "]

/*: "jumps" :*/
fileprivate let str_tapValue:String = "jupriceps"

/*: "jumpKey" :*/
fileprivate let str_behindName:String = "jumpKeypic position"

/*: "chat_video_me" :*/
fileprivate let str_pressValue:[UInt8] = [0xfd,0xf6,0xff,0xea,0xc1,0xe8,0xf7,0xfa,0xfb,0xf1,0xc1,0xf3,0xfb]

private func pothouseRender(manager num: UInt8) -> UInt8 {
    return num ^ 158
}

/*: "chat_voice_me" :*/
fileprivate let str_tapMediumValue:[Character] = ["c","h","a","t","_","v","o"]
fileprivate let str_sectionMWhiteTitle:[Character] = ["i","c","e","_","m","e"]

/*: "chat_video_call" :*/
fileprivate let str_viewTitle:[UInt8] = [0x6c,0x6c,0x61,0x63,0x5f,0x6f,0x65,0x64,0x69,0x76,0x5f,0x74,0x61,0x68,0x63]

/*: "chat_voice_call" :*/
fileprivate let str_showName:String = "chat_vofalse data"
fileprivate let str_addData:[Character] = ["i","c","e","_","c","a","l","l"]

/*: "chat_video_cancel" :*/
fileprivate let str_lastWithValue:[UInt8] = [0xd5,0xde,0xd7,0xc2,0xe9,0xc0,0xdf,0xd2,0xd3,0xd9,0xe9,0xd5,0xd7,0xd8,0xd5,0xd3,0xda]

private func appCaseText(to num: UInt8) -> UInt8 {
    return num ^ 182
}

/*: "chat_voice_cancel" :*/
fileprivate let str_keyDataInName:String = "chat_vsend view to"
fileprivate let str_kitValue:String = "CEL"

/*: "#16D073" :*/
fileprivate let str_privacyContent:[Character] = ["#","1","6","D","0","7","3"]

/*: "#F95644" :*/
fileprivate let str_titleSharedValue:[Character] = ["#","F","9","5","6","4","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundLabelCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class BackgroundLabelCellData: TalkingChatMsgBaseCellData {
@objcMembers public class BackgroundLabelCellData: MakeCellData {
    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.exceptEqual(fontSize: 16)
    let textFont = UIFont.exceptEqual(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var quoteSize = CGSize.zero
    var quoteSize = CGSize.zero

    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    //: var isVoiceVideo = false
    var isVoiceVideo = false
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = writeMake()
        //: return attr
        return attr
    }

    //: @objc public var hasJump = false
    public var hasJump = false
    //: @objc public var contentStr: String?
    public var contentStr: String?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.appTitleColor()
            textColor = UIColor.appNameVisualProperty()
            //: } else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_rangeName.map{jumpingOpenPlace(share: $0)}, encoding: .utf8)!)
    }

    //: public override var msgModel: LockModel {
    override public var msgModel: LockModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: if newValue.msgInfo.content.isEmptyString {
            if newValue.msgInfo.content.isEmptyString {
                //: contentStr = "[未知消息]"
                contentStr = "[未知消息]"
                //: } else {
            } else {
                //: contentStr = newValue.msgInfo.content
                contentStr = newValue.msgInfo.content
            }
        }
    }

    //: public override func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = consLet_errorDeviceHeightData - (25 + self.cellLayout.avatarSize.width) * 2 - 44

        //: if self.msgModel.quoteMsgInfo.isQuoteMsg() {
        if self.msgModel.quoteMsgInfo.key() {
            //: self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
            self.quoteSize = self.msgModel.quoteMsgInfo.to(Int(maxWidth - 20))
        }

        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingSize ?? .zero
        let yySize = yyLayout?.textBoundingSize ?? .zero
        //: var temTextSize = CGSize(width:  ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize

        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6:0))
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0))

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.width = max(temTextSize.width, self.quoteSize.width)
        temTextSize.width = max(temTextSize.width, self.quoteSize.width)

        //: temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height +  (self.quoteSize.height > 0 ? 6:0)
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0)
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+self.cellLayout.bubbleInsets.right
        temTextSize.width += self.cellLayout.bubbleInsets.left + self.cellLayout.bubbleInsets.right

        //: return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
    }

    //: public override func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: var cellHeight = self.cellLayout.messageInsets.top
        var cellHeight = self.cellLayout.messageInsets.top // 气泡与顶部的距离

        //: let containerSize = self.contentSize()
        let containerSize = self.contentSize() // 实际气泡的高度
        //: cellHeight += containerSize.height
        cellHeight += containerSize.height
        //: cellHeight += self.cellLayout.messageInsets.bottom
        cellHeight += self.cellLayout.messageInsets.bottom // 气泡与底部的距离

        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }

        //: if self.msgIncome > 0 {
        if self.msgIncome > 0 { // 有收益
            //: cellHeight += 15
            cellHeight += 15
        }
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if WaitressThen.messageNeedEqualInstanceTypePresentReplySplit(self.direction,
                                                                                   //: msgType: self.messageType,
                                                                                   msgType: self.messageType,
                                                                                   //: msgTime: self.innerMessage.timestamp) {
                                                                                   msgTime: self.innerMessage.timestamp)
        {
            //: cellHeight += 20
            cellHeight += 20
        }

        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = quickModel(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: ModeJsonModel) -> NSMutableAttributedString {
    func quickModel(msgInfoModel: ModeJsonModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
        guard let extraDic = dic["extra"] as? [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        // 创建富文本
        //: let attributes: [NSAttributedString.Key: Any] = [
        let attributes: [NSAttributedString.Key: Any] = [
            //: .font: UIFont.exceptEqual(fontSize: 16),
            .font: UIFont.exceptEqual(fontSize: 16),
            //: .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.appTitleColor() : UIColor.white
            .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.appNameVisualProperty() : UIColor.white,
        ]
        //: let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)
        let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)

        // 音视频通话更改颜色
        //: if self.direction == .MsgDirectionIncoming &&
        if self.direction == .MsgDirectionIncoming &&
            //: dic["rYMsgType"] as? String == "GJ:CallCustom" &&
            dic[(String(str_clearData.prefix(6)) + str_modelInfoData.lowercased())] as? String == (String(str_modeName.prefix(4)) + "allCustom") &&
            //: msgInfoModel.callCmd != "stopCall" {
            msgInfoModel.callCmd != (String(str_pathFormatViewValue) + String(str_upName))
        {
            //: attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
            attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
        }

        // 音视频通话添加icon
        //: if  dic["rYMsgType"] as? String == "GJ:CallCustom" {
        if dic[(String(str_clearData.prefix(6)) + str_modelInfoData.lowercased())] as? String == (String(str_modeName.prefix(4)) + "allCustom") {
            //: isVoiceVideo = true
            isVoiceVideo = true
            //: var isVideoChat = true
            var isVideoChat = true
            //: let extraDic = dic["extra"] as? Dictionary<String, Any> ??  Dictionary<String, Any>.init()
            let extraDic = dic["extra"] as? [String: Any] ?? [String: Any]()
            //: let extraJson = JSON(extraDic)
            let extraJson = JSON(extraDic)
            //: if extraJson["msgInfo"]["logType"].intValue == 1 {
            if extraJson["msgInfo"]["logType"].intValue == 1 {
                //: isVideoChat = false
                isVideoChat = false
            }
            //: let callImgAttr = self.getCallImageAttributedString(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            let callImgAttr = self.demand(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            //: let spaceAttr = NSMutableAttributedString.init(string: "  ")
            let spaceAttr = NSMutableAttributedString(string: "  ")
            //: attr.insert(spaceAttr, at: 0)
            attr.insert(spaceAttr, at: 0)
            //: attr.insert(callImgAttr, at: 0)
            attr.insert(callImgAttr, at: 0)
        }

        //: if extraDic.keys.contains("jumps") {
        if extraDic.keys.contains("jumps") {
            //: hasJump = true
            hasJump = true
        }
        //: if extraDic.keys.contains("jumpKey") {
        if extraDic.keys.contains("jumpKey") {
            //: hasJump = true
            hasJump = true
        }

        //: return attr
        return attr
    }

    //: func getCallImageAttributedString(msgInfoModel: ModeJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
    func demand(msgInfoModel: ModeJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
        //: let callImgView = UIImageView.init()
        let callImgView = UIImageView()
        //: callImgView.size = CGSize(width: 22, height: 17)
        callImgView.size = CGSize(width: 22, height: 17)
        //: callImgView.contentMode = .scaleAspectFit
        callImgView.contentMode = .scaleAspectFit
        //: var imgStr = isVideoChat ? "chat_video_me" : "chat_voice_me"
        var imgStr = isVideoChat ? String(bytes: str_pressValue.map{pothouseRender(manager: $0)}, encoding: .utf8)! : (String(str_tapMediumValue) + String(str_sectionMWhiteTitle))

        //: if self.direction == .MsgDirectionIncoming {
        if self.direction == .MsgDirectionIncoming {
            //: if msgInfoModel.callCmd == "stopCall" {
            if msgInfoModel.callCmd == (String(str_pathFormatViewValue) + String(str_upName)) {
                //: imgStr = isVideoChat ?"chat_video_call":"chat_voice_call"
                imgStr = isVideoChat ?String(bytes: str_viewTitle.reversed(), encoding: .utf8)! : (String(str_showName.prefix(7)) + String(str_addData))
                //: } else {
            } else {
                //: imgStr = isVideoChat ?"chat_video_cancel":"chat_voice_cancel"
                imgStr = isVideoChat ?String(bytes: str_lastWithValue.map{appCaseText(to: $0)}, encoding: .utf8)! : (String(str_keyDataInName.prefix(6)) + "oice_can" + str_kitValue.lowercased())
            }
        }
        //: callImgView.image = UIImage.nearTap(name: imgStr)
        callImgView.image = UIImage.nearTap(name: imgStr)

        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.exceptEqual(fontSize: 17), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.exceptEqual(fontSize: 17), alignment: .center)

        //: return attachText
        return attachText
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func writeMake() -> NSMutableAttributedString {
        //: let tempText = self.translatedContent
        let tempText = self.translatedContent
        //: let transAttrStr = NSMutableAttributedString.init(string: tempText)
        let transAttrStr = NSMutableAttributedString(string: tempText)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: var color = UIColor(hex: "#16D073")!
        var color = UIColor(hex: "#16D073")!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: "#F95644")!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.exceptEqual(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.exceptEqual(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
