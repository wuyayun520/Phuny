
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_itemPhoneContent:[UInt8] = [0x9c,0x9b,0x9c,0x81,0xdd,0x96,0x9a,0x91,0x90,0x87,0xcf,0xdc,0xd5,0x9d,0x94,0x86,0xd5,0x9b,0x9a,0x81,0xd5,0x97,0x90,0x90,0x9b,0xd5,0x9c,0x98,0x85,0x99,0x90,0x98,0x90,0x9b,0x81,0x90,0x91]

private func momentMakeContent(info num: UInt8) -> UInt8 {
    return num ^ 245
}

/*: "icon_translation_go" :*/
fileprivate let str_loadValue:[Character] = ["i","c","o","n","_","t","r"]
fileprivate let str_addName:String = "to"
fileprivate let str_labelName:[Character] = ["n","s","l","a","t","i","o","n","_","g","o"]

/*: "#EAE8FE" :*/
fileprivate let str_amData:String = "#"
fileprivate let str_observerMyData:String = "EAEtitleE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeReactiveCompatible.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesTopView: UIView {
class MakeReactiveCompatible: UIView {
    //: var tapBlock: (() -> Void)?
    var tapBlock: (() -> Void)?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupMethod()
        //: setupSubViewsConstraint()
        elementMobile()
        //: bindInteraction()
        currentOn()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_itemPhoneContent.map{momentMakeContent(info: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appThemeColor()
        lab.textColor = UIColor.labelSumervalMedium()
        //: lab.font = UIFont.exceptEqual(fontSize: 16)
        lab.font = UIFont.exceptEqual(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_translation_go").withTintColor(.appThemeColor())
        img.image = UIImage.nearTap(name: (String(str_loadValue) + str_addName.replacingOccurrences(of: "to", with: "a") + String(str_labelName))).withTintColor(.labelSumervalMedium())
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension PrivateChatNotesTopView {
extension MakeReactiveCompatible {
    /// 刷新视图
    //: func refresh(_ model: UserHandyJSON) {
    func graduatedTable(_ model: UserHandyJSON) {
        //: self.isHidden = (model.top != 1)
        self.isHidden = (model.top != 1)
        //: contentLab.text = model.content
        contentLab.text = model.content
    }

    /// 点击事件
    //: @objc private func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc private func premiumRelease(_: UITapGestureRecognizer) {
        //: tapBlock?()
        tapBlock?()
    }
}

// MARK: - Layout

//: extension PrivateChatNotesTopView {
extension MakeReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupMethod() {
        //: backgroundColor = UIColor(hex: "#EAE8FE")
        backgroundColor = UIColor(hex: "#EAE8FE")
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: layer.borderColor = UIColor.appThemeColor().cgColor
        layer.borderColor = UIColor.labelSumervalMedium().cgColor
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.masksToBounds = true
        layer.masksToBounds = true

        //: addSubview(contentLab)
        addSubview(contentLab)
        //: addSubview(imgV)
        addSubview(imgV)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func elementMobile() {
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.width.equalTo(10)
            make.height.width.equalTo(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func currentOn() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(premiumRelease))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
