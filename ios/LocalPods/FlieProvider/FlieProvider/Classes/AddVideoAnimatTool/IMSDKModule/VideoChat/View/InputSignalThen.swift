
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_moreTowardData:[UInt8] = [0xb1,0xb6,0xb1,0xac,0xf0,0xbb,0xb7,0xbc,0xbd,0xaa,0xe2,0xf1,0xf8,0xb0,0xb9,0xab,0xf8,0xb6,0xb7,0xac,0xf8,0xba,0xbd,0xbd,0xb6,0xf8,0xb1,0xb5,0xa8,0xb4,0xbd,0xb5,0xbd,0xb6,0xac,0xbd,0xbc]

private func lineSpectrumRestore(model num: UInt8) -> UInt8 {
    return num ^ 216
}

/*: "btn_chat_send_nor" :*/
fileprivate let str_pushValue:String = "btn_tool view else log"
fileprivate let str_voiceData:String = "end_nolet list"
fileprivate let str_leadingValue:String = "cell"

/*: "btn_chat_send_dis" :*/
fileprivate let str_lineWhenName:String = "medium my model namebtn_ch"
fileprivate let str_toName:[Character] = ["a","t","_","s","e","n","d","_","d","i","s"]

/*: "Send" :*/
fileprivate let str_pathData:String = "Sendtype area if"

/*: "Say something...     " :*/
fileprivate let str_clipValue:String = "Say socolor button class"
fileprivate let str_successValue:[Character] = ["i","n","g","."]
fileprivate let str_appValue:String = "..demonstratedemonstratedemonstratedemonstratedemonstrate"

/*: "Can't send blank message" :*/
fileprivate let str_infoValue:[Character] = ["C","a","n","\'","t"," ","s","e","n","d"," ","b","l","a","n","k"," ","m","e","s","s","a","g","e"]

/*: "\n" :*/
fileprivate let str_textData:String = "\n"

/*: "contentSize" :*/
fileprivate let str_frameStandardContent:String = "concoloren"
fileprivate let str_sizeInputSucceedData:String = "tSizeas let"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputSignalThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoCallInputViewDelegate: NSObject {
protocol ManagerViewDelegate: NSObject {
    //: func func__sendTextMsg(msgStr: String)
    func makeColor(msgStr: String)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func designState(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func buttonHeight(height: CGFloat)
}

//: class TalkingVideoCallInputView: UIView {
class InputSignalThen: UIView {
    //: let textMaxLengthLimit = 255
    let textMaxLengthLimit = 255
    //: open weak var delegate: TalkingVideoCallInputViewDelegate?
    open weak var delegate: ManagerViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        withSubviews()
        //: setupSubViewsConstraint()
        resign()
        //: bindInteraction()
        showReciprocation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_moreTowardData.map{lineSpectrumRestore(model: $0)}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_pushValue.prefix(4)) + "chat_s" + String(str_voiceData.prefix(6)) + str_leadingValue.replacingOccurrences(of: "cell", with: "r"))), for: .normal)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_pushValue.prefix(4)) + "chat_s" + String(str_voiceData.prefix(6)) + str_leadingValue.replacingOccurrences(of: "cell", with: "r"))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_lineWhenName.suffix(6)) + String(str_toName))), for: .disabled)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle("Send".localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 15)
        btn.titleLabel?.font = UIFont.little(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(failClick), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view

        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: EconomicAidReactiveCompatible = {
        //: let input = InputTextView()
        let input = EconomicAidReactiveCompatible()
        //: input.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        input.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: input.placeholderColor = UIColor.init(red: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 0.8)
        input.placeholderColor = UIColor(red: 153 / 255.0, green: 153 / 255.0, blue: 153 / 255.0, alpha: 0.8)
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(str_clipValue.prefix(6)) + "meth" + String(str_successValue) + str_appValue.replacingOccurrences(of: "demonstrate", with: " ")).localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.white
        input.backgroundColor = UIColor.white
        //: input.textColor = UIColor.appTitleColor()
        input.textColor = UIColor.appNameVisualProperty()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), .font: UIFont.loadEnable(type: .Regular, fontSize: 15)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.appNameVisualProperty(), .font: UIFont.loadEnable(type: .Regular, fontSize: 15)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
//        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingVideoCallInputView {
extension InputSignalThen {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func premiumPlaceholder() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func failClick() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.holder(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            noblesseExtra(showMsg: (String(str_infoValue)).localized)
            //: return
            return
        }
        //: self.delegate?.func__sendTextMsg(msgStr: textstr)
        self.delegate?.makeColor(msgStr: textstr)
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        weight()
    }

    //: func resignkeyBoard() {
    func weight() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(str_clipValue.prefix(6)) + "meth" + String(str_successValue) + str_appValue.replacingOccurrences(of: "demonstrate", with: " ")).localized
        }
    }

    //: func func__updateInputContentView() {
    func executeView() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(30, min(100, textSize.height))
        let textHeight = max(30, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight+16)
        self.delegate?.buttonHeight(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func showNotification(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.designState(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func sumeractionTitle(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
//
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.designState(heightToBottom: 0)
    }
}

//: extension TalkingVideoCallInputView {
extension InputSignalThen {
    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func holder(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { _, range, _ in
            //: let str = mText.attributedSubstring(from: range).string
            let str = mText.attributedSubstring(from: range).string
            //: string.append(str)
            string.append(str)
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingVideoCallInputView: UITextViewDelegate {
extension InputSignalThen: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: sendBtn.isEnabled = true
            sendBtn.isEnabled = true
            //: } else {
        } else {
            //: sendBtn.isEnabled = false
            sendBtn.isEnabled = false
        }
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < textMaxLengthLimit else {
        guard string.count < textMaxLengthLimit else {
            //: return false
            return false
        }
        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            failClick()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingVideoCallInputView {
extension InputSignalThen {
    // 添加视图
    //: private func setupSubviews() {
    private func withSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(sendBtn)
        contentView.addSubview(sendBtn)
        //: contentView.addSubview(inputTextView)
        contentView.addSubview(inputTextView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func resign() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: inputTextView.snp.makeConstraints { make in
        inputTextView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(contentView.snp.leading).offset(15)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            //: make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func showReciprocation() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(sumeractionTitle(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (str_frameStandardContent.replacingOccurrences(of: "color", with: "t") + String(str_sizeInputSucceedData.prefix(5)))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.executeView()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
