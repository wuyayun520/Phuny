
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_afterName:[UInt8] = [0x2e,0x33,0x2e,0x39,0xed,0x28,0x34,0x29,0x2a,0x37,0xff,0xee,0xe5,0x2d,0x26,0x38,0xe5,0x33,0x34,0x39,0xe5,0x27,0x2a,0x2a,0x33,0xe5,0x2e,0x32,0x35,0x31,0x2a,0x32,0x2a,0x33,0x39,0x2a,0x29]

fileprivate func barRequest(user num: UInt8) -> UInt8 {
    let value = Int(num) + 59
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#EDEDED" :*/
fileprivate let str_viewData:String = "white style height#EDEDED"

/*: "Click for details" :*/
fileprivate let str_textData:String = "room for color addClick "
fileprivate let str_makeText:String = "denabletails"

/*: "#128CFF" :*/
fileprivate let str_managerSizeData:String = "content enable view guard lab#128CFF"

/*: "system_notif_click_go" :*/
fileprivate let str_cookieData:String = "colorycolort"
fileprivate let str_centerData:String = "cell firstf_cli"

/*: "img" :*/
fileprivate let str_chooseText:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let str_behindTitle:String = "jumpKeyi return name image"

/*: "url" :*/
fileprivate let str_adjustValue:String = "makel"

/*: "mfChat" :*/
fileprivate let str_barContent:[UInt8] = [0xdf,0xd8,0xb5,0xda,0xd3,0xe6]

fileprivate func viewEqual(group num: UInt8) -> UInt8 {
    let value = Int(num) - 114
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "jumpUid" :*/
fileprivate let str_tapName:[Character] = ["j","u","m","p","U","i","d"]

/*: "mfChatGift" :*/
fileprivate let str_labelNetworkTitle:[UInt8] = [0x3d,0x36,0x13,0x38,0x31,0x24,0x17,0x39,0x36,0x24]

private func imageShadow(count num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "user" :*/
fileprivate let str_touchName:[UInt8] = [0x1b,0x1d,0xb,0x1c]

/*: "outerUrl" :*/
fileprivate let str_liveValue:[UInt8] = [0x84,0x8a,0x89,0x7a,0x87,0x6a,0x87,0x81]

fileprivate func toRead(view num: UInt8) -> UInt8 {
    let value = Int(num) - 21
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "系统通知跳转失败：不支持  :*/
fileprivate let str_labText:String = "camp统通知"
fileprivate let str_modelData:String = "price"

/*:  跳转类型。" :*/
fileprivate let str_mmName:[Character] = [" ","\u{8df3}","\u{8f6c}","类","型","\u{3002}"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SkiJumpThen.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class SkiJumpThen: ChatView {
    //: var textData: StepSequenceThen?
    var textData: StepSequenceThen?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        release()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_afterName.map{barRequest(user: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cellIcon), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: "#EDEDED")
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(str_textData.suffix(6)) + "for " + str_makeText.replacingOccurrences(of: "enable", with: "e")).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: "#128CFF")
        //: lab.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        lab.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearTap(name: "system_notif_click_go")
        imgV.image = UIImage.nearTap(name: (str_cookieData.replacingOccurrences(of: "color", with: "s") + "em_noti" + String(str_centerData.suffix(5)) + "ck_go"))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension SkiJumpThen {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? StepSequenceThen
        textData = data as? StepSequenceThen
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.underPause(urlStr: textData.extraJson["img"].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.toColorRadii(width: textData.bannerSize.width,
                                    //: height: textData.bannerSize.height,
                                    height: textData.bannerSize.height,
                                    //: corners: [ .topRight],
                                    corners: [.topRight],
                                    //: cornerRadii: CGSize(width: 12, height: 12))
                                    cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func cellIcon() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson["jumpKey"].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case "url": // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson["url"].stringValue
            //: PostPushManager.share.func__pushToWebVC(urlStr: url)
            PostPushManager.share.gildTheLilyCount(urlStr: url)

        //: case "mfChat":  // 私聊
        case "mfChat": // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson["jumpUid"].stringValue
            //: PostPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid)
            PostPushManager.share.birthday(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: str_labelNetworkTitle.map{imageShadow(count: $0)}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson["jumpUid"].stringValue
            //: PostPushManager.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            PostPushManager.share.birthday(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.itemBtn()
            }
        //: case "user": // 用户详情
        case "user": // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson["jumpUid"].stringValue
            //: PostPushManager.share.func__pushToUserDetailVC(uid: jumpUid)
            PostPushManager.share.miniskirt(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: str_liveValue.map{toRead(view: $0)}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson["url"].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (str_labText.replacingOccurrences(of: "camp", with: "系") + "跳转失败：不支持" + str_modelData.replacingOccurrences(of: "price", with: " ")) + "\(jumpKey) 跳转类型。")
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension SkiJumpThen {
    /// 初始化视图
    //: private func setupSubviews() {
    private func release() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
