
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_ofWhiteName:[UInt8] = [0x59,0x5e,0x59,0x44,0x18,0x53,0x5f,0x54,0x55,0x42,0xa,0x19,0x10,0x58,0x51,0x43,0x10,0x5e,0x5f,0x44,0x10,0x52,0x55,0x55,0x5e,0x10,0x59,0x5d,0x40,0x5c,0x55,0x5d,0x55,0x5e,0x44,0x55,0x54]

private func toLessAbove(make num: UInt8) -> UInt8 {
    return num ^ 48
}

/*: "icon_me_video" :*/
fileprivate let str_sexContent:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o"]

/*: "Receive video calls" :*/
fileprivate let str_imageData:String = "data modelReceive"
fileprivate let str_lowName:String = " vifalse table share max share"
fileprivate let str_searchBlockName:String = "length count array todeo calls"

/*: "icon_me_voice" :*/
fileprivate let str_areaName:String = "icon_equal right top list priority"
fileprivate let str_userCellValue:String = "OICE"

/*: "Receive voice calls" :*/
fileprivate let str_viewTitle:[Character] = ["R","e","c","e","i","v","e"," ","v","o"]
fileprivate let str_imageName:[Character] = ["i","c","e"," "]
fileprivate let str_voiceData:String = "pointalls"

/*: "icon_me_randomvideo" :*/
fileprivate let str_effectResultData:String = "icon_view return date style"
fileprivate let str_equalValue:[Character] = ["d","o","m","v","i","d","e","o"]

/*: "Random Video" :*/
fileprivate let str_toContent:String = "let photo cell returnRandom"
fileprivate let str_addName:String = "self equal name icon block Video"

/*: "-1" :*/
fileprivate let str_matchValue:String = "-equal"

/*: "value" :*/
fileprivate let str_titleLessValue:String = "valviewe"

/*: "type" :*/
fileprivate let str_mainValue:String = "TYPE"

/*: "videoAuth" :*/
fileprivate let str_makeShowModelData:String = "videoAureturn play var var"
fileprivate let str_phoneValue:String = "tview"

/*: "voiceAuth" :*/
fileprivate let str_shareText:String = "voiindexe"

/*: "randomVideo" :*/
fileprivate let str_itemFrameData:String = "happenandom"
fileprivate let str_fieldValue:[Character] = ["V","i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RoomViewCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum ColorVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class RoomViewCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: ColorVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_ofWhiteName.map{toLessAbove(make: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.labelSumervalMedium()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(turn), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension RoomViewCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func equalOf(type: ColorVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.nearTap(name: "icon_me_video")
            icon.image = UIImage.nearTap(name: (String(str_sexContent)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(str_imageData.suffix(7)) + String(str_lowName.prefix(3)) + String(str_searchBlockName.suffix(9))).localized
            //: switchView.isOn = (IndexStyleAppManager.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (IndexStyleAppManager.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.nearTap(name: "icon_me_voice")
            icon.image = UIImage.nearTap(name: (String(str_areaName.prefix(5)) + "me_v" + str_userCellValue.lowercased()))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(str_viewTitle) + String(str_imageName) + str_voiceData.replacingOccurrences(of: "point", with: "c")).localized
            //: switchView.isOn = (IndexStyleAppManager.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (IndexStyleAppManager.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.nearTap(name: "icon_me_randomvideo")
            icon.image = UIImage.nearTap(name: (String(str_effectResultData.prefix(5)) + "me_ran" + String(str_equalValue)))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(str_toContent.suffix(6)) + String(str_addName.suffix(6))).localized
            //: switchView.isOn = (IndexStyleAppManager.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (IndexStyleAppManager.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func turn() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params["value"] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params["type"] = (String(str_makeShowModelData.prefix(7)) + str_phoneValue.replacingOccurrences(of: "view", with: "h"))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params["type"] = (str_shareText.replacingOccurrences(of: "index", with: "c") + "Auth")
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params["type"] = (str_itemFrameData.replacingOccurrences(of: "happen", with: "r") + String(str_fieldValue))
        }
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        KeyReactiveCompatible.actionCompletion(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: IndexStyleAppManager.share.loginUserMode.videoAuth = value
                IndexStyleAppManager.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: IndexStyleAppManager.share.loginUserMode.voiceAuth = value
                IndexStyleAppManager.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: IndexStyleAppManager.share.appUserConfigMode.randomVideo = value
                IndexStyleAppManager.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (UtilizationKingfisherCompatible.shared as! UtilizationKingfisherCompatible).anArrayOffline()
        }
    }
}
