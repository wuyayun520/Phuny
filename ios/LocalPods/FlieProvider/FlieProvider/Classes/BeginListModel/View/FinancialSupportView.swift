
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameData:[UInt8] = [0xde,0xd9,0xde,0xc3,0x9f,0xd4,0xd8,0xd3,0xd2,0xc5,0x8d,0x9e,0x97,0xdf,0xd6,0xc4,0x97,0xd9,0xd8,0xc3,0x97,0xd5,0xd2,0xd2,0xd9,0x97,0xde,0xda,0xc7,0xdb,0xd2,0xda,0xd2,0xd9,0xc3,0xd2,0xd3]

/*: "What would you like to share with others? (Free)" :*/
fileprivate let str_mediaImageData:[UInt8] = [0xe8,0xd7,0xde,0xcb,0x9f,0xc8,0xd0,0xca,0xd3,0xdb,0x9f,0xc6,0xd0,0xca,0x9f,0xd3,0xd6,0xd4,0xda,0x9f,0xcb,0xd0,0x9f,0xcc,0xd7,0xde,0xcd,0xda,0x9f,0xc8,0xd6,0xcb,0xd7,0x9f,0xd0,0xcb,0xd7,0xda,0xcd,0xcc,0x80,0x9f,0x97,0xf9,0xcd,0xda,0xda,0x96]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FinancialSupportView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

// 限制长度
//: let kFreeTextLengthLimit = 300
let consLet_informationValue = 300

//: class FreeCollectionHeaderView: UICollectionReusableView {
class FinancialSupportView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameData.map{$0^183}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        omitContainer()
        //: setupSubViewsConstraint()
        toConstraint()
    }

    // MARK: - Lazy load

    //: lazy var textView: YYTextView = {
    lazy var textView: YYTextView = {
        //: let tv = YYTextView()
        let tv = YYTextView()
        //: tv.textColor = UIColor.appTitleColor()
        tv.textColor = UIColor.appNameVisualProperty()
        //: tv.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        tv.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        //: tv.placeholderText = "What would you like to share with others? (Free)".localized
        tv.placeholderText = String(bytes: str_mediaImageData.map{$0^191}, encoding: .utf8)!.localized
        //: tv.placeholderFont = UIFont.loadEnable(type: .Regular, fontSize: 15)
        tv.placeholderFont = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: tv.placeholderTextColor = UIColor.appValueDetailColor()
        tv.placeholderTextColor = UIColor.bringHomeColor()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: tv.textAlignment = .right
            tv.textAlignment = .right
        }
        //: tv.delegate = self
        tv.delegate = self
        //: return tv
        return tv
        //: }()
    }()

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - YYTextViewDelegate

//: extension FreeCollectionHeaderView: YYTextViewDelegate {
extension FinancialSupportView: YYTextViewDelegate {
    //: func textView(_ textView: YYTextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: YYTextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < kFreeTextLengthLimit else {
        guard string.count < consLet_informationValue else {
            //: return false
            return false
        }

        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionHeaderView {
extension FinancialSupportView {
    // 添加视图
    //: private func setupSubviews() {
    private func omitContainer() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(textView)
        backView.addSubview(textView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func toConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
        }
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
        }
    }
}
