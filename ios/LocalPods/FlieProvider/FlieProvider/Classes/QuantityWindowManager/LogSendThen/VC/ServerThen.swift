
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let str_labelName:[Character] = ["#","3","3","0","0","5","B"]

/*: "get json error" :*/
fileprivate let str_modelName:String = "back videoget js"
fileprivate let str_fatalData:[Character] = ["o","n"," ","e","r","r","o","r"]

/*: "btn_live_mini_nor" :*/
fileprivate let str_playName:[Character] = ["b","t","n","_","l","i","v","e","_","m","i","n","i","_","n","o"]
fileprivate let str_fullName:String = "path"

/*: "icon_views_number" :*/
fileprivate let str_topName:[Character] = ["i","c","o","n","_","v"]
fileprivate let str_progressName:String = "enablews"
fileprivate let str_dismissValue:String = "_numberrequest fail object"

/*: "Random Video" :*/
fileprivate let str_blockValue:String = "Randomreturn image time area tip"
fileprivate let str_frameName:String = " Videomode table pull class red"

/*: "Accept Video Match Call" :*/
fileprivate let str_equalValue:String = "Accepin property record data capture"
fileprivate let str_detailName:String = "o Mastyle in hi"
fileprivate let str_contentName:[Character] = ["t","c","h"," ","C","a","l","l"]

/*: "%@ chatting" :*/
fileprivate let str_quoteValue:String = "%@ chtext var"
fileprivate let str_lengthValue:[Character] = ["a","t","t","i","n","g"]

/*: "chattingNum" :*/
fileprivate let str_rootValue:[Character] = ["c","h","a","t","t","i","n","g","N","u","m"]

/*: "type" :*/
fileprivate let str_beYouData:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "randomVideo" :*/
fileprivate let str_textValue:[Character] = ["r","a","n","d","o","m","V"]
fileprivate let str_assetData:[Character] = ["i","d","e","o"]

/*: "-1" :*/
fileprivate let str_removeData:String = "-1"

/*: "value" :*/
fileprivate let str_topData:String = "makelue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerThen.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class ServerThen: ServiceRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        listToSubviews()
        //: setupSubViewsConstraint()
        publishMessage()
        //: req_videoMatchCheck()
        tapSearch()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: "#33005B")
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = ResourceEffectTool.default.butterflyEffect(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.ordinalNumber()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_modelName.suffix(6)) + String(str_fatalData)))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_playName) + str_fullName.replacingOccurrences(of: "path", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(saveByMentalAct), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: btn.setImage(UIImage.nearTap(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_topName) + str_progressName.replacingOccurrences(of: "enable", with: "ie") + String(str_dismissValue.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.nearTap(name: (String(str_topName) + str_progressName.replacingOccurrences(of: "enable", with: "ie") + String(str_dismissValue.prefix(7)))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(str_blockValue.prefix(6)) + String(str_frameName.prefix(6))).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.little(fontSize: 20)
        lab1.font = UIFont.little(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(str_equalValue.prefix(5)) + "t Vide" + String(str_detailName.prefix(4)) + String(str_contentName)).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.exceptEqual(fontSize: 15)
        lab2.font = UIFont.exceptEqual(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.labelSumervalMedium()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(bugOut), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension ServerThen {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func tapSearch() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        LogSendThen.then { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(str_quoteValue.prefix(5)) + String(str_lengthValue)).localizedArguments(json[(String(str_rootValue))].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func sinceConstraint() {
        //: var params = ["type": "randomVideo"]
        var params = ["type": (String(str_textValue) + String(str_assetData))]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params["value"] = value
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        KeyReactiveCompatible.actionCompletion(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: IndexStyleAppManager.share.appUserConfigMode.randomVideo = value
            IndexStyleAppManager.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.ordinalNumber()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension ServerThen {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func saveByMentalAct() {
        //: getNavigationController()?.popViewController(animated: false)
        uphold()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func bugOut() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        sinceConstraint()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension ServerThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func listToSubviews() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func publishMessage() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(consLet_netViewValue + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
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

    /// 刷新UI
    //: private func refreshUI() {
    private func ordinalNumber() {
        //: if IndexStyleAppManager.share.appUserConfigMode.randomVideo == "1" {
        if IndexStyleAppManager.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (IndexStyleAppManager.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (IndexStyleAppManager.share.appUserConfigMode.randomVideo == "1")
    }
}
