
//: Declare String Begin

/*: "cellID" :*/
fileprivate let str_viewData:String = "to always gift makecellID"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tipData:[UInt8] = [0xfb,0xfc,0xfb,0xe6,0xba,0xf1,0xfd,0xf6,0xf7,0xe0,0xa8,0xbb,0xb2,0xfa,0xf3,0xe1,0xb2,0xfc,0xfd,0xe6,0xb2,0xf0,0xf7,0xf7,0xfc,0xb2,0xfb,0xff,0xe2,0xfe,0xf7,0xff,0xf7,0xfc,0xe6,0xf7,0xf6]

private func appearTo(room num: UInt8) -> UInt8 {
    return num ^ 146
}

/*: "Video Call" :*/
fileprivate let str_sizeText:[Character] = ["V","i","d","e","o"," ","C","a","l","l"]

/*: "Video Call (%@ Points/Min)" :*/
fileprivate let str_positionCellTitle:String = "shared fee typeVide"
fileprivate let str_equalValue:String = "try viewl (%"
fileprivate let str_indicatorValue:String = "/Min)height model title hidden"

/*: "Voice Call" :*/
fileprivate let str_directionLeadingName:String = "var sharedVoic"

/*: "Voice Call (%@ Points/Min)" :*/
fileprivate let str_imageData:String = "Voicefalse class execute equal share"
fileprivate let str_wrapValue:String = "l (%false left status"
fileprivate let str_infoValue:String = "var hidden player self writingints/Min)"

/*: "#F8F8F8" :*/
fileprivate let str_progressValue:[Character] = ["#","F","8","F","8","F","8"]

/*: "Cancel" :*/
fileprivate let str_emptyName:String = "please"
fileprivate let str_targetName:String = "anameel"

/*: "#F5F5F5" :*/
fileprivate let str_followingPathValue:[Character] = ["#","F","5","F","5","F"]
fileprivate let str_indexText:String = "5"

/*: "icon_lounge" :*/
fileprivate let str_labDeviceName:[Character] = ["i","c","o","n","_","l","o","u","n","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueLabelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/10/8.
//

//: import UIKit
import UIKit

//: typealias MunuBlock = (Int, String?) -> Void
typealias MunuBlock = (Int, String?) -> Void

//: enum MunuPopType {
enum DataPopType {
    //: case Unknown
    case Unknown // 未知类型
    //: case Call
    case Call // 音视频通话
}

//: class TalkingMunuPopView: UIView {
class ValueLabelReactiveCompatible: UIView {
    //: var munuBlock: MunuBlock?
    var munuBlock: MunuBlock?

    //: private var type: MunuPopType = .Unknown
    private var type: DataPopType = .Unknown // 当前展示类型

    /// cell内容
    //: var cellTitleList = [Any]()
    var cellTitleList = [Any]()
    /// cell字体颜色
    //: var cellTitleColor = UIColor.appTitleColor()
    var cellTitleColor = UIColor.appNameVisualProperty()
    /// cell字体大小
    //: var cellTitleFont = UIFont.loadEnable(type: .Regular, fontSize: 16)
    var cellTitleFont = UIFont.loadEnable(type: .Regular, fontSize: 16)
    /// 是否有"Cancel"菜单
    //: var hasCancel = true
    var hasCancel = true
    /// cancel字体颜色
    //: var cancelColor = UIColor.appValueDetailColor()
    var cancelColor = UIColor.bringHomeColor()
    /// cancel字体大小
    //: var cancelTitleFont = UIFont.loadEnable(type: .Regular, fontSize: 16)
    var cancelTitleFont = UIFont.loadEnable(type: .Regular, fontSize: 16)
    /// 标题
    //: var title: String?
    var title: String?
    /// 标题颜色
    //: var titleColor = UIColor.appThemeColor()
    var titleColor = UIColor.labelSumervalMedium()
    /// 标题字体大小
    //: var titleFont = UIFont.little(fontSize: 16)
    var titleFont = UIFont.little(fontSize: 16)

    //: var tableView = UITableView()
    var tableView = UITableView()
    //: let cellID = "cellID"
    let cellID = "cellID"
    //: var tableViewHight: CGFloat {
    var tableViewHight: CGFloat {
        //: return CGFloat(cellTitleList.count) * rowHight  + footerViewHight + headerViewHight
        return CGFloat(cellTitleList.count) * rowHight + footerViewHight + headerViewHight
    }

    //: fileprivate let rowHight: CGFloat = 50
    fileprivate let rowHight: CGFloat = 50
    //: fileprivate var footerViewLineHight: CGFloat = 8
    fileprivate var footerViewLineHight: CGFloat = 8
    //: fileprivate var footerViewHight: CGFloat {
    fileprivate var footerViewHight: CGFloat {
        //: return hasCancel ? (footerViewLineHight+50+kDeviceSafeBottomHeight):kDeviceSafeBottomHeight
        return hasCancel ? (footerViewLineHight + 50 + consLet_halfTitle) : consLet_halfTitle
    }

    //: fileprivate var headerViewHight: CGFloat {
    fileprivate var headerViewHight: CGFloat {
        //: return (title != nil) ? 60:0
        return (title != nil) ? 60 : 0
    }

    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tipData.map{appearTo(room: $0)}, encoding: .utf8)!)
    }

    //: func initwithList(cellTitleList: [String]!) {
    func sizeTitle(cellTitleList: [String]!) {
        // 初始化
        //: self.cellTitleList = cellTitleList
        self.cellTitleList = cellTitleList

        // 初始化UI
        //: customUI()
        tillSize()
    }

    /// 根据类型初始化
    ///   - type: 弹窗类型
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    //: func initWithList(type: MunuPopType, videoPrice: String?, voicePrice: String?) {
    func giftPrice(type: DataPopType, videoPrice: String?, voicePrice: String?) {
        //: self.type = type
        self.type = type
        //: if self.type == .Call {
        if self.type == .Call { // 音视频通话
            //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
                //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue {
                if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue {
                    //: let videoAttrStr = String.setVideoPriceStr(VideoPrice: Int(videoPrice ?? "0") ?? 0)
                    let videoAttrStr = String.setVideoPriceStr(VideoPrice: Int(videoPrice ?? "0") ?? 0)
                    //: let voiceAttrStr = String.setVoicePriceStr(VoicePrice: Int(voicePrice ?? "0") ?? 0)
                    let voiceAttrStr = String.setVoicePriceStr(VoicePrice: Int(voicePrice ?? "0") ?? 0)
                    //: self.cellTitleList = [videoAttrStr, voiceAttrStr]
                    self.cellTitleList = [videoAttrStr, voiceAttrStr]
                    //: } else {
                } else {
                    //: let attributes = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.loadEnable(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
                    let attributes = [.foregroundColor: UIColor.labelSumervalMedium(), .font: UIFont.loadEnable(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
                    //: let VideoCall = "Video Call".localized
                    let VideoCall = (String(str_sizeText)).localized
                    //: let videoStr = "Video Call (%@ Points/Min)".localizedArguments(videoPrice ?? "0")
                    let videoStr = (String(str_positionCellTitle.suffix(4)) + "o Cal" + String(str_equalValue.suffix(4)) + "@ Points" + String(str_indicatorValue.prefix(5))).localizedArguments(videoPrice ?? "0")
                    //: let videoAttrStr = NSMutableAttributedString(string: videoStr)
                    let videoAttrStr = NSMutableAttributedString(string: videoStr)
                    //: videoAttrStr.addAttributes(attributes, range: NSRange(location: VideoCall.count, length: videoAttrStr.length-VideoCall.count))
                    videoAttrStr.addAttributes(attributes, range: NSRange(location: VideoCall.count, length: videoAttrStr.length - VideoCall.count))
                    //: let VoiceCall = "Voice Call".localized
                    let VoiceCall = (String(str_directionLeadingName.suffix(4)) + "e Call").localized
                    //: let voiceStr = "Voice Call (%@ Points/Min)".localizedArguments(voicePrice ?? "0")
                    let voiceStr = (String(str_imageData.prefix(5)) + " Cal" + String(str_wrapValue.prefix(4)) + "@ Po" + String(str_infoValue.suffix(9))).localizedArguments(voicePrice ?? "0")
                    //: let voiceAttrStr = NSMutableAttributedString(string: voiceStr)
                    let voiceAttrStr = NSMutableAttributedString(string: voiceStr)
                    //: voiceAttrStr.addAttributes(attributes, range: NSRange(location: VoiceCall.count, length: voiceAttrStr.length-VoiceCall.count))
                    voiceAttrStr.addAttributes(attributes, range: NSRange(location: VoiceCall.count, length: voiceAttrStr.length - VoiceCall.count))
                    //: self.cellTitleList = [videoAttrStr, voiceAttrStr]
                    self.cellTitleList = [videoAttrStr, voiceAttrStr]
                }

                //: } else {
            } else {
                //: self.cellTitleList = ["Video Call".localized, "Voice Call".localized]
                self.cellTitleList = [(String(str_sizeText)).localized, (String(str_directionLeadingName.suffix(4)) + "e Call").localized]
            }
        }

        // 初始化UI
        //: customUI()
        tillSize()
    }

    //: public func customUI () {
    public func tillSize() {
        //: tableView = UITableView(frame: CGRect.init(x: 0, y: ScreenHeight-tableViewHight, width: ScreenWidth, height: tableViewHight), style: .plain)
        tableView = UITableView(frame: CGRect(x: 0, y: consLet_sessionName - tableViewHight, width: consLet_errorDeviceHeightData, height: tableViewHight), style: .plain)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.showsVerticalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        //: tableView.showsHorizontalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        //: tableView.isScrollEnabled = false
        tableView.isScrollEnabled = false
        //: tableView.bounces = false
        tableView.bounces = false
        //: tableView.isPagingEnabled = false
        tableView.isPagingEnabled = false
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //: tableView.register(TitleCell.self, forCellReuseIdentifier: cellID)
        tableView.register(DivertView.self, forCellReuseIdentifier: cellID)
        //: tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: UITableViewHeaderFooterView.className())
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: UITableViewHeaderFooterView.className())

        //: self.addSubview(tableView)
        self.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(self)
            make.leading.trailing.equalTo(self)
            //: make.height.equalTo(tableViewHight)
            make.height.equalTo(tableViewHight)
            //: make.bottom.equalTo(self.snp.bottom)
            make.bottom.equalTo(self.snp.bottom)
        }

        // 无标题时添加圆角
        //: if title == nil {
        if title == nil {
            //: tableView.Corner(width: ScreenWidth,
            tableView.toColorRadii(width: consLet_errorDeviceHeightData,
                                   //: height: tableViewHight,
                                   height: tableViewHight,
                                   //: corners: [.topLeft, .topRight],
                                   corners: [.topLeft, .topRight],
                                   //: cornerRadii: .init(width: 15, height: 15))
                                   cornerRadii: .init(width: 15, height: 15))
        }

        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
    }
}

//: extension TalkingMunuPopView: UITableViewDelegate, UITableViewDataSource {
extension ValueLabelReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return cellTitleList.count
        return cellTitleList.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: var cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? TitleCell
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? DivertView
        //: if cell == nil {
        if cell == nil {
            //: cell = TitleCell(style: .default, reuseIdentifier: cellID)
            cell = DivertView(style: .default, reuseIdentifier: cellID)
        }

        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.male.rawValue,
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue,
           //: IndexStyleAppManager.share.loginUserMode.loungePlus == true,
           IndexStyleAppManager.share.loginUserMode.loungePlus == true,
           //: type == .Call {
           type == .Call
        {
            //: cell!.vipIcon.isHidden = false
            cell!.vipIcon.isHidden = false
            //: } else {
        } else {
            //: cell!.vipIcon.isHidden = true
            cell!.vipIcon.isHidden = true
        }

        //: cell!.titleLab.textColor = cellTitleColor
        cell!.titleLab.textColor = cellTitleColor
        //: cell!.titleLab.font = cellTitleFont
        cell!.titleLab.font = cellTitleFont
        //: if self.type == .Call && IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if self.type == .Call && IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
            //: cell!.titleLab.attributedText = cellTitleList[indexPath.row] as? NSMutableAttributedString
            cell!.titleLab.attributedText = cellTitleList[indexPath.row] as? NSMutableAttributedString
            //: } else {
        } else {
            //: cell!.titleLab.text = cellTitleList[indexPath.row] as? String
            cell!.titleLab.text = cellTitleList[indexPath.row] as? String
        }
        // 没有“Cancel”菜单最后一行时，隐藏横线
        //: if hasCancel == false, indexPath.row == (cellTitleList.count-1) {
        if hasCancel == false, indexPath.row == (cellTitleList.count - 1) {
            //: cell!.lineLab.isHidden = true
            cell!.lineLab.isHidden = true
        }

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return CGFloat(rowHight)
        return CGFloat(rowHight)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)

        //: guard let block = munuBlock else { return }
        guard let block = munuBlock else { return }
        //: block(indexPath.row, cellTitleList[indexPath.row] as? String)
        block(indexPath.row, cellTitleList[indexPath.row] as? String)
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return footerViewHight
        return footerViewHight
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: guard hasCancel == true else { return UIView() }
        guard hasCancel == true else { return UIView() }
        //: let footerView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: footerViewHight))
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: footerViewHight))
        //: let lineView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: footerViewLineHight))
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: footerViewLineHight))
        //: lineView.backgroundColor = UIColor(hex: "#F8F8F8")
        lineView.backgroundColor = UIColor(hex: "#F8F8F8")
        //: footerView.addSubview(lineView)
        footerView.addSubview(lineView)

        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.frame = CGRect(x: 0, y: footerViewLineHight, width: ScreenWidth, height: 50)
        btn.frame = CGRect(x: 0, y: footerViewLineHight, width: consLet_errorDeviceHeightData, height: 50)
        //: footerView.addSubview(btn)
        footerView.addSubview(btn)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle("Cancel".localized, for: .normal)
        //: btn.titleLabel?.font = cancelTitleFont
        btn.titleLabel?.font = cancelTitleFont
        //: btn.setTitleColor(cancelColor, for: .normal)
        btn.setTitleColor(cancelColor, for: .normal)
        //: btn.addTarget(self, action: #selector(cancelBtnDidClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(situation), for: .touchUpInside)
        //: return footerView
        return footerView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return headerViewHight
        return headerViewHight
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: guard title != nil else { return UIView() }
        guard title != nil else { return UIView() }
        //: let headerView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: headerViewHight))
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: headerViewHight))

        //: let titleLab = UILabel(frame: CGRect(x: 15, y: 0, width: ScreenWidth-30, height: headerViewHight))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 0, width: consLet_errorDeviceHeightData - 30, height: headerViewHight))
        //: titleLab.font = titleFont
        titleLab.font = titleFont
        //: titleLab.textColor = titleColor
        titleLab.textColor = titleColor
        //: titleLab.numberOfLines = 0
        titleLab.numberOfLines = 0
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = title
        titleLab.text = title
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)

        //: let lineView = UIView(frame: CGRect(x: 0, y: headerViewHight-1, width: ScreenWidth, height: 1))
        let lineView = UIView(frame: CGRect(x: 0, y: headerViewHight - 1, width: consLet_errorDeviceHeightData, height: 1))
        //: lineView.backgroundColor = UIColor.init(hex: "#F5F5F5")
        lineView.backgroundColor = UIColor(hex: "#F5F5F5")
        //: headerView.addSubview(lineView)
        headerView.addSubview(lineView)

        //: return headerView
        return headerView
    }

    //: @objc func cancelBtnDidClick() {
    @objc func situation() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }
}

//: class TitleCell: UITableViewCell {
class DivertView: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.center.height.equalToSuperview()
            make.center.height.equalToSuperview()
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }

        //: stackView.addArrangedSubview(vipIcon)
        stackView.addArrangedSubview(vipIcon)
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }
        //: stackView.addArrangedSubview(titleLab)
        stackView.addArrangedSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: contentView.addSubview(lineLab)
        contentView.addSubview(lineLab)
        //: lineLab.snp.makeConstraints { make in
        lineLab.snp.makeConstraints { make in
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tipData.map{appearTo(room: $0)}, encoding: .utf8)!)
    }

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 6
        v.spacing = 6
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: lazy var vipIcon: UIImageView = {
    lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_lounge")
        img.image = UIImage.nearTap(name: (String(str_labDeviceName)))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var lineLab: UILabel = {
    lazy var lineLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#F5F5F5")
        lab.backgroundColor = UIColor(hex: "#F5F5F5")
        //: return lab
        return lab
        //: }()
    }()
}
