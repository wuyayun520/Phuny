
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_hiddenDateData:[UInt8] = [0xfe,0x3,0xfe,0x9,0xbd,0xf8,0x4,0xf9,0xfa,0x7,0xcf,0xbe,0xb5,0xfd,0xf6,0x8,0xb5,0x3,0x4,0x9,0xb5,0xf7,0xfa,0xfa,0x3,0xb5,0xfe,0x2,0x5,0x1,0xfa,0x2,0xfa,0x3,0x9,0xfa,0xf9]

fileprivate func eventPop(view num: UInt8) -> UInt8 {
    let value = Int(num) - 149
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let str_becomeName:String = "load return resistancebg_me"
fileprivate let str_selectedTitle:String = "otable"

/*: "#432813" :*/
fileprivate let str_menuName:String = "#4tool281tool"

/*: "me_premium_subscribed" :*/
fileprivate let str_exceptContent:[UInt8] = [0xb0,0xb8,0x82,0xad,0xaf,0xb8,0xb0,0xb4,0xa8,0xb0,0x82,0xae,0xa8,0xbf,0xae,0xbe,0xaf,0xb4,0xbf,0xb8,0xb9]

/*: "me_premium_upgrade" :*/
fileprivate let str_nearValue:String = "else main sourceme_pre"
fileprivate let str_currentTitleIfValue:[Character] = ["m","i","u","m"]
fileprivate let str_modelName:String = "_upgradehidden var model"

/*: "Expiration:  :*/
fileprivate let str_frameData:[Character] = ["E","x","p","i","r","a","t","i","o","n"]
fileprivate let str_enterTitle:[Character] = [":"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrizeCardCell.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/2/19.
//

//: import UIKit
import UIKit

//: class TalkingMeUpgradeCardCell: UITableViewCell {
class PrizeCardCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: setupSubviews()
        upSizeAt()
        //: setupSubViewsConstraint()
        stroke()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_hiddenDateData.map{eventPop(view: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView(image: UIImage.nearTap(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.nearTap(name: (String(str_becomeName.suffix(5)) + "ssage_t" + str_selectedTitle.replacingOccurrences(of: "table", with: "p"))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var expTimeLab: UILabel = {
    private lazy var expTimeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#432813")
        lab.textColor = UIColor(hex: "#432813")
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 14)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(step(_:)))
        //: return t
        return t
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeUpgradeCardCell {
extension PrizeCardCell {
    /// 点击跳转事件
    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func step(_: UITapGestureRecognizer) {
        //: PostPushManager.share.func__pushToSubscribeAlert()
        PostPushManager.share.markParams()
    }
}

// MARK: - Layout

//: extension TalkingMeUpgradeCardCell {
extension PrizeCardCell {
    /// 刷新视图
    //: func refreshUpgradeCard() {
    func equalResume() {
        //: let imgNameStr = IndexStyleAppManager.share.loginUserMode.loungePlus ? "me_premium_subscribed" : "me_premium_upgrade"
        let imgNameStr = IndexStyleAppManager.share.loginUserMode.loungePlus ? String(bytes: str_exceptContent.map{$0^221}, encoding: .utf8)! : (String(str_nearValue.suffix(6)) + String(str_currentTitleIfValue) + String(str_modelName.prefix(8)))
        //: bgImgView.image = UIImage.nearTap(name: imgNameStr)
        bgImgView.image = UIImage.nearTap(name: imgNameStr)
        //: expTimeLab.isHidden = !IndexStyleAppManager.share.loginUserMode.loungePlus
        expTimeLab.isHidden = !IndexStyleAppManager.share.loginUserMode.loungePlus
        //: expTimeLab.text = "Expiration: \(IndexStyleAppManager.share.loginUserMode.loungePlusExpire)"
        expTimeLab.text = (String(str_frameData) + String(str_enterTitle)) + "\(IndexStyleAppManager.share.loginUserMode.loungePlusExpire)"
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func upSizeAt() {
        //: contentView.addSubview(bgImgView)
        contentView.addSubview(bgImgView)
        //: contentView.addSubview(expTimeLab)
        contentView.addSubview(expTimeLab)
        //: bgImgView.addGestureRecognizer(tapGesture)
        bgImgView.addGestureRecognizer(tapGesture)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func stroke() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(actualWidth(w: 86))
            make.height.equalTo(actualWidth(w: 86))
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }

        //: expTimeLab.snp.makeConstraints { make in
        expTimeLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 45))
            make.top.equalTo(actualWidth(w: 45))
            //: make.leading.equalTo(actualWidth(w: 58))
            make.leading.equalTo(actualWidth(w: 58))
        }
    }
}
