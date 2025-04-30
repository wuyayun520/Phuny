
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0xb0,0xb7,0xb0,0xad,0xf1,0xba,0xb6,0xbd,0xbc,0xab,0xe3,0xf0,0xf9,0xb1,0xb8,0xaa,0xf9,0xb7,0xb6,0xad,0xf9,0xbb,0xbc,0xbc,0xb7,0xf9,0xb0,0xb4,0xa9,0xb5,0xbc,0xb4,0xbc,0xb7,0xad,0xbc,0xbd]

private func timeRow(info num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "#F3E6FF" :*/
fileprivate let str_coinText:[Character] = ["#","F","3","E","6"]
fileprivate let str_enableValue:[Character] = ["F","F"]

/*: "#D9E7FF" :*/
fileprivate let str_callTitle:String = "class right as#D9E7"
fileprivate let str_upVoiceData:[Character] = ["F","F"]

/*: "Please wait. The distance is being expanded to filter the right users for you" :*/
fileprivate let str_viewName:[UInt8] = [0x84,0xa0,0x99,0x95,0xa7,0x99,0x54,0xab,0x95,0x9d,0xa8,0x62,0x54,0x88,0x9c,0x99,0x54,0x98,0x9d,0xa7,0xa8,0x95,0xa2,0x97,0x99,0x54,0x9d,0xa7,0x54,0x96,0x99,0x9d,0xa2,0x9b,0x54,0x99,0xac,0xa4,0x95,0xa2,0x98,0x99,0x98,0x54,0xa8,0xa3,0x54,0x9a,0x9d,0xa0,0xa8,0x99,0xa6,0x54,0xa8,0x9c,0x99,0x54,0xa6,0x9d,0x9b,0x9c,0xa8,0x54,0xa9,0xa7,0x99,0xa6,0xa7,0x54,0x9a,0xa3,0xa6,0x54,0xad,0xa3,0xa9]

fileprivate func textEqual(position num: UInt8) -> UInt8 {
    let value = Int(num) - 52
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_await" :*/
fileprivate let str_mediumRankData:String = "icon_awaitop burn value make"
fileprivate let str_appStyleText:String = "view"

/*: "Get Premium" :*/
fileprivate let str_managerData:String = "Get Pactual start do"
fileprivate let str_roomName:String = "rcallmium"

/*: "Become a member now, skip the wait and discover more users instantly." :*/
fileprivate let str_nameValue:[UInt8] = [0x60,0x47,0x41,0x4d,0x4f,0x47,0x2,0x43,0x2,0x4f,0x47,0x4f,0x40,0x47,0x50,0x2,0x4c,0x4d,0x55,0xe,0x2,0x51,0x49,0x4b,0x52,0x2,0x56,0x4a,0x47,0x2,0x55,0x43,0x4b,0x56,0x2,0x43,0x4c,0x46,0x2,0x46,0x4b,0x51,0x41,0x4d,0x54,0x47,0x50,0x2,0x4f,0x4d,0x50,0x47,0x2,0x57,0x51,0x47,0x50,0x51,0x2,0x4b,0x4c,0x51,0x56,0x43,0x4c,0x56,0x4e,0x5b,0xc]

/*: "icon_hourglass" :*/
fileprivate let str_countTitle:String = "count user key emptyicon_"
fileprivate let str_itemValue:String = "labottombottom"

/*: "All Cards Swiped for Today!" :*/
fileprivate let str_tempValue:String = "path view notAll Ca"
fileprivate let str_viewTitle:String = "ipeimage"
fileprivate let str_actionData:String = " Todmodel record"
fileprivate let str_profileName:[Character] = ["a","y","!"]

/*: "We recommend  :*/
fileprivate let str_selectViewData:String = "We rself guard"
fileprivate let str_userValue:[Character] = ["e","n","d"," "]

/*:  new friends for you daily." :*/
fileprivate let str_rowText:[Character] = [" ","n","e","w"," ","f","r","i","e","n","d","s"," ","f","o","r"," "]
fileprivate let str_callText:String = "custom overyou da"

/*: "&type=0" :*/
fileprivate let str_makeSucceedData:[Character] = ["&","t","y","p","e","=","0"]

/*: "%02d" :*/
fileprivate let str_barContent:[Character] = ["%","0","2","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListingReactiveCompatible.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/3/24.
//

//: import UIKit
import UIKit

//: class TalkingClubCardSwipedFinishView: UIView {
class ListingReactiveCompatible: UIView {
    //: var countdownBlock: (() -> Void)?
    var countdownBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        alienation()
        //: setupSubViewsConstraint()
        setupViewsSwaddlingClothesSubstitute()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.map{timeRow(info: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bglayer: CAGradientLayer = {
    private lazy var bglayer: CAGradientLayer = {
        // 渐变色
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight)
        layer.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName - consLet_clickReplaceName)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0.5)
        layer.startPoint = CGPoint(x: 0.5, y: 0.5)
        //: layer.endPoint = CGPoint(x: 1, y: 1)
        layer.endPoint = CGPoint(x: 1, y: 1)
        //: layer.colors = [UIColor(hex: "#F3E6FF")!.cgColor, UIColor(hex: "#D9E7FF")!.cgColor]
        layer.colors = [UIColor(hex: "#F3E6FF")!.cgColor, UIColor(hex: "#D9E7FF")!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var vipContentLab: UILabel = {
    private lazy var vipContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please wait. The distance is being expanded to filter the right users for you"
        lab.text = String(bytes: str_viewName.map{textEqual(position: $0)}, encoding: .utf8)!
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var vipImageV: UIImageView = {
    private lazy var vipImageV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearTap(name: "icon_await"))
        let v = UIImageView(image: UIImage.nearTap(name: (String(str_mediumRankData.prefix(9)) + str_appStyleText.replacingOccurrences(of: "view", with: "t"))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var premiumBtn: UIButton = {
    private lazy var premiumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Get Premium".localized, for: .normal)
        btn.setTitle((String(str_managerData.prefix(5)) + str_roomName.replacingOccurrences(of: "call", with: "e")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-50, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 50, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(getPremiumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickPush), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var normalContentLab: UILabel = {
    private lazy var normalContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Become a member now, skip the wait and discover more users instantly."
        lab.text = String(bytes: str_nameValue.map{$0^34}, encoding: .utf8)!
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var normalImageV: UIImageView = {
    private lazy var normalImageV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearTap(name: "icon_hourglass"))
        let v = UIImageView(image: UIImage.nearTap(name: (String(str_countTitle.suffix(5)) + "hourg" + str_itemValue.replacingOccurrences(of: "bottom", with: "s"))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "All Cards Swiped for Today!"
        lab.text = (String(str_tempValue.suffix(6)) + "rds Sw" + str_viewTitle.replacingOccurrences(of: "image", with: "d") + " for" + String(str_actionData.prefix(4)) + String(str_profileName))
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 20)
        lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var subTitleLab: UILabel = {
    private lazy var subTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        lab.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    // MARK: - 倒计时

    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?
    //: private var remainingSeconds: Int = 0
    private var remainingSeconds: Int = 0 // 剩余秒数

    //: private lazy var countdownContainer: UIStackView = {
    private lazy var countdownContainer: UIStackView = {
        //: let stack = UIStackView()
        let stack = UIStackView()
        //: stack.axis = .horizontal
        stack.axis = .horizontal
        //: stack.spacing = 4
        stack.spacing = 4
        //: stack.alignment = .center
        stack.alignment = .center
        //: stack.distribution = .fill
        stack.distribution = .fill
        //: stack.isHidden = true
        stack.isHidden = true
        //: return stack
        return stack
        //: }()
    }()

    //: private func createNumberLabel() -> UILabel {
    private func visualization() -> UILabel {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.font = .loadEnable(type: .Medium, fontSize: 20)
        label.font = .loadEnable(type: .Medium, fontSize: 20)
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.backgroundColor = .white
        label.backgroundColor = .white
        //: label.layer.cornerRadius = 5
        label.layer.cornerRadius = 5
        //: label.layer.borderColor = UIColor.appThemeColor().cgColor
        label.layer.borderColor = UIColor.labelSumervalMedium().cgColor
        //: label.layer.borderWidth = 1
        label.layer.borderWidth = 1
        //: label.clipsToBounds = true
        label.clipsToBounds = true
        //: label.widthAnchor.constraint(equalToConstant: 38).isActive = true
        label.widthAnchor.constraint(equalToConstant: 38).isActive = true
        //: label.heightAnchor.constraint(equalToConstant: 42).isActive = true
        label.heightAnchor.constraint(equalToConstant: 42).isActive = true
        //: return label
        return label
    }

    //: private func createColonLabel() -> UILabel {
    private func resignStart() -> UILabel {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.font = .loadEnable(type: .Medium, fontSize: 20)
        label.font = .loadEnable(type: .Medium, fontSize: 20)
        //: label.text = ":"
        label.text = ":"
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
    }

    //: private lazy var timeLabels: [UILabel] = {
    private lazy var timeLabels: [UILabel] = {
        //: var labels: [UILabel] = []
        var labels: [UILabel] = []
        // Hours
        //: labels.append(createNumberLabel())
        labels.append(visualization())
        //: labels.append(createNumberLabel())
        labels.append(visualization())
        // Colon
        //: labels.append(createColonLabel())
        labels.append(resignStart())
        // Minutes
        //: labels.append(createNumberLabel())
        labels.append(visualization())
        //: labels.append(createNumberLabel())
        labels.append(visualization())
        // Colon
        //: labels.append(createColonLabel())
        labels.append(resignStart())
        // Seconds
        //: labels.append(createNumberLabel())
        labels.append(visualization())
        //: labels.append(createNumberLabel())
        labels.append(visualization())
        //: return labels
        return labels
        //: }()
    }()

    //: deinit {
    deinit {
        //: countdownTimer?.invalidate()
        countdownTimer?.invalidate()
        //: countdownTimer = nil
        countdownTimer = nil
    }
}

// MARK: - Event

//: extension TalkingClubCardSwipedFinishView {
extension ListingReactiveCompatible {
    /// 刷新用户滑完卡片的视图
    /// - Parameters:
    ///   - limitNum: 新卡片数量
    ///   - expire: 等待时间
    //: func show(limitNum: Int?, expire: Int?) {
    func makeWhen(limitNum: Int?, expire: Int?) {
        //: self.isHidden = false
        self.isHidden = false
        //: if IndexStyleAppManager.share.loginUserMode.loungePlus {
        if IndexStyleAppManager.share.loginUserMode.loungePlus { // 会员
            //: vipImageV.isHidden = false
            vipImageV.isHidden = false
            //: vipContentLab.isHidden = false
            vipContentLab.isHidden = false

            //: } else {
        } else { // 非会员
            //: premiumBtn.isHidden = false
            premiumBtn.isHidden = false
            //: normalContentLab.isHidden = false
            normalContentLab.isHidden = false
            //: normalImageV.isHidden = false
            normalImageV.isHidden = false
            //: if let num = limitNum {
            if let num = limitNum {
                //: titleLab.isHidden = false
                titleLab.isHidden = false
                //: subTitleLab.isHidden = false
                subTitleLab.isHidden = false
                //: subTitleLab.text = "We recommend \(num) new friends for you daily."
                subTitleLab.text = (String(str_selectViewData.prefix(4)) + "ecomm" + String(str_userValue)) + "\(num)" + (String(str_rowText) + String(str_callText.suffix(6)) + "ily.")
            }

            //: if let expire = expire {
            if let expire = expire {
                //: remainingSeconds = expire
                remainingSeconds = expire
                //: countdownContainer.isHidden = false
                countdownContainer.isHidden = false
                //: addSubview(countdownContainer)
                addSubview(countdownContainer)
                //: timeLabels.forEach { label in
                for label in timeLabels {
                    //: countdownContainer.addArrangedSubview(label)
                    countdownContainer.addArrangedSubview(label)
                }
                //: countdownContainer.snp.makeConstraints { make in
                countdownContainer.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.top.equalTo(subTitleLab.snp.bottom).offset(27)
                    make.top.equalTo(subTitleLab.snp.bottom).offset(27)
                }

                //: startCountdown()
                nutsAndBolts()
            }
        }
    }

    /// 隐藏当前视图
    //: func dismiss() {
    func atImageView() {
        //: self.isHidden = true
        self.isHidden = true
    }

    /// 订阅按钮点击事件
    //: @objc func getPremiumBtnClick() {
    @objc func clickPush() {
        //: PostPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=0")
        PostPushManager.share.markParams(appendParams: "&type=0")
    }

    /// 开始倒计时
    //: private func startCountdown() {
    private func nutsAndBolts() {
        //: updateTimeLabel()
        upgradeState()
        //: countdownTimer?.invalidate()
        countdownTimer?.invalidate()
        //: countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
        countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            //: self?.updateTimeLabel()
            self?.upgradeState()
        }
    }

    /// 更新时间
    //: private func updateTimeLabel() {
    private func upgradeState() {
        //: if remainingSeconds <= 0 {
        if remainingSeconds <= 0 {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
            //: countdownContainer.isHidden = true
            countdownContainer.isHidden = true
            //: self.dismiss()
            self.atImageView()
            //: self.countdownBlock?()
            self.countdownBlock?()
            //: return
            return
        }

        //: let hours = remainingSeconds / 3600
        let hours = remainingSeconds / 3600
        //: let minutes = (remainingSeconds % 3600) / 60
        let minutes = (remainingSeconds % 3600) / 60
        //: let seconds = remainingSeconds % 60
        let seconds = remainingSeconds % 60

        //: let timeComponents = [
        let timeComponents = [
            //: String(format: "%02d", hours),
            String(format: "%02d", hours),
            //: String(format: "%02d", minutes),
            String(format: "%02d", minutes),
            //: String(format: "%02d", seconds)
            String(format: "%02d", seconds),
        ]

        //: var digitIndex = 0
        var digitIndex = 0
        //: for (_, label) in timeLabels.enumerated() {
        for (_, label) in timeLabels.enumerated() {
            //: if label.text != ":" {
            if label.text != ":" {
                //: let timeComponent = timeComponents[digitIndex / 2]
                let timeComponent = timeComponents[digitIndex / 2]
                //: let digit = String(timeComponent[timeComponent.index(timeComponent.startIndex, offsetBy: digitIndex % 2)])
                let digit = String(timeComponent[timeComponent.index(timeComponent.startIndex, offsetBy: digitIndex % 2)])
                //: label.text = digit
                label.text = digit
                //: digitIndex += 1
                digitIndex += 1
            }
        }
        //: remainingSeconds -= 1
        remainingSeconds -= 1
    }
}

// MARK: - Layout

//: extension TalkingClubCardSwipedFinishView {
extension ListingReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func alienation() {
        //: self.layer.addSublayer(bglayer)
        self.layer.addSublayer(bglayer)
        //: self.addSubview(vipContentLab)
        self.addSubview(vipContentLab)
        //: self.addSubview(vipImageV)
        self.addSubview(vipImageV)
        //: self.addSubview(premiumBtn)
        self.addSubview(premiumBtn)
        //: addSubview(normalContentLab)
        addSubview(normalContentLab)
        //: addSubview(normalImageV)
        addSubview(normalImageV)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(subTitleLab)
        addSubview(subTitleLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupViewsSwaddlingClothesSubstitute() {
        //: vipContentLab.snp.makeConstraints { make in
        vipContentLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(self.snp.centerY)
            make.top.equalTo(self.snp.centerY)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: vipImageV.snp.makeConstraints { make in
        vipImageV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(vipContentLab.snp.top)
            make.bottom.equalTo(vipContentLab.snp.top)
            //: make.width.equalTo(146)
            make.width.equalTo(146)
            //: make.height.equalTo(152)
            make.height.equalTo(152)
        }

        //: premiumBtn.snp.makeConstraints { make in
        premiumBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-50)
            make.bottom.equalToSuperview().offset(-50)
            //: make.leading.equalTo(25)
            make.leading.equalTo(25)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: normalContentLab.snp.makeConstraints { make in
        normalContentLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(premiumBtn.snp.top).offset(-30)
            make.bottom.equalTo(premiumBtn.snp.top).offset(-30)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: normalImageV.snp.makeConstraints { make in
        normalImageV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(normalContentLab.snp.top).offset(-40)
            make.bottom.equalTo(normalContentLab.snp.top).offset(-40)
            //: make.width.equalTo(185)
            make.width.equalTo(185)
            //: make.height.equalTo(221)
            make.height.equalTo(221)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+60)
            make.top.equalTo(consLet_netViewValue + 60)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: subTitleLab.snp.makeConstraints { make in
        subTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(12)
            make.top.equalTo(titleLab.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
