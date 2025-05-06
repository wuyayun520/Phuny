
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_playerName:[UInt8] = [0x3f,0x44,0x3f,0x4a,0xfe,0x39,0x45,0x3a,0x3b,0x48,0x10,0xff,0xf6,0x3e,0x37,0x49,0xf6,0x44,0x45,0x4a,0xf6,0x38,0x3b,0x3b,0x44,0xf6,0x3f,0x43,0x46,0x42,0x3b,0x43,0x3b,0x44,0x4a,0x3b,0x3a]

fileprivate func totalInformation(white num: UInt8) -> UInt8 {
    let value = Int(num) + 42
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "gift_bg_dm" :*/
fileprivate let str_imageCameraName:String = "gift_bvoice max"

/*: "#FFF4B5" :*/
fileprivate let str_adjustTitle:String = "#FFF4B5var for point height"

/*: "won " :*/
fileprivate let str_frontText:String = "won center height number edit"

/*: " coins in " :*/
fileprivate let str_toValue:[Character] = [" ","c","o","i","n","s"," ","i","n"," "]

/*: " x :*/
fileprivate let str_leadingHiddenValue:[Character] = [" ","x"]

/*: "just sent" :*/
fileprivate let str_totValue:String = "just seview make type"
fileprivate let str_addTitle:[Character] = ["n","t"]

/*: "  :*/
fileprivate let str_whiteValue:String = "stop"

/*: "#4120C1" :*/
fileprivate let str_listSucceedContent:String = "let self moment image#4120C1"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalensityFloatView.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/11/25.
//

//: import UIKit
import UIKit

//: class GiftFloatView: UIView {
class TotalensityFloatView: UIView {
    /// 礼物model
    //: private var giftModel = SocialBroadcastModel()
    private var giftModel = NameAddHandyJSON()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        cardOfSubviews()
        //: setupSubViewsConstraint()
        pushConversation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_playerName.map{totalInformation(white: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgView: UIImageView = {
    private lazy var bgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearTap(name: "gift_bg_dm")
        v.image = UIImage.nearTap(name: (String(str_imageCameraName.prefix(6)) + "g_dm"))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 18
        v.layer.cornerRadius = 18
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor(hex: "#FFF4B5")?.cgColor
        v.layer.borderColor = UIColor(hex: "#FFF4B5")?.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        // 添加点击事件
        //: let tap = UITapGestureRecognizer.init { [weak self] _ in
        let tap = UITapGestureRecognizer.init { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pushToUserDetailVC()
            self.followVc()
        }
        //: v.addGestureRecognizer(tap)
        v.addGestureRecognizer(tap)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nicknameLab: UILabel = {
    private lazy var nicknameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#FFF4B5")
        lab.textColor = UIColor(hex: "#FFF4B5")
        //: lab.font = UIFont.little(fontSize: 15)
        lab.font = UIFont.little(fontSize: 15)
        //: lab.isUserInteractionEnabled = true
        lab.isUserInteractionEnabled = true
        // 添加点击事件
        //: let tap = UITapGestureRecognizer.init { [weak self] _ in
        let tap = UITapGestureRecognizer.init { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pushToUserDetailVC()
            self.followVc()
        }
        //: lab.addGestureRecognizer(tap)
        lab.addGestureRecognizer(tap)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#FFF4B5")
        lab.textColor = UIColor(hex: "#FFF4B5")
        //: lab.font = UIFont.exceptEqual(fontSize: 12)
        lab.font = UIFont.exceptEqual(fontSize: 12)
        //: lab.numberOfLines = 1
        lab.numberOfLines = 1
        //: lab.lineBreakMode = .byTruncatingTail
        lab.lineBreakMode = .byTruncatingTail
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftNumLab: UILabel = {
    private lazy var giftNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#FFF4B5")
        lab.textColor = UIColor(hex: "#FFF4B5")
        //: lab.font = UIFont.exceptEqual(fontSize: 12)
        lab.font = UIFont.exceptEqual(fontSize: 12)
        //: lab.numberOfLines = 1
        lab.numberOfLines = 1
        //: lab.setContentHuggingPriority(.required, for: .horizontal)
        lab.setContentHuggingPriority(.required, for: .horizontal)
        //: lab.setContentCompressionResistancePriority(.required, for: .horizontal)
        lab.setContentCompressionResistancePriority(.required, for: .horizontal)
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftImgV: UIImageView = {
    private lazy var giftImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension GiftFloatView {
extension TotalensityFloatView {
    /// 刷新视图
    //: func refreshGift(_ model: SocialBroadcastModel) {
    func markDetail(_ model: NameAddHandyJSON) {
        //: giftModel = model
        giftModel = model
        //: icon.setUrlImage(urlStr: giftModel.headPic)
        icon.underPause(urlStr: giftModel.headPic)
        //: nicknameLab.text = giftModel.uNickname
        nicknameLab.text = giftModel.uNickname
        //: if giftModel.broadStatus == 1 {
        if giftModel.broadStatus == 1 { // 中奖
            //: giftImgV.isHidden = true
            giftImgV.isHidden = true
            //: giftNumLab.isHidden = true
            giftNumLab.isHidden = true
            //: contentLab.text = "won ".localized + "\(giftModel.totalCoin)" + " coins in ".localized + giftModel.gameName
            contentLab.text = "won ".localized + "\(giftModel.totalCoin)" + " coins in ".localized + giftModel.gameName
            //: contentLab.snp.remakeConstraints { make in
            contentLab.snp.remakeConstraints { make in
                //: make.leading.height.equalTo(nicknameLab)
                make.leading.height.equalTo(nicknameLab)
                //: make.bottom.equalTo(-5)
                make.bottom.equalTo(-5)
                //: make.trailing.equalTo(-10)
                make.trailing.equalTo(-10)
            }

            //: } else {
        } else {
            //: giftImgV.isHidden = false
            giftImgV.isHidden = false
            //: giftImgV.setUrlImage(urlStr: giftModel.img)
            giftImgV.underPause(urlStr: giftModel.img)
            //: giftNumLab.isHidden = false
            giftNumLab.isHidden = false
            //: giftNumLab.text = " x\(giftModel.num)"
            giftNumLab.text = " x\(giftModel.num)"
            //: let rangeText = "just sent".localized
            let rangeText = (String(str_totValue.prefix(7)) + String(str_addTitle)).localized
            //: let giftName = changeGiftName(giftmodel: giftModel)
            let giftName = chromosomalMutation(giftmodel: giftModel)
            //: let fullText = rangeText + " \(giftName)"
            let fullText = rangeText + " \(giftName)"
            //: let attributedString = NSMutableAttributedString(string: fullText)
            let attributedString = NSMutableAttributedString(string: fullText)
            //: if let range = fullText.range(of: rangeText) {
            if let range = fullText.range(of: rangeText) {
                //: let nsRange = NSRange(range, in: fullText)
                let nsRange = NSRange(range, in: fullText)
                //: attributedString.addAttribute(.foregroundColor, value: UIColor(hex: "#4120C1")!, range: nsRange)
                attributedString.addAttribute(.foregroundColor, value: UIColor(hex: "#4120C1")!, range: nsRange)
            }
            //: contentLab.attributedText = attributedString
            contentLab.attributedText = attributedString
            //: contentLab.snp.remakeConstraints { make in
            contentLab.snp.remakeConstraints { make in
                //: make.leading.height.equalTo(nicknameLab)
                make.leading.height.equalTo(nicknameLab)
                //: make.bottom.equalTo(-5)
                make.bottom.equalTo(-5)
            }
        }
    }

    /// 获取礼物名称
    //: private func changeGiftName(giftmodel: SocialBroadcastModel) -> String {
    private func chromosomalMutation(giftmodel: NameAddHandyJSON) -> String {
        //: var gameName = giftmodel.giftName
        var gameName = giftmodel.giftName
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.en.rawValue {
            //: gameName = giftmodel.giftNameI18n.en
            gameName = giftmodel.giftNameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.ar.rawValue {
            //: gameName = giftmodel.giftNameI18n.ar
            gameName = giftmodel.giftNameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.es.rawValue {
            //: gameName = giftmodel.giftNameI18n.es
            gameName = giftmodel.giftNameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.pt.rawValue {
            //: gameName = giftmodel.giftNameI18n.pt
            gameName = giftmodel.giftNameI18n.pt
        }
        //: return gameName
        return gameName
    }

    /// 跳转到用户详情页
    //: private func pushToUserDetailVC() {
    private func followVc() {
        //: var uid = "\(giftModel.uid)"
        var uid = "\(giftModel.uid)"
        //: if giftModel.broadStatus == 1 {
        if giftModel.broadStatus == 1 {
            //: uid = "\(giftModel.senderUid)"
            uid = "\(giftModel.senderUid)"
        }
        //: PostPushManager.share.func__pushToUserDetailVC(uid: uid)
        PostPushManager.share.miniskirt(uid: uid)
    }
}

// MARK: - Layout

//: extension GiftFloatView {
extension TotalensityFloatView {
    /// 添加视图
    //: private func setupSubviews() {
    private func cardOfSubviews() {
        //: self.frame = CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 60)
        self.frame = CGRect(x: 0, y: consLet_tabValue, width: consLet_errorDeviceHeightData, height: 60)
        //: self.addSubview(bgView)
        self.addSubview(bgView)
        //: bgView.addSubview(icon)
        bgView.addSubview(icon)
        //: bgView.addSubview(nicknameLab)
        bgView.addSubview(nicknameLab)
        //: bgView.addSubview(contentLab)
        bgView.addSubview(contentLab)
        //: bgView.addSubview(giftNumLab)
        bgView.addSubview(giftNumLab)
        //: bgView.addSubview(giftImgV)
        bgView.addSubview(giftImgV)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func pushConversation() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.equalTo(35)
            make.leading.equalTo(35)
            //: make.trailing.equalTo(-35)
            make.trailing.equalTo(-35)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 44))
            make.height.equalTo(actualWidth(w: 44))
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(4)
            make.leading.equalTo(4)
            //: make.size.equalTo(36)
            make.size.equalTo(36)
        }

        //: nicknameLab.snp.makeConstraints { make in
        nicknameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(46)
            make.leading.equalTo(46)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
        }

        //: giftImgV.snp.makeConstraints { make in
        giftImgV.snp.makeConstraints { make in
            //: make.size.equalTo(56)
            make.size.equalTo(56)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.height.equalTo(nicknameLab)
            make.leading.height.equalTo(nicknameLab)
            //: make.bottom.equalTo(-5)
            make.bottom.equalTo(-5)
        }

        //: giftNumLab.snp.makeConstraints { make in
        giftNumLab.snp.makeConstraints { make in
            //: make.height.bottom.equalTo(contentLab)
            make.height.bottom.equalTo(contentLab)
            //: make.leading.equalTo(contentLab.snp.trailing)
            make.leading.equalTo(contentLab.snp.trailing)
            //: make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(giftImgV.snp.leading).offset(-5)
        }
    }
}
