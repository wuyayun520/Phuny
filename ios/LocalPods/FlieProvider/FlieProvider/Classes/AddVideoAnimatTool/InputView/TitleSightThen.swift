
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalName:[UInt8] = [0xb2,0xb7,0xb2,0xbd,0x71,0xac,0xb8,0xad,0xae,0xbb,0x83,0x72,0x69,0xb1,0xaa,0xbc,0x69,0xb7,0xb8,0xbd,0x69,0xab,0xae,0xae,0xb7,0x69,0xb2,0xb6,0xb9,0xb5,0xae,0xb6,0xae,0xb7,0xbd,0xae,0xad]

fileprivate func pushView(color num: UInt8) -> UInt8 {
    let value = Int(num) - 73
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_translation" :*/
fileprivate let str_modelData:[Character] = ["i","c","o","n","_","t","r","a","n","s","l","a","t","i","o","n"]

/*: "English" :*/
fileprivate let str_viewGiftValue:String = "Englishmake name self"

/*: "icon_translation_go" :*/
fileprivate let str_managerData:String = "icon_treturn lab let model key"
fileprivate let str_arrayValue:[Character] = ["r","a","n"]
fileprivate let str_colorTopName:String = "SLATI"

/*: "Trans" :*/
fileprivate let str_targetValue:[Character] = ["T","r","a","n","s"]

/*: "targetText" :*/
fileprivate let str_modelName:[Character] = ["t","a","r","g","e","t","T","e","x","t"]

/*: "en" :*/
fileprivate let str_wrapCallName:[Character] = ["e","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleSightThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import UIKit
import UIKit

//: import NaturalLanguage
import NaturalLanguage

//: class TalkingSelectTranslationView: UIView {
class TitleSightThen: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        delaySubviews()
        //: setupSubViewsConstraint()
        signature()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalName.map{pushView(color: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: btn.setImage(UIImage.nearTap(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_modelData))), for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.frontColor(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle("English".localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: let image = UIImage.nearTap(name: "icon_translation_go").withTintColor(.appThemeColor())
        let image = UIImage.nearTap(name: (String(str_managerData.prefix(6)) + String(str_arrayValue) + str_colorTopName.lowercased() + "on_go")).withTintColor(.labelSumervalMedium())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.labelSumervalMedium(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle("Trans".localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nameKindHead), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension TitleSightThen {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func dent() {
        //: TalkingChatRequestTool.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        ChatMakeReactiveCompatible.nameIn(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(String(str_modelName))].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension TitleSightThen {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func commemorative(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func nameKindHead() {
        //: self.req_translateText()
        self.dent()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension TitleSightThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func delaySubviews() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func signature() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
