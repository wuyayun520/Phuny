
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_cover_toast" :*/
fileprivate let str_managerName:[Character] = ["i","c","o","n","_","c","o","v","e"]
fileprivate let str_frameTableText:[Character] = ["r","_","t","o","a","s","t"]

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let str_makeData:[UInt8] = [0x2d,0x19,0xe,0xe,0x4b,0x1d,0x2,0xf,0xe,0x4,0x4b,0x1f,0x2,0x6,0xe,0x4b,0x2,0x18,0x4b,0x4,0x1d,0xe,0x19,0x47,0x4b,0x12,0x4,0x1e,0x4b,0x8,0xa,0x5,0x4b,0x8,0x4,0x5,0x1f,0x2,0x5,0x1e,0xe,0x4b,0x1f,0x4,0x4b,0x8,0xa,0x7,0x7,0x4b,0x3,0xe,0x19,0x4b,0x2,0xd,0x4b,0x12,0x4,0x1e,0x4b,0xa,0x19,0xe,0x4b,0x2,0x5,0x1f,0xe,0x19,0xe,0x18,0x1f,0xe,0xf]

private func directionCell(center num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "#34C759" :*/
fileprivate let str_arrayData:String = "#34C759as container at"

/*: "icon_match_stopcall_pop" :*/
fileprivate let str_imageValue:String = "icon_mequal object party keep result"
fileprivate let str_dataTitle:String = "atch_center view user color stream"
fileprivate let str_appValue:String = "call_popimage enable"

/*: "icon_lounge_big" :*/
fileprivate let str_userName:[Character] = ["i","c","o","n"]
fileprivate let str_photoContent:String = "_louto self make"

/*: "#AB57F6" :*/
fileprivate let str_responseValue:[Character] = ["#","A","B","5","7","F","6"]

/*: "#FC57B7" :*/
fileprivate let str_regularViewData:String = "empty status show voice#F"
fileprivate let str_recordText:String = "c57b7"

/*: "#FE9074" :*/
fileprivate let str_statusName:String = "#FE9074index data equal live tap"

/*: "Maybe next time" :*/
fileprivate let str_textGiftData:String = "Maybe make else"
fileprivate let str_tableColorData:[Character] = ["n","e","x","t"," ","t","i","m","e"]

/*: "type" :*/
fileprivate let str_succeedData:[UInt8] = [0x9,0x4,0xd,0x18]

private func voiceOver(plus num: UInt8) -> UInt8 {
    return num ^ 125
}

/*: "toUid" :*/
fileprivate let str_countValue:String = "object color apptoUid"

/*: "uid" :*/
fileprivate let str_receiveText:[UInt8] = [0xdd,0xc1,0xcc]

private func imageHeight(action num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "fromFreeCall" :*/
fileprivate let str_interactionImageAsTitle:[Character] = ["f","r"]
fileprivate let str_viewValue:[Character] = ["o","m","F","r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let str_groupName:[UInt8] = [0x26,0x30,0x27]

fileprivate func adjacentEqual(my num: UInt8) -> UInt8 {
    let value = Int(num) + 61
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "requestCall" :*/
fileprivate let str_timingName:String = "colorequ"

/*: "data" :*/
fileprivate let str_beforeTitle:[UInt8] = [0x88,0x85,0x98,0x85]

fileprivate func addAllow(user num: UInt8) -> UInt8 {
    let value = Int(num) + 220
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "originalFee" :*/
fileprivate let str_pushVideoData:String = "oriname"
fileprivate let str_collectionValue:String = "tool camera fail tool viewnalFee"

/*: "VIPFee" :*/
fileprivate let str_frameName:String = "status"
fileprivate let str_sizeText:String = "title enable price sizeIPFee"

/*: "freeCallTimes" :*/
fileprivate let str_nameTitle:String = "view topfreeC"
fileprivate let str_colorButtonValue:[Character] = ["a"]
fileprivate let str_cellText:String = "llTimeselse share"

/*: "onRequestCall" :*/
fileprivate let str_indexMomentText:String = "standard allonReq"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ForceUpwardsTruncatedReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class ForceUpwardsTruncatedReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        chart()
        //: setupSubViewsConstraint()
        worldView()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewName.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        JewishCalendarMonthThen.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearTap(name: "icon_cover_toast")
        iamg.image = UIImage.nearTap(name: (String(str_managerName) + String(str_frameTableText)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        textView.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.appNameVisualProperty()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: str_makeData.map{directionCell(center: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.fullMoon(color: UIColor(hex: "#34C759")!, forState: .normal)
        //: btn.setImage(UIImage.nearTap(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_imageValue.prefix(6)) + String(str_dataTitle.prefix(5)) + "stop" + String(str_appValue.prefix(8)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(downwards), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: btn.setImage(UIImage.nearTap(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_userName) + String(str_photoContent.prefix(4)) + "nge_big")), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.fileData(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(awakeTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appValueDetailColor(), .font: UIFont.loadEnable(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.bringHomeColor(), .font: UIFont.loadEnable(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_textGiftData.prefix(6)) + String(str_tableColorData)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(totalAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension ForceUpwardsTruncatedReactiveCompatible {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func downwards() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data["type"] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data["toUid"] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = ["type": type,
                                   //: "uid": toUid]
                                   "uid": toUid]
        //: if IndexStyleAppManager.share.loginUserMode.freeCallTimes > 0, IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if IndexStyleAppManager.share.loginUserMode.freeCallTimes > 0, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_interactionImageAsTitle) + String(str_viewValue)))
            //: TalkingSocketManager.shared.isFreeCall = true
            JewishCalendarMonthThen.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = ["cmd": (str_timingName.replacingOccurrences(of: "color", with: "r") + "estCall"), "data": data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        JewishCalendarMonthThen.shared.objectInfo(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        JewishCalendarMonthThen.shared.errorDelegate = self
        //: dismiss()
        everyPlace()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func totalAdd() {
        //: dismiss()
        everyPlace()
    }

    /// 展示
    //: func show() {
    func totalGesture() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func everyPlace() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func pigeonholeToRawData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(str_pushVideoData.replacingOccurrences(of: "name", with: "gi") + String(str_collectionValue.suffix(6)))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data["VIPFee"] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(str_nameTitle.suffix(5)) + String(str_colorButtonValue) + String(str_cellText.prefix(7)))] as? Int
        //: IndexStyleAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        IndexStyleAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        errorSwitchline()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func awakeTo() {
        //: guard IndexStyleAppManager.share.loginUserMode.loungePlus else {
        guard IndexStyleAppManager.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
                //: PostPushManager.share.func__pushToSubscribeAlert()
                PostPushManager.share.markParams()
            }
            //: dismiss()
            everyPlace()
            //: return
            return
        }

        //: originalFeeButtonClick()
        downwards()
    }
}

// MARK: - ViewObjectProtocol

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension ForceUpwardsTruncatedReactiveCompatible: ViewObjectProtocol {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func realize(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_indexMomentText.suffix(5)) + "uestCall") {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            noblesseExtra(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == ResourceBlockDefaultsSerializable.MoneyLack.rawValue {
                //: guard IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue else { return }
                //: PostPushManager.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                PostPushManager.share.chromaticColourMakeEnd(clickEvent: consLet_ofContent, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension ForceUpwardsTruncatedReactiveCompatible {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func errorSwitchline() {
        //: if IndexStyleAppManager.share.loginUserMode.loungePlus {
        if IndexStyleAppManager.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func chart() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func worldView() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
