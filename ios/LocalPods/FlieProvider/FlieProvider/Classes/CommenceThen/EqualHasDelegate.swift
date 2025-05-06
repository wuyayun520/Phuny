
//: Declare String Begin

/*: "#666666" :*/
fileprivate let str_equalData:String = "#666666"

/*: "#8566FF" :*/
fileprivate let str_viewRawData:String = "#8566FFsession content family constraint"

/*: "Home" :*/
fileprivate let str_rowValue:String = "Homestyle color"

/*: "Like" :*/
fileprivate let str_makeValue:String = "size status letLike"

/*: "Message" :*/
fileprivate let str_layerData:String = "Messagshow become device time"
fileprivate let str_localValue:[Character] = ["e"]

/*: "Me" :*/
fileprivate let str_photoNameData:String = "false self publish var iconMe"

/*: "Live" :*/
fileprivate let str_blueData:String = "Livereturn self menu track make"

/*: "icon_randownCall_nor" :*/
fileprivate let str_modelValue:[UInt8] = [0xb4,0xae,0xba,0xb9,0xaa,0xbd,0xac,0xb9,0xaf,0xba,0xc2,0xb9,0x8e,0xac,0xb7,0xb7,0xaa,0xb9,0xba,0xbd]

fileprivate func onLine(down num: UInt8) -> UInt8 {
    let value = Int(num) - 75
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_randownCall_pre" :*/
fileprivate let str_hiddenContent:String = "manager erroricon_"
fileprivate let str_sectionData:String = "video progress height self centerall_pre"

/*: "icon_home_match_nor" :*/
fileprivate let str_fileData:[UInt8] = [0x4a,0x40,0x4c,0x4d,0x7c,0x4b,0x4c,0x4e,0x46,0x7c,0x4e,0x42,0x57,0x40,0x4b,0x7c,0x4d,0x4c,0x51]

private func whiteValue(session num: UInt8) -> UInt8 {
    return num ^ 35
}

/*: "icon_home_match_pre" :*/
fileprivate let str_giftName:String = "let texticon_"
fileprivate let str_makeData:String = "call share except fatalch_pre"

/*: "btn_popular_pop_nor" :*/
fileprivate let str_textToTitle:[UInt8] = [0xd0,0xc6,0xdc,0xed,0xc2,0xdd,0xc2,0xc7,0xde,0xd3,0xc0,0xed,0xc2,0xdd,0xc2,0xed,0xdc,0xdd,0xc0]

private func doingBusinessAsIndex(button num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "btn_popular_pop_pre" :*/
fileprivate let str_viewCornerText:String = "voice color var kitbtn_pop"
fileprivate let str_pickValue:[Character] = ["u"]
fileprivate let str_startData:String = "lar_picon empty as color"

/*: "btn_label_add_nor" :*/
fileprivate let str_topValue:[UInt8] = [0x48,0x5a,0x54,0x45,0x52,0x47,0x48,0x4b,0x52,0x45,0x47,0x4a,0x4a,0x45,0x54,0x55,0x58]

fileprivate func sizeUser(actual num: UInt8) -> UInt8 {
    let value = Int(num) + 26
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_label_add_pre" :*/
fileprivate let str_managerValue:String = "btn_labeelse manager to"
fileprivate let str_userValue:String = "view return third detail rowl_ad"

/*: "btn_chat_cha_nor" :*/
fileprivate let str_layerName:[UInt8] = [0x57,0x69,0x63,0x54,0x58,0x5d,0x56,0x69,0x54,0x58,0x5d,0x56,0x54,0x63,0x64,0x67]

fileprivate func freeLunch(near num: UInt8) -> UInt8 {
    let value = Int(num) - 245
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_chat_cha_pre" :*/
fileprivate let str_popLogData:String = "BT"
fileprivate let str_beginText:String = "else self manager usern_cha"

/*: "btn_me_my_nor" :*/
fileprivate let str_scaleName:[UInt8] = [0xe2,0xf4,0xee,0xdf,0xed,0xe5,0xdf,0xed,0xf9,0xdf,0xee,0xef,0xf2]

private func cameraNet(result num: UInt8) -> UInt8 {
    return num ^ 128
}

/*: "btn_me_my_pre" :*/
fileprivate let str_textValue:String = "btn_range type text message"
fileprivate let str_insertLabData:String = "view let of device_pre"

/*: "btn_live_add_nor" :*/
fileprivate let str_appValue:[UInt8] = [0xcd,0xdb,0xc1,0xf0,0xc3,0xc6,0xd9,0xca,0xf0,0xce,0xcb,0xcb,0xf0,0xc1,0xc0,0xdd]

/*: "btn_live_add_pre" :*/
fileprivate let str_colorData:String = "string lab layer selfbtn_l"
fileprivate let str_willName:String = "d_premake hidden model"

/*: "get json error" :*/
fileprivate let str_addPrimaryValue:String = "color center count status viewget "
fileprivate let str_insideCollectionText:String = "errnor"

/*: "99+" :*/
fileprivate let str_managerModeData:String = "99+"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import UIKit
import UIKit

//: class TalkingTabBar: UITabBar {
class EqualHasDelegate: UITabBar {
    //: var currentTabType = 0
    var currentTabType = 0
    // 消息tabBar展示头像
    //: private var messageIcon = UIImageView()
    private var messageIcon = UIImageView()

    //: func setupItemsWithArr(itemTypes: Array<TabBarItemType>) {
    func viewTypes(itemTypes: [TextValueConvertible]) {
        //: if itemTypes.count == 0 {
        if itemTypes.count == 0 {
            //: return
            return
        }
        //: let viewWidth = ScreenWidth
        let viewWidth = consLet_errorDeviceHeightData
        //: let backView = UIView.init()
        let backView = UIView()
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.height.equalTo(Int(TabBarViewHeight))
            make.height.equalTo(Int(consLet_clickReplaceName))
        }
        //: backView.backgroundColor = .white
        backView.backgroundColor = .white
        //: backView.layer.shadowColor = UIColor.init(red: 188/255.0, green: 188/255.0, blue: 188/255.0, alpha: 0.5).cgColor
        backView.layer.shadowColor = UIColor(red: 188 / 255.0, green: 188 / 255.0, blue: 188 / 255.0, alpha: 0.5).cgColor
        //: backView.layer.shadowOffset = CGSize.init(width: 0, height: 0)
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: backView.layer.shadowOpacity = 1
        backView.layer.shadowOpacity = 1
        //: backView.layer.shadowRadius = 6
        backView.layer.shadowRadius = 6

        //: let width = Int(viewWidth)/itemTypes.count
        let width = Int(viewWidth) / itemTypes.count

        //: for i in 0..<itemTypes.count {
        for i in 0 ..< itemTypes.count {
            //: let itemType = itemTypes[i]
            let itemType = itemTypes[i]
            //: let btn = barBtnFor(itemType: itemType)!
            let btn = constituentType(itemType: itemType)!
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.isSelected = (itemType.rawValue == currentTabType)
            btn.isSelected = (itemType.rawValue == currentTabType)
            //: backView.addSubview(btn)
            backView.addSubview(btn)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.leading.equalTo(width*i)
                make.leading.equalTo(width * i)
                //: make.size.equalTo(CGSize.init(width: width, height: 48))
                make.size.equalTo(CGSize(width: width, height: 48))
            }
            //: if itemType != TabBarItemType.FreeMoment {
            if itemType != TextValueConvertible.FreeMoment {
                //: setBtnPlace(btn: btn)
                modern(btn: btn)
            }

            //: if itemType == TabBarItemType.Message {
            if itemType == TextValueConvertible.Message {
                //: messageIcon = UIImageView()
                messageIcon = UIImageView()
                //: messageIcon.contentMode = .scaleAspectFill
                messageIcon.contentMode = .scaleAspectFill
                //: messageIcon.layer.cornerRadius = 15.0
                messageIcon.layer.cornerRadius = 15.0
                //: messageIcon.layer.masksToBounds = true
                messageIcon.layer.masksToBounds = true
                //: messageIcon.isHidden = true
                messageIcon.isHidden = true
                //: btn.addSubview(messageIcon)
                btn.addSubview(messageIcon)
                //: messageIcon.snp.makeConstraints { make in
                messageIcon.snp.makeConstraints { make in
                    //: let y = btn.imageView?.origin.y ?? 0
                    let y = btn.imageView?.origin.y ?? 0
                    //: make.top.equalTo(y-2)
                    make.top.equalTo(y - 2)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 30, height: 30))
                    make.size.equalTo(CGSize(width: 30, height: 30))
                }
                //: } else if itemType == TabBarItemType.Live {
            } else if itemType == TextValueConvertible.Live { // 直播tabBar添加SVGA动效
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: liveSvga.isHidden = true
                liveSvga.isHidden = true
                //: btn.addSubview(liveSvga)
                btn.addSubview(liveSvga)
                //: liveSvga.snp.makeConstraints { make in
                liveSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
                //: } else if itemType == TabBarItemType.Randow {
            } else if itemType == TextValueConvertible.Randow {
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: randowSvga.isHidden = true
                randowSvga.isHidden = true
                //: btn.addSubview(randowSvga)
                btn.addSubview(randowSvga)
                //: randowSvga.snp.makeConstraints { make in
                randowSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
            }
        }

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance.init()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .clear
            tabBarAppearance.backgroundColor = .clear
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = .clear
            tabBarAppearance.shadowColor = .clear
            //: self.standardAppearance = tabBarAppearance
            self.standardAppearance = tabBarAppearance
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: self.scrollEdgeAppearance = tabBarAppearance
                self.scrollEdgeAppearance = tabBarAppearance
                //: } else {
            } else {
                // Fallback on earlier versions
            }
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    }

    //: func barBtnFor(itemType: TabBarItemType) -> UIButton? {
    func constituentType(itemType: TextValueConvertible) -> UIButton? {
        //: switch itemType {
        switch itemType {
        //: case .Social, .Moment, .Account, .Message, .Randow, .Live:
        case .Social, .Moment, .Account, .Message, .Randow, .Live:
            //: let btn: UIButton = UIButton.init(type: .custom)
            let btn = UIButton(type: .custom)
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.backgroundColor = .clear
            btn.backgroundColor = .clear
            //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 11)
            btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 11)
            //: btn.setTitle(self.itemTitleFor(itemType: itemType), for: .normal)
            btn.setTitle(self.toFor(itemType: itemType), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#666666"), for: .normal)
            btn.setTitleColor(UIColor(hex: "#666666"), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#8566FF"), for: .selected)
            btn.setTitleColor(UIColor(hex: "#8566FF"), for: .selected)
            //: btn.setImage(UIImage.nearTap(name: self.itemImageFor(itemType: itemType, btnSelect: false)), for: .normal)
            btn.setImage(UIImage.nearTap(name: self.magnitudeerpersonCheck(itemType: itemType, btnSelect: false)), for: .normal)
            //: btn.setImage(UIImage.nearTap(name: self.itemImageFor(itemType: itemType, btnSelect: true)), for: .selected)
            btn.setImage(UIImage.nearTap(name: self.magnitudeerpersonCheck(itemType: itemType, btnSelect: true)), for: .selected)

            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: return btn
            return btn
        //: case .FreeMoment:
        case .FreeMoment:
            //: return nil
            return nil
        //: case .Login:
        case .Login:
            //: return nil
            return nil
        //: case .meet:
        case .meet:
            //: return nil
            return nil
        }
    }

    //: func itemTitleFor(itemType: TabBarItemType) -> String {
    func toFor(itemType: TextValueConvertible) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return "Home".localized
            return "Home".localized
        //: case .Social:
        case .Social:
//            if IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue {
//                return "People".localized
//            } else if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.male.rawValue {
//                return "Hot".localized
//            } else {
//                return "Home".localized
//            }
            //: return "Home".localized
            return "Home".localized

        //: case .Moment:
        case .Moment:
            //: return "Like".localized
            return "Like".localized
//            return "Moment".localized
        //: case .Message:
        case .Message:
            //: return "Message".localized
            return "Message".localized
        //: case .Account:
        case .Account:
            //: return "Me".localized
            return "Me".localized
        //: case .Live:
        case .Live:
            //: return "Live".localized
            return "Live".localized
        //: case .Login, .FreeMoment, .meet:
        case .Login, .FreeMoment, .meet:
            //: return ""
            return ""
        }
    }

    //: func itemImageFor(itemType: TabBarItemType, btnSelect: Bool) -> String {
    func magnitudeerpersonCheck(itemType: TextValueConvertible, btnSelect: Bool) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return btnSelect == false ? "icon_randownCall_nor":"icon_randownCall_pre"
            return btnSelect == false ? String(bytes: str_modelValue.map{onLine(down: $0)}, encoding: .utf8)! : (String(str_hiddenContent.suffix(5)) + "randownC" + String(str_sectionData.suffix(7)))
        //: case .Social:
        case .Social:
//            return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            //: return btnSelect == false ? "icon_home_match_nor":"icon_home_match_pre"
            return btnSelect == false ? String(bytes: str_fileData.map{whiteValue(session: $0)}, encoding: .utf8)! : (String(str_giftName.suffix(5)) + "home_mat" + String(str_makeData.suffix(6)))
        //: case .Moment:
        case .Moment:
//            return btnSelect == false ? "btn_discocer_dis_nor":"btn_discocer_dis_pre"
            //: return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            return btnSelect == false ? String(bytes: str_textToTitle.map{doingBusinessAsIndex(button: $0)}, encoding: .utf8)! : (String(str_viewCornerText.suffix(7)) + String(str_pickValue) + String(str_startData.prefix(5)) + "op_pre")
        //: case .FreeMoment:
        case .FreeMoment:
            //: return btnSelect == false ? "btn_label_add_nor":"btn_label_add_pre"
            return btnSelect == false ? String(bytes: str_topValue.map{sizeUser(actual: $0)}, encoding: .utf8)! : (String(str_managerValue.prefix(8)) + String(str_userValue.suffix(4)) + "d_pre")
        //: case .Message:
        case .Message:
            //: return btnSelect == false ? "btn_chat_cha_nor":"btn_chat_cha_pre"
            return btnSelect == false ? String(bytes: str_layerName.map{freeLunch(near: $0)}, encoding: .utf8)! : (str_popLogData.lowercased() + String(str_beginText.suffix(5)) + "t_cha_pre")
        //: case .Account:
        case .Account:
            //: return btnSelect == false ? "btn_me_my_nor":"btn_me_my_pre"
            return btnSelect == false ? String(bytes: str_scaleName.map{cameraNet(result: $0)}, encoding: .utf8)! : (String(str_textValue.prefix(4)) + "me_my" + String(str_insertLabData.suffix(4)))
        //: case .Live:
        case .Live:
            //: return btnSelect == false ? "btn_live_add_nor":"btn_live_add_pre"
            return btnSelect == false ? String(bytes: str_appValue.map{$0^175}, encoding: .utf8)! : (String(str_colorData.suffix(5)) + "ive_ad" + String(str_willName.prefix(5)))
        //: case .Login, .meet:
        case .Login, .meet:
            //: return ""
            return ""
        }
    }

    /// 更改tabbar按钮选中状态
    //: func setSelectedTabItem(itemType: TabBarItemType) {
    func registerName(itemType: TextValueConvertible) {
        //: let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        //: if itemType.rawValue != currentTabType && btn.isSelected == true {
        if itemType.rawValue != currentTabType && btn.isSelected == true {
            //: btn.isSelected = false
            btn.isSelected = false
        }
        //: let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        //: lastBtn.isSelected = true
        lastBtn.isSelected = true
        //: currentTabType = itemType.rawValue
        currentTabType = itemType.rawValue
        //: if itemType == .Message {
        if itemType == .Message {
            //: hideNewMessageUser()
            isLoad()
        }
    }

    //: func setBtnPlace(btn: UIButton) {
    func modern(btn: UIButton) {
        //: let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        //: let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0
        let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0

        //: let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        //: let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        //: if LanguageManager.shared.direction == .leftToRight {
        if ServerLanguageManager.shared.direction == .leftToRight {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: 0, bottom: 0, right: -titleW)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: 0, bottom: 0, right: -titleW)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH-2, right: 0)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH - 2, right: 0)
            //: } else {
        } else {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: -titleW, bottom: 0, right: 0)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: -titleW, bottom: 0, right: 0)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH-2, right:  -imageW)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH - 2, right: -imageW)
        }
    }

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_tabBar)
            let url = ResourceEffectTool.default.butterflyEffect(type: .Live_tabBar)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_addPrimaryValue.suffix(4)) + "json " + str_insideCollectionText.replacingOccurrences(of: "no", with: "o")))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var randowSvga: SVGAPlayer = {
    private lazy var randowSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Tabbar_randownCall)
            let url = ResourceEffectTool.default.butterflyEffect(type: .Tabbar_randownCall)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_addPrimaryValue.suffix(4)) + "json " + str_insideCollectionText.replacingOccurrences(of: "no", with: "o")))
        }

        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabBar {
extension EqualHasDelegate {
    /// 刷新消息未读数角标
    //: func refreshBadgeLayoutWith(unread: Int, barType: TabBarItemType) {
    func toGift(unread: Int, barType: TextValueConvertible) {
        //: let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        //: let label = getBadgeLabel(btn: btn)
        let label = sunnah(btn: btn)
        //: if unread > 0 {
        if unread > 0 {
            //: label.isHidden = false
            label.isHidden = false
            //: if unread > 99 {
            if unread > 99 {
                //: label.text = "99+"
                label.text = "99+"
                //: } else {
            } else {
                //: label.text = "\(unread)"
                label.text = "\(unread)"
            }
            //: } else {
        } else {
            //: label.isHidden = true
            label.isHidden = true
            //: hideNewMessageUser()
            isLoad()
        }
        //: var labWidth = 18.0
        var labWidth = 18.0
        //: if unread > 99 {
        if unread > 99 {
            //: labWidth = 30.0
            labWidth = 30.0
            //: } else if unread > 9 {
        } else if unread > 9 {
            //: labWidth = 23.0
            labWidth = 23.0
        }
        //: let delta = KDeviceIsIphoneX ? 5 : 2
        let delta = consLet_keyData ? 5 : 2
        //: label.snp.remakeConstraints { make in
        label.snp.remakeConstraints { make in
            //: make.leading.equalTo(btn.snp.centerX).offset(10)
            make.leading.equalTo(btn.snp.centerX).offset(10)
            //: make.top.equalTo(delta)
            make.top.equalTo(delta)
            //: make.size.equalTo(CGSize(width: labWidth, height: 18.0))
            make.size.equalTo(CGSize(width: labWidth, height: 18.0))
        }
    }

    //: func getBadgeLabel(btn: UIButton) -> UILabel {
    func sunnah(btn: UIButton) -> UILabel {
        //: var badgeLabel = btn.viewWithTag(1000)
        var badgeLabel = btn.viewWithTag(1000)
        //: if badgeLabel == nil {
        if badgeLabel == nil {
            //: var tempLabel = UILabel.init()
            var tempLabel = UILabel()
            //: tempLabel = UILabel.init()
            tempLabel = UILabel()
            //: tempLabel.tag = 1000
            tempLabel.tag = 1000
            //: tempLabel.backgroundColor = UIColor.msgTipsColor()
            tempLabel.backgroundColor = UIColor.everyUser()
            //: tempLabel.layer.cornerRadius = 9
            tempLabel.layer.cornerRadius = 9
            //: tempLabel.layer.borderWidth = 1
            tempLabel.layer.borderWidth = 1
            //: tempLabel.layer.borderColor = UIColor.white.cgColor
            tempLabel.layer.borderColor = UIColor.white.cgColor
            //: tempLabel.clipsToBounds = true
            tempLabel.clipsToBounds = true
            //: tempLabel.textColor = UIColor.white
            tempLabel.textColor = UIColor.white
            //: tempLabel.font = UIFont.little(fontSize: 13)
            tempLabel.font = UIFont.little(fontSize: 13)
            //: tempLabel.isHidden = true
            tempLabel.isHidden = true
            //: tempLabel.textAlignment = .center
            tempLabel.textAlignment = .center

            //: btn.addSubview(tempLabel)
            btn.addSubview(tempLabel)
            //: badgeLabel = tempLabel
            badgeLabel = tempLabel
        }
        //: return badgeLabel as! UILabel
        return badgeLabel as! UILabel
    }

    /// 展示消息tab头像
    //: func showNewMessageUser(headPic: String) {
    func terms(headPic: String) {
        //: if currentTabType != TabBarItemType.Message.rawValue {
        if currentTabType != TextValueConvertible.Message.rawValue {
            //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
            let btn = self.viewWithTag(TextValueConvertible.Message.rawValue + 100) as? UIButton
            //: if btn != nil {
            if btn != nil {
                //: self.messageIcon.isHidden = false
                self.messageIcon.isHidden = false
                //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                //: self.messageIcon.setUrlImage(urlStr: headPic, options: optionsInfo)
                self.messageIcon.cling(urlStr: headPic, options: optionsInfo)
            }
        }
    }

    /// 隐藏消息tab头像
    //: func hideNewMessageUser() {
    func isLoad() {
        //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
        let btn = self.viewWithTag(TextValueConvertible.Message.rawValue + 100) as? UIButton
        //: if btn != nil {
        if btn != nil {
            //: self.messageIcon.isHidden = true
            self.messageIcon.isHidden = true
        }
    }

    /// 展示女性直播toast提示
    //: func showFemaleLiveTurnOnToast() {
    func reflection() {
        //: guard self.subviews.count > 0 else { return }
        guard self.subviews.count > 0 else { return }
        //: TalkingLiveTabToast().show(superView: self)
        BlockThen().variousError(superView: self)
    }

    /// 更改直播按钮图标
    //: func switchLiveTabBarImage() {
    func listTo() {
        //: guard IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue else { return }
        //: let liveBtn = self.viewWithTag(TabBarItemType.Live.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(TextValueConvertible.Live.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: if TalkingLiveManager.shared().isLive ||
        if DecisionMakerReactiveCompatible.barIn().isLive ||
            //: TalkingVoiceRoomManager.shared().isParty, String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid {
            EqualSendReactiveCompatible.clout().isParty, String(EqualSendReactiveCompatible.clout().partyModel.streamerInfo.uid) == IndexStyleAppManager.share.loginUid
        {
            //: liveSvga.isHidden = false
            liveSvga.isHidden = false
            //: } else {
        } else {
            //: liveSvga.isHidden = true
            liveSvga.isHidden = true
        }
    }

    /// 更改Randow按钮图标
    //: func switchRandowTabBarImage(isHidde: Bool) {
    func sumimateHidde(isHidde: Bool) {
        //: let liveBtn = self.viewWithTag(TabBarItemType.Randow.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(TextValueConvertible.Randow.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: randowSvga.isHidden = !isHidde
        randowSvga.isHidden = !isHidde
    }
}
