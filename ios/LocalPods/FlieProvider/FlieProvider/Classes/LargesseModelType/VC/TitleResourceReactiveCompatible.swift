
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let str_constraintText:[UInt8] = [0x9e,0x68,0x9b,0xa1,0x6d,0xba,0x81,0x6d,0x9a,0x70,0x6d,0x79,0x9f,0x9c,0x6e,0x6d,0x9d,0x6b,0x69,0x80,0x68,0x9b,0x9c,0xa4,0xa1,0x6d,0xba,0x9c,0x6e,0x6d,0x9d,0x6b,0x69,0x9c,0x6e,0x68,0x9b,0xa1,0x6d,0xba,0x9c,0x6e,0x9d,0xbb,0x72,0x6c,0x76,0xbd,0x69,0x64]

fileprivate func neverArray(image num: UInt8) -> UInt8 {
    let value = Int(num) - 64
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let str_fatalValue:[UInt8] = [0xae,0xd8,0xd8,0xc1,0xab,0xc3,0xc4,0xc5,0xc7,0xc8,0xad,0xab,0xc0,0xdd,0xc9,0xad,0x8b,0xc9,0x8d,0xd9,0x8c,0xd8,0xd8,0xc0,0xac,0x94,0x8b,0xc2,0x8d,0xdd,0xac,0x94,0x8b,0xc8,0x8d,0xd9,0x8c,0xd8,0xc0,0xac,0x94,0x8b,0xc3,0x8d,0xdd,0xac,0x94,0x8b,0xc7,0xdc,0xc8,0x8d,0xd9,0x8c,0xd8,0xc0,0xac,0x94,0x8b,0xc1,0xc0,0xdc,0xc1,0xc1,0x8d,0xd9,0xd9,0xd4]

private func frameName(make num: UInt8) -> UInt8 {
    return num ^ 240
}

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let str_labName:[UInt8] = [0x10,0x66,0x15,0x12,0x3b,0x7a,0xb,0x7e,0x7e,0x63,0x12,0x3b,0x77,0x8,0xf,0x7b,0xf,0x63,0x14,0x2f,0x63,0x34,0x7e,0x63,0x77,0x11,0x13,0x35,0x7c,0x62,0x7f,0x7e,0x33,0x6a,0x67]

/*: "^[0-8]\\d{5}(?!\\d)$" :*/
fileprivate let str_centerRawValue:[Character] = ["^","[","0","-","8"]
fileprivate let str_textValue:[Character] = ["]","\\","d","{","5","}","(","?","!","\\","d",")","$"]

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let str_imageFrontValue:[Character] = ["^","[","a","-","z"]
fileprivate let str_inputPopName:String = "A-Z0-mode let"
fileprivate let str_modelValue:String = "status]{6"

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let str_fileData:[UInt8] = [0x67,0x11,0x51,0x4d,0x4d,0x49,0x4a,0x6,0x3,0x65,0x16,0x65,0x16,0x10,0x6,0x11,0x62,0x65,0x5d,0x58,0x14,0x43,0x65,0x17,0x14,0x64,0x12,0x10,0x65,0x17,0x11,0x62,0x58,0x14,0x43,0x65,0x17,0x64,0x42,0xb,0x15,0xf,0x44,0x10,0x11,0x62,0x65,0x16,0x65,0x4e,0x19,0x65,0x17,0x14,0x64,0x13,0x10,0x13,0x65,0x16,0x6,0x1d]

private func managerMake(fee num: UInt8) -> UInt8 {
    return num ^ 57
}

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let str_layerTitle:[UInt8] = [0x7b,0x45,0x5c,0x57,0x45,0x5c,0x57,0x4f,0x52,0x78,0x4d,0x4a,0x52,0x7a,0x99,0x4f,0x78,0x4d,0x4a,0x51,0x7a,0x78,0x4d,0x4a,0x56,0x7a,0x99,0x78,0x4d,0x4e,0x7a,0x5c,0x78,0x4d,0x4a,0x56,0x7a,0x78,0x4d,0x4a,0x56,0x7a,0x5c,0x46,0x79,0x4b,0x46,0x3d,0x98,0x50,0x9a,0x45,0x5c,0x57,0x4f,0x52,0x78,0x4d,0x4a,0x52,0x7a,0x99,0x4f,0x78,0x4d,0x4a,0x51,0x7a,0x78,0x4d,0x4a,0x56,0x7a,0x99,0x78,0x4d,0x4e,0x7a,0x5c,0x78,0x4d,0x4a,0x56,0x7a,0x78,0x4d,0x4a,0x56,0x7a,0x5c,0x46,0x41]

fileprivate func centerLabel(instance num: UInt8) -> UInt8 {
    let value = Int(num) - 29
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let str_fromValue:[UInt8] = [0xe,0x78,0x7d,0x16,0xb,0x1f,0x7b,0x5d,0x17,0x13,0x5b,0x2,0xf,0x5a,0xe,0x7d,0x16,0xb,0x1f,0x7b,0x5d,0x17,0x11,0x5b,0xe,0x7d,0x16,0xb,0x1f,0x7b,0x5a,0x7d,0x5e,0x7e,0x7b,0xf,0x2,0xf]

/*: "SELF MATCHES %@" :*/
fileprivate let str_contentValue:String = "SELF Mtag progress add list secret"
fileprivate let str_centerContent:String = "clear size count selfES %@"

/*: "Feedback" :*/
fileprivate let str_toName:String = "add imageFeedbac"
fileprivate let str_iconName:String = "equal"

/*: "Enter your feedback…" :*/
fileprivate let str_insideText:String = "Enteresult center make to return"
fileprivate let str_directionTitle:String = "FEED"
fileprivate let str_sizeTitle:[Character] = ["b","a","c","k","…"]

/*: "#999999" :*/
fileprivate let str_backgroundText:[Character] = ["#","9"]
fileprivate let str_timeViewText:[Character] = ["9","9","9","9","9"]

/*: "0/ :*/
fileprivate let str_sexName:String = "room/"

/*: "Your email (Required) " :*/
fileprivate let str_colorData:String = "target source giftYour e"
fileprivate let str_appData:String = "male inputRequi"
fileprivate let str_tipData:String = "table"

/*: "icon_me_feelback_star" :*/
fileprivate let str_ofValue:String = "icwhite"
fileprivate let str_atData:String = "eelbaview"

/*: "#CCCCCC" :*/
fileprivate let str_managerText:String = "#Clog data model cell var"
fileprivate let str_skirtValue:String = "tiptiptiptiptip"

/*: "Send" :*/
fileprivate let str_viewValue:String = "aspect color search noneSend"

/*: "#D0D0D0" :*/
fileprivate let str_toColorText:String = "#D0D0D0add let lab"

/*: "Please fill in the content" :*/
fileprivate let str_commentValue:[Character] = ["P","l","e","a","s","e"," ","f","i","l","l"," ","i","n"," "]
fileprivate let str_topName:String = "the con var"
fileprivate let str_titleValue:[Character] = ["o","n","t","e","n","t"]

/*: "Please enter the correct email address" :*/
fileprivate let str_tableContent:[UInt8] = [0x6a,0x56,0x5f,0x5b,0x49,0x5f,0x1a,0x5f,0x54,0x4e,0x5f,0x48,0x1a,0x4e,0x52,0x5f,0x1a,0x59,0x55,0x48,0x48,0x5f,0x59,0x4e,0x1a,0x5f,0x57,0x5b,0x53,0x56,0x1a,0x5b,0x5e,0x5e,0x48,0x5f,0x49,0x49]

private func delayPlayer(to num: UInt8) -> UInt8 {
    return num ^ 58
}

/*: "content" :*/
fileprivate let str_tempValue:[Character] = ["c","o","n","t","e","n","t"]

/*: "contactWay" :*/
fileprivate let str_iconData:String = "CONTAC"
fileprivate let str_fillName:[Character] = ["t","W","a","y"]

/*: "platform" :*/
fileprivate let str_titleFaceName:String = "platfsectionm"

/*: "iphone" :*/
fileprivate let str_tapName:String = "IPHONE"

/*: "version" :*/
fileprivate let str_fileValue:String = "VERSION"

/*: "type" :*/
fileprivate let str_topValue:[Character] = ["t","y","p","e"]

/*: "Operation succeeded" :*/
fileprivate let str_viewName:[Character] = ["O","p","e","r","a","t","i","o","n"," "]
fileprivate let str_adText:[Character] = ["s","u","c"]
fileprivate let str_modeData:String = "cpauseded"

/*: / :*/
fileprivate let str_shouldViewValue:[Character] = ["/"]

/*: "\n" :*/
fileprivate let str_indexAppContent:[Character] = ["\n"]

/*: "Problem statements" :*/
fileprivate let str_pathData:[Character] = ["P","r","o","b"]
fileprivate let str_yearData:[Character] = ["l","e","m"," ","s","t","a","t","e","m","e","n","t","s"]

/*: "Feature advice" :*/
fileprivate let str_requestContent:String = "index letFeatur"

/*: "Operation questions" :*/
fileprivate let str_errorName:[Character] = ["O","p","e","r","a","t","i","o","n"," ","q","u","e","s","t","i","o","n"]
fileprivate let str_customName:String = "spy"

/*: "Others" :*/
fileprivate let str_viewText:String = "Otherslet m"

/*: "#EFEDFF" :*/
fileprivate let str_insideData:[Character] = ["#","E"]
fileprivate let str_productData:String = "fedff"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleResourceReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum QualityColorValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: str_constraintText.map{neverArray(image: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: str_fatalValue.map{frameName(make: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: str_labName.map{$0^78}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(str_imageFrontValue) + String(str_inputPopName.prefix(5)) + str_modelValue.replacingOccurrences(of: "status", with: "9") + ",20}+$")
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: str_labName.map{$0^78}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: str_fileData.map{managerMake(fee: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: str_layerTitle.map{centerLabel(instance: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: str_fromValue.map{$0^38}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(str_contentValue.prefix(6)) + "ATCH" + String(str_centerContent.suffix(5))), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class TitleResourceReactiveCompatible: ServiceRecognizerDelegate {
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(str_toName.suffix(7)) + str_iconName.replacingOccurrences(of: "equal", with: "k")).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        isoclinal()
        //: addTapGestureRecognizer()
        currentView()
        //: addKeyboardNotification()
        successCallImage()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .appBgColor()
        view.backgroundColor = .primaryColorBarContent()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: RowHasDelegate = {
        //: let textView = TalkingTextView.init()
        let textView = RowHasDelegate()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(str_insideText.prefix(4)) + "r your " + str_directionTitle.lowercased() + String(str_sizeTitle)).localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: "#999999")!
        //: textView.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        textView.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.appNameVisualProperty()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .primaryColorBarContent()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: "#999999")
        //: LB.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        LB.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .primaryColorBarContent()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.appNameVisualProperty()
        //: tf.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        tf.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(str_colorData.suffix(6)) + "mail (" + String(str_appData.suffix(5)) + "red)" + str_tipData.replacingOccurrences(of: "table", with: " ")).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: "#999999")!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.nearTap(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.nearTap(name: (str_ofValue.replacingOccurrences(of: "white", with: "on") + "_me_f" + str_atData.replacingOccurrences(of: "view", with: "c") + "k_star"))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.fullMoon(color: UIColor(hex: "#CCCCCC")!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.fullMoon(color: UIColor.labelSumervalMedium(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle("Send".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mode), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension TitleResourceReactiveCompatible {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func locationFee(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: "#D0D0D0")?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func mode() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.noblesseExtra(showMsg: (String(str_commentValue) + String(str_topName.prefix(5)) + String(str_titleValue)).localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if ServerLanguageManager.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !QualityColorValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.noblesseExtra(showMsg: String(bytes: str_tableContent.map{delayPlayer(to: $0)}, encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict["content"] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(str_iconData.lowercased() + String(str_fillName))] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(str_titleFaceName.replacingOccurrences(of: "section", with: "or"))] = "iphone"
        //: dict["version"] = AppVersion
        dict["version"] = consLet_keyScreenTimeTitle
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict["type"] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        DeviceFailThen.callMake()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        KeyReactiveCompatible.upwards(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.scaleMsg(showMsg: (String(str_viewName) + String(str_adText) + str_modeData.replacingOccurrences(of: "pause", with: "ee")).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func successCallImage() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(nameFilter(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(totalimateNotification(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func nameFilter(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + consLet_tabValue) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + consLet_tabValue) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func totalimateNotification(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension TitleResourceReactiveCompatible: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = electromotiveForceSeriesWith(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func electromotiveForceSeriesWith(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension TitleResourceReactiveCompatible {
    //: func designView() {
    func isoclinal() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(str_pathData) + String(str_yearData)).localized,
                   //: "Feature advice".localized,
                   (String(str_requestContent.suffix(6)) + "e advice").localized,
                   //: "Operation questions".localized,
                   (String(str_errorName) + str_customName.replacingOccurrences(of: "spy", with: "s")).localized,
                   //: "Others".localized]
                   "Others".localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(consLet_errorDeviceHeightData) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.appThemeColor(), for: .selected)
            btn.setTitleColor(.labelSumervalMedium(), for: .selected)

            //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.es.rawValue || TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: "#D0D0D0")?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.fullMoon(color: UIColor(hex: "#EFEDFF")!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.fullMoon(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(locationFee(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
