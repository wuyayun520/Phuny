
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cornerData:[UInt8] = [0x3a,0x3d,0x3a,0x27,0x7b,0x30,0x3c,0x37,0x36,0x21,0x69,0x7a,0x73,0x3b,0x32,0x20,0x73,0x3d,0x3c,0x27,0x73,0x31,0x36,0x36,0x3d,0x73,0x3a,0x3e,0x23,0x3f,0x36,0x3e,0x36,0x3d,0x27,0x36,0x37]

private func valueImage(pic num: UInt8) -> UInt8 {
    return num ^ 83
}

/*: "group_someoneatme" :*/
fileprivate let str_backData:String = "grotitlep"
fileprivate let str_imageSendContent:String = "contentneatme"

/*: "Someone@ me" :*/
fileprivate let str_fullData:String = "Somein self"
fileprivate let str_noName:String = "every"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WhiteReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class WhiteReactiveCompatible: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        giftClick()
        //: setupSubViewsConstraint()
        inner()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cornerData.map{valueImage(pic: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (str_backData.replacingOccurrences(of: "title", with: "u") + "_some" + str_imageSendContent.replacingOccurrences(of: "content", with: "o"))), for: .normal)
        //: btn.setBackgroundImage(UIImage.nearTap(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.nearTap(name: (str_backData.replacingOccurrences(of: "title", with: "u") + "_some" + str_imageSendContent.replacingOccurrences(of: "content", with: "o"))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(str_fullData.prefix(4)) + "one@ m" + str_noName.replacingOccurrences(of: "every", with: "e")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.everyUser(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension WhiteReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func giftClick() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func inner() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
