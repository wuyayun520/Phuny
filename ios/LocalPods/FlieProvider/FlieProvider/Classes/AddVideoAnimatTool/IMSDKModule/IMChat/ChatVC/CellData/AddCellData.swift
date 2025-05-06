
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_popPastName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "View read receipts?" :*/
fileprivate let str_normalTitle:[Character] = ["V","i","e","w"," ","r","e","a","d"," ","r","e","c","e","i","p","t"]
fileprivate let str_tentData:[Character] = ["s","?"]

/*: "text" :*/
fileprivate let str_playerData:String = "officialxt"

/*: "color" :*/
fileprivate let str_removeName:[UInt8] = [0x8d,0x81,0x82,0x81,0x9c]

/*: "<br/>" :*/
fileprivate let str_colorValue:[Character] = ["<","b","r","/",">"]

/*: "\n" :*/
fileprivate let str_imageName:String = "\n"

/*: "<br />" :*/
fileprivate let str_sendValue:[Character] = ["<","b","r"," ","/",">"]

/*: "<xml>%@</xml>" :*/
fileprivate let str_transformData:String = "<xml>%@on all"
fileprivate let str_appName:String = "data begin view cell except</xml>"

/*: "href" :*/
fileprivate let str_timeContent:String = "hrphotof"

/*: "type" :*/
fileprivate let str_maxValue:[UInt8] = [0xbb,0xb6,0xbf,0xaa]

/*: "txt" :*/
fileprivate let str_requestTitle:String = "ttranslatet"

/*: "padding" :*/
fileprivate let str_loadManagerEqualName:String = "perrorddi"
fileprivate let str_textDataName:String = "playerg"

/*: "size" :*/
fileprivate let str_trackText:String = "SIZE"

/*: "maxFont" :*/
fileprivate let str_userModelText:[Character] = ["m","a","x","F","o","n"]
fileprivate let str_deviceData:[Character] = ["t"]

/*: "link" :*/
fileprivate let str_toName:String = "datank"

/*: "PingFangSC-Regular" :*/
fileprivate let str_viewValue:String = "PingFaview wrap model"
fileprivate let str_bottomValue:String = "gindexlar"

/*: "content" :*/
fileprivate let str_keyName:[UInt8] = [0xf8,0xf4,0xf5,0xef,0xfe,0xf5,0xef]

private func falseData(bind num: UInt8) -> UInt8 {
    return num ^ 155
}

/*: "%@" :*/
fileprivate let str_borderValue:String = "%match"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class AddCellData: TalkingChatMsgBaseCellData {
@objcMembers public class AddCellData: MakeCellData {
    //: var yyLayout = YYTextLayout.init(containerSize: CGSize.init(), text: NSAttributedString.init())
    var yyLayout = YYTextLayout(containerSize: CGSize(), text: NSAttributedString())

    //: override public var msgModel: LockModel {
    override public var msgModel: LockModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: self.cellLayout =  MessageCellLayout.systemMessageLayout()
        self.cellLayout = MessageCellLayout.systemMessageLayout()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_popPastName.reversed(), encoding: .utf8)!)
    }

    //: public override func height(ofWidth width: CGFloat) ->CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: return contentSize().height+20
        return contentSize().height + 20
    }

    //: public override func contentSize() ->CGSize {
    override public func contentSize() -> CGSize {
        // 是否是已读回执引导充值VIP
        //: if self.msgModel.tips.content == "View read receipts?".localized {
        if self.msgModel.tips.content == (String(str_normalTitle) + String(str_tentData)).localized {
            //: return CGSize(width: ScreenWidth, height: 30)
            return CGSize(width: consLet_errorDeviceHeightData, height: 30)
        }

        //: if self.attributedString.string.count == 0 {
        if self.attributedString.string.count == 0 {
            //: return CGSize.zero
            return CGSize.zero
        }

        //: let rect = self.attributedString.boundingRect(with: CGSize.init(width: OverdoReactiveCompatible.getScreenWidth()-50, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil )
        let rect = self.attributedString.boundingRect(with: CGSize(width: OverdoReactiveCompatible.observerReason() - 50, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil)
        //: var size = CGSize.init(width: rect.size.width, height: rect.size.height)
        var size = CGSize(width: rect.size.width, height: rect.size.height)

        //: size.height += 10
        size.height += 10
        //: size.width += 18
        size.width += 18
        //: return size
        return size
    }

    //: public lazy var attributedString: NSMutableAttributedString = {
    public lazy var attributedString: NSMutableAttributedString = {
        //: var attr = formatMessageToStringM(info: self.msgModel.tips)
        var attr = consumer(info: self.msgModel.tips)
        //: return attr
        return attr
        //: }()
    }()
}

//: extension AddCellData {
extension AddCellData {
    //: func formatMessageToStringM(info: AbTalkingChatMsgTipsModel) -> NSMutableAttributedString {
    func consumer(info: EqualModel) -> NSMutableAttributedString {
//        let extra = String.init(data: self.innerMessage.customElem.data, encoding: .utf8)
//        let dic = NSDictionary(jsonString: extra ?? "")
        //: let content = info.content
        let content = info.content

        //: return designTextFream(tips: content)
        return startGroup(tips: content)
    }

    //: func designTextFream(tips: String) -> NSMutableAttributedString {
    func startGroup(tips: String) -> NSMutableAttributedString {
        //: let attrbutedArray = NSMutableArray.init()
        let attrbutedArray = NSMutableArray()
        //: let para = NSMutableParagraphStyle.init()
        let para = NSMutableParagraphStyle()
        //: para.lineBreakMode = .byWordWrapping
        para.lineBreakMode = .byWordWrapping
        //: para.alignment = .left
        para.alignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: para.baseWritingDirection = .rightToLeft
            para.baseWritingDirection = .rightToLeft
            //: para.alignment = .right
            para.alignment = .right
        }
        //: _ = desginPureMsgFromXml(msg: tips, info: attrbutedArray)
        _ = magnitudeeriorAdd(msg: tips, info: attrbutedArray)
        //: self.yyLayout = designYYTextLayout(array: attrbutedArray, displayMaxWidth: OverdoReactiveCompatible.getScreenWidth()-50, para: para)
        self.yyLayout = layout(array: attrbutedArray, displayMaxWidth: OverdoReactiveCompatible.observerReason() - 50, para: para)

        //: let text = NSMutableAttributedString.init(attributedString: self.yyLayout?.text ?? NSAttributedString.init())
        let text = NSMutableAttributedString(attributedString: self.yyLayout?.text ?? NSAttributedString())

        //: return text
        return text
    }

    //: func desginPureMsgFromXml(msg: String, info: NSMutableArray) -> String {
    func magnitudeeriorAdd(msg: String, info: NSMutableArray) -> String {
        //: let contentAttrArray = NSMutableArray.init()
        let contentAttrArray = NSMutableArray()
        //: let pure_msg = parseXML(source: msg, attrbAM: contentAttrArray)
        let pure_msg = tossOff(source: msg, attrbAM: contentAttrArray)
        //: for  textInfo in contentAttrArray {
        for textInfo in contentAttrArray {
            //: let textDic = textInfo as![String: Any]
            let textDic = textInfo as! [String: Any]
            //: let text: String = textDic["text"] as! String
            let text: String = textDic["text"] as! String

            //: var textColor: UIColor?
            var textColor: UIColor?

            //: var obj = textDic["color"]
            var obj = textDic["color"]
            //: if obj is UIColor {
            if obj is UIColor {
                //: obj = obj as? UIColor
                obj = obj as? UIColor

                //: } else if obj is String {
            } else if obj is String {
                //: textColor = UIColor.init(hex: obj as! String) ?? .black
                textColor = UIColor(hex: obj as! String) ?? .black
            }
            //: let contentDict = NSMutableDictionary.init(dictionary: textDic)
            let contentDict = NSMutableDictionary(dictionary: textDic)
            //: contentDict.removeObjects(forKeys: ["color", "text"])
            contentDict.removeObjects(forKeys: ["color", "text"])

            //: let attrDict = ctDictionaryForText(content: text, color: textColor)
            let attrDict = gestureColor(content: text, color: textColor)
            //: contentDict.addEntries(from: attrDict as! [AnyHashable: Any])
            contentDict.addEntries(from: attrDict as! [AnyHashable: Any])
            //: info.add(contentDict)
            info.add(contentDict)
        }
        //: return pure_msg
        return pure_msg
    }

    //: func parseXML(source: String, attrbAM: NSMutableArray) -> String {
    func tossOff(source: String, attrbAM: NSMutableArray) -> String {
        //: var newSource = source.replacingOccurrences(of: "<br/>", with: "\n")
        var newSource = source.replacingOccurrences(of: "<br/>", with: "\n")
        //: newSource = source.replacingOccurrences(of: "<br />", with: "\n")
        newSource = source.replacingOccurrences(of: "<br />", with: "\n")
        //: do {
        do {
            //: let document = try ONOXMLDocument(string: String.init(format: "<xml>%@</xml>", newSource), encoding: CFStringConvertEncodingToNSStringEncoding(CFStringBuiltInEncodings.UTF8.rawValue))
            let document = try ONOXMLDocument(string: String(format: "<xml>%@</xml>", newSource), encoding: CFStringConvertEncodingToNSStringEncoding(CFStringBuiltInEncodings.UTF8.rawValue))
            //: let element = document.rootElement
            let element = document.rootElement
            //: parseXMLElement(element: element ?? ONOXMLElement(), arrM: attrbAM, attrib: ["color": UIColor.white])
            barAttrib(element: element ?? ONOXMLElement(), arrM: attrbAM, attrib: ["color": UIColor.white])
            //: return element?.stringValue() ?? ""
            return element?.stringValue() ?? ""

            //: } catch {
        } catch {
            //: attrbAM.add(["text": newSource, "color": UIColor.white])
            attrbAM.add(["text": newSource, "color": UIColor.white])
            //: return newSource
            return newSource
        }
    }

    //: func parseXMLElement(element: ONOXMLElement, arrM: NSMutableArray, attrib: NSDictionary) {
    func barAttrib(element: ONOXMLElement, arrM: NSMutableArray, attrib: NSDictionary) {
        //: let children: NSArray = element.children(withTag: "")! as NSArray
        let children: NSArray = element.children(withTag: "")! as NSArray

        //: if children.count > 0 {
        if children.count > 0 {
            //: let parentInfo = NSMutableDictionary.init(dictionary: attrib)
            let parentInfo = NSMutableDictionary(dictionary: attrib)
            //: parentInfo.addEntries(from: element.attributes)
            parentInfo.addEntries(from: element.attributes)

            // html标签解析
            //: if element.tag == "u" { // 下滑线
            if element.tag == "u" { // 下滑线
                //: parentInfo["u"] = (true)
                parentInfo["u"] = true

                //: } else if element.tag == "a" { // html 链接
            } else if element.tag == "a" { // html 链接
                //: let url: String = element.attributes["href"] as! String
                let url: String = element.attributes["href"] as! String
                //: if url.count > 0 {
                if url.count > 0 {
                    //: parentInfo["href"] = url
                    parentInfo["href"] = url
                }
            }
            //: for  subElement in children {
            for subElement in children {
                //: parseXMLElement(element: subElement as! ONOXMLElement, arrM: arrM, attrib: parentInfo)
                barAttrib(element: subElement as! ONOXMLElement, arrM: arrM, attrib: parentInfo)
            }

            //: } else {
        } else {
            //: let text: String? = element.stringValue()
            let text: String? = element.stringValue()
            //: if text != nil {
            if text != nil {
                //: let info = NSMutableDictionary.init(dictionary: attrib)
                let info = NSMutableDictionary(dictionary: attrib) // 父节点属性
                //: info.addEntries(from: element.attributes)
                info.addEntries(from: element.attributes) // 当前节点属性，覆盖父节点属性
                //: info["text"] = text
                info["text"] = text
                //: arrM.add(info)
                arrM.add(info)
            }
        }
    }

    //: func designYYTextLayout(array: NSArray, displayMaxWidth: CGFloat, para: NSParagraphStyle?) ->YYTextLayout {
    func layout(array: NSArray, displayMaxWidth: CGFloat, para: NSParagraphStyle?) -> YYTextLayout {
        //: let attrString = designAttribStr(array: array, paragraphStyle: para)
        let attrString = objectStar(array: array, paragraphStyle: para)

        //: guard let yyLayout = YYTextLayout.init(containerSize: CGSize.init(width: displayMaxWidth, height: CGFloat(MAXFLOAT)), text: attrString) else {
        guard let yyLayout = YYTextLayout(containerSize: CGSize(width: displayMaxWidth, height: CGFloat(MAXFLOAT)), text: attrString) else {
            //: return YYTextLayout.init(containerSize: CGSize.init(width: 0, height: 0), text: NSMutableAttributedString.init())!
            return YYTextLayout(containerSize: CGSize(width: 0, height: 0), text: NSMutableAttributedString())!
        }
        //: return yyLayout
        return yyLayout
    }

    //: func designAttribStr(array: NSArray, paragraphStyle: NSParagraphStyle?) ->NSAttributedString {
    func objectStar(array: NSArray, paragraphStyle: NSParagraphStyle?) -> NSAttributedString {
        //: let mAttrString = NSMutableAttributedString.init(string: "\u{202A}")
        let mAttrString = NSMutableAttributedString(string: "\u{202A}")

        //: array.enumerateObjects { obj, idx, stop in
        array.enumerateObjects { obj, _, _ in
            //: let newObj = obj as![String: Any]
            let newObj = obj as! [String: Any]
            //: let type = newObj["type"] as? String
            let type = newObj["type"] as? String
            //: var tmp = NSAttributedString.init()
            var tmp = NSAttributedString()
            //: if type  == "txt" {
            if type == "txt" {
                //: tmp = designAttribStrByTextDic(dict: newObj as NSDictionary)
                tmp = sizeDesign(dict: newObj as NSDictionary)
                //: } else if type == "padding" {
            } else if type == "padding" {
                //: let imageView = UIImageView.init()
                let imageView = UIImageView()
                //: imageView.size = (newObj["size"] as! NSValue).cgSizeValue
                imageView.size = (newObj["size"] as! NSValue).cgSizeValue
                //: tmp = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: newObj["maxFont"] as! UIFont, alignment: .center)
                tmp = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: newObj["maxFont"] as! UIFont, alignment: .center)
            }
            //: mAttrString.append(tmp)
            mAttrString.append(tmp)

            //: var underline = false
            var underline = false
            //: if newObj.keys.contains("u") {
            if newObj.keys.contains("u") {
                //: underline = (newObj["u"] as! NSNumber).boolValue
                underline = (newObj["u"] as! NSNumber).boolValue
            }
            //: if underline {
            if underline {
                //: let len = tmp.length
                let len = tmp.length
                //: if len > 0 {
                if len > 0 {
                    //: _ = YYTextDecoration.init(style: .single, width: (1.5), color: newObj["color"] as? UIColor)
                    _ = YYTextDecoration(style: .single, width: 1.5, color: newObj["color"] as? UIColor)
                    //: mAttrString.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single], range: NSMakeRange(mAttrString.length - tmp.length, tmp.length))
                    mAttrString.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single], range: NSMakeRange(mAttrString.length - tmp.length, tmp.length))
                }
            }
        }
        //: mAttrString.append(NSAttributedString.init(string: "\u{202C}"))
        mAttrString.append(NSAttributedString(string: "\u{202C}"))

        //: var newParagraphStyle = paragraphStyle
        var newParagraphStyle = paragraphStyle
        //: if paragraphStyle == nil {
        if paragraphStyle == nil {
            //: let tempStyle = NSMutableParagraphStyle.init()
            let tempStyle = NSMutableParagraphStyle()
            //: tempStyle.alignment = .left
            tempStyle.alignment = .left
            //: tempStyle.lineBreakMode = .byCharWrapping
            tempStyle.lineBreakMode = .byCharWrapping
            //: newParagraphStyle = tempStyle
            newParagraphStyle = tempStyle
        }
        //: mAttrString.addAttributes([NSAttributedString.Key.paragraphStyle: newParagraphStyle!], range: NSMakeRange(0, mAttrString.length))
        mAttrString.addAttributes([NSAttributedString.Key.paragraphStyle: newParagraphStyle!], range: NSMakeRange(0, mAttrString.length))
        //: return mAttrString
        return mAttrString
    }

    //: func desginAttribStrByPaddingDic(dict: NSDictionary) ->NSAttributedString {
    func cellContentDict(dict: NSDictionary) -> NSAttributedString {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.size = (dict["size"]as! NSValue).cgSizeValue
        imageView.size = (dict["size"] as! NSValue).cgSizeValue
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: dict["maxFont"] as! UIFont, alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView, contentMode: .center, attachmentSize: imageView.size, alignTo: dict["maxFont"] as! UIFont, alignment: .center)
        //: return attachText
        return attachText
    }

    //: func designAttribStrByTextDic(dict: NSDictionary) ->NSMutableAttributedString {
    func sizeDesign(dict: NSDictionary) -> NSMutableAttributedString {
        //: let type = dict["type"] as! String
        let type = dict["type"] as! String
        //: if type != "link" && type != "txt" {
        if type != "link" && type != "txt" {
            //: return NSMutableAttributedString.init()
            return NSMutableAttributedString()
        }
        //: let attributes = attributesWithConfig()
        let attributes = atConfig()
        // set color
        //: let color = dict["color"] as? UIColor
        let color = dict["color"] as? UIColor
        //: if color != nil {
        if color != nil {
            //: attributes[kCTForegroundColorAttributeName] = color?.cgColor
            attributes[kCTForegroundColorAttributeName] = color?.cgColor
        }

        // set font size
        //: let fontSize = (dict["size"] as? NSNumber)?.floatValue
        let fontSize = (dict["size"] as? NSNumber)?.floatValue
        //: if (fontSize ?? 0 > 0) {
        if fontSize ?? 0 > 0 {
            //: let fontRef = CTFontCreateWithName("PingFangSC-Regular" as CFString, CGFloat(fontSize!), nil)
            let fontRef = CTFontCreateWithName((String(str_viewValue.prefix(6)) + "ngSC-Re" + str_bottomValue.replacingOccurrences(of: "index", with: "u")) as CFString, CGFloat(fontSize!), nil)
            //: attributes[kCTFontAttributeName] = fontRef
            attributes[kCTFontAttributeName] = fontRef
        }
        //: var content = (dict["content"] != nil) ? dict["content"] : ""
        var content = (dict["content"] != nil) ? dict["content"] : ""
        //: if !(content is String) {
        if !(content is String) {
            //: content = String.init(format: "%@", content as! CVarArg)
            content = String(format: "%@", content as! CVarArg)
        }
        //: let attributedString = NSMutableAttributedString.init(string: content as! String, attributes: attributes as? [NSAttributedString.Key: Any])
        let attributedString = NSMutableAttributedString(string: content as! String, attributes: attributes as? [NSAttributedString.Key: Any])
        //: return attributedString
        return attributedString
    }

    //: func attributesWithConfig() -> NSMutableDictionary {
    func atConfig() -> NSMutableDictionary {
        //: let font = UIFont.exceptEqual(fontSize: 15)
        let font = UIFont.exceptEqual(fontSize: 15)
        //: let fontRef = CTFontCreateWithName(font.fontName as CFString, font.pointSize, nil)
        let fontRef = CTFontCreateWithName(font.fontName as CFString, font.pointSize, nil)
        //: var lineSpacing = 4
        var lineSpacing = 4
        //: let kNumberOfSettings = 3
        let kNumberOfSettings = 3
        //: let theSettings: [CTParagraphStyleSetting] =
        let theSettings: [CTParagraphStyleSetting] =
            //: [CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.lineSpacingAdjustment, valueSize:       MemoryLayout<CGFloat>.size, value: &lineSpacing),
            [CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.lineSpacingAdjustment, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing),
             //: CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.maximumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing),
             CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.maximumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing),
             //: CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.minimumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing)]
             CTParagraphStyleSetting(spec: CTParagraphStyleSpecifier.minimumLineSpacing, valueSize: MemoryLayout<CGFloat>.size, value: &lineSpacing)]

        //: let theParagraphRef = CTParagraphStyleCreate(theSettings, kNumberOfSettings)
        let theParagraphRef = CTParagraphStyleCreate(theSettings, kNumberOfSettings)
        //: let textColor = UIColor.white
        let textColor = UIColor.white
        //: let dict = NSMutableDictionary.init()
        let dict = NSMutableDictionary()
        //: dict[kCTForegroundColorAttributeName] = textColor.cgColor
        dict[kCTForegroundColorAttributeName] = textColor.cgColor
        //: dict[kCTFontAttributeName] = fontRef
        dict[kCTFontAttributeName] = fontRef
        //: dict[kCTParagraphStyleAttributeName] = theParagraphRef
        dict[kCTParagraphStyleAttributeName] = theParagraphRef

        //: return dict
        return dict
    }

    //: func ctDictionaryForText(content: String, color: UIColor?) ->NSDictionary {
    func gestureColor(content: String, color: UIColor?) -> NSDictionary {
        //: if content.count <= 0 {
        if content.count <= 0 {
            //: return NSDictionary.init()
            return NSDictionary()
        }
        //: if color == nil {
        if color == nil {
            //: return ctDictionaryForText(content: content)
            return fillLine(content: content)
        }
        //: return ["type": "txt",
        return ["type": "txt",
                //: "content": content,
                "content": content,
                //: "color": color ?? .black]
                "color": color ?? .black]
    }

    //: func ctDictionaryForText(content: String) ->NSDictionary {
    func fillLine(content: String) -> NSDictionary {
        //: if content.count <= 0 {
        if content.count <= 0 {
            //: return NSDictionary.init()
            return NSDictionary()
        }
        //: return ["type": "txt",
        return ["type": "txt",
                //: "content": content]
                "content": content]
    }
}
