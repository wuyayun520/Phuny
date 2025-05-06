
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_rowTitle:[Character] = ["#","2","0","1","E","5","0"]

/*: "#1F1624" :*/
fileprivate let str_addData:String = "size up range#1F1624"

/*: "quick_video_topview" :*/
fileprivate let str_placeDirectionTitle:String = "qemptyic"
fileprivate let str_userData:String = "height appo_topv"
fileprivate let str_pushName:String = "iinfo"

/*: "nav_back_black_nor" :*/
fileprivate let str_tempHiddenReturnValue:String = "nav_bload in day text height"
fileprivate let str_equalUntilName:[Character] = ["c","k","_","n","o","r"]

/*: "Random Video" :*/
fileprivate let str_customerValue:String = "in errorRand"
fileprivate let str_labelValue:String = "om Videomake center name"

/*: "quick_video_explain" :*/
fileprivate let str_titleData:String = "quick_live gesture self"
fileprivate let str_sharedValue:String = "EXPLA"
fileprivate let str_imageValue:[Character] = ["i","n"]

/*: "get json error" :*/
fileprivate let str_nameTitle:String = "render tab sessionget j"
fileprivate let str_serverText:[Character] = ["r"]

/*: "Searching for perfect matches. please be patient." :*/
fileprivate let str_pathName:[UInt8] = [0x2e,0x74,0x6e,0x65,0x69,0x74,0x61,0x70,0x20,0x65,0x62,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2e,0x73,0x65,0x68,0x63,0x74,0x61,0x6d,0x20,0x74,0x63,0x65,0x66,0x72,0x65,0x70,0x20,0x72,0x6f,0x66,0x20,0x67,0x6e,0x69,0x68,0x63,0x72,0x61,0x65,0x53]

/*: "Matching..." :*/
fileprivate let str_statusValue:String = "Matchidata view top let"

/*: "matchId" :*/
fileprivate let str_viewIconTitle:String = "tag selectedmatchId"

/*: "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video." :*/
fileprivate let str_managerValue:[UInt8] = [0x18,0x2b,0x24,0x2e,0x25,0x27,0x6a,0x1c,0x23,0x2e,0x2f,0x25,0x6a,0x22,0x2f,0x26,0x3a,0x39,0x6a,0x26,0x25,0x29,0x2b,0x3e,0x23,0x24,0x2d,0x6a,0x33,0x25,0x3f,0x38,0x6a,0x27,0x2b,0x3e,0x29,0x22,0x2f,0x39,0x6a,0x25,0x24,0x26,0x23,0x24,0x2f,0x6a,0x3b,0x3f,0x23,0x29,0x21,0x26,0x33,0x64,0x6a,0x18,0x2b,0x24,0x2e,0x25,0x27,0x6a,0x1c,0x23,0x2e,0x2f,0x25,0x39,0x6a,0x2b,0x38,0x2f,0x6a,0x3a,0x38,0x23,0x29,0x2f,0x2e,0x6a,0x2b,0x3e,0x6a,0x7e,0x7a,0x6a,0x2d,0x25,0x26,0x2e,0x6a,0x29,0x25,0x23,0x24,0x39,0x6a,0x3a,0x2f,0x38,0x6a,0x27,0x23,0x24,0x3f,0x3e,0x2f,0x6a,0x2b,0x24,0x2e,0x6a,0x2b,0x38,0x2f,0x6a,0x3a,0x2b,0x23,0x2e,0x6a,0x2c,0x25,0x38,0x6a,0x28,0x33,0x6a,0x3e,0x22,0x2f,0x6a,0x3a,0x2b,0x38,0x3e,0x33,0x6a,0x29,0x2b,0x26,0x26,0x23,0x24,0x2d,0x6a,0x3e,0x22,0x2f,0x6a,0x3c,0x23,0x2e,0x2f,0x25,0x64]

private func addApp(crop num: UInt8) -> UInt8 {
    return num ^ 74
}

/*: "OK" :*/
fileprivate let str_firstTitle:String = "accept"

/*: "onVideoMatch" :*/
fileprivate let str_modelColorValue:[Character] = ["o","n","V","i","d","e","o","M","a","t","c"]
fileprivate let str_errorValue:String = "title"

/*: "retryAfter" :*/
fileprivate let str_moveAppTitle:[Character] = ["r","e","t","r","y","A","f","t","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpeedyThen.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoMatchViewController: TalkingBaseViewController {
class SpeedyThen: ServiceRecognizerDelegate {
    //: private var headTimer: Timer?
    private var headTimer: Timer? // 头像展示定时器
    //: private var retryAfterTimer: Timer?
    private var retryAfterTimer: Timer? // 匹配失败重试定时器
    //: private var matchId: Int = 0
    private var matchId: Int = 0 // 速配批次Id

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_videoMatchHeadPics()
        queryedSize()
        //: startVideoMatch()
        patternTo()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: stopVideoMatch()
        fileEmpty()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        statusRecord()
        //: setupSubViewsConstraint()
        carryingCountoAction()
    }

    //: deinit {
    deinit {
        //: stopVideoMatch()
        fileEmpty()
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.belowUpSize(colors: [UIColor(hex: "#201E50")!.cgColor, UIColor(hex: "#1F1624")!.cgColor], size: CGSize(width: consLet_errorDeviceHeightData, height: consLet_sessionName))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.nearTap(name: "quick_video_topview")
        topView.image = UIImage.nearTap(name: (str_placeDirectionTitle.replacingOccurrences(of: "empty", with: "u") + "k_vide" + String(str_userData.suffix(6)) + str_pushName.replacingOccurrences(of: "info", with: "ew")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: let backBImg = UIImage.nearTap(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let backBImg = UIImage.nearTap(name: (String(str_tempHiddenReturnValue.prefix(5)) + "ack_bla" + String(str_equalUntilName))).withRenderingMode(.alwaysTemplate)
        //: backBtn.setImage(backBImg, for: .normal)
        backBtn.setImage(backBImg, for: .normal)
        //: backBtn.tintColor = .white
        backBtn.tintColor = .white
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(equalBack), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(consLet_messageText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.little(fontSize: 17)
        titleLab.font = UIFont.little(fontSize: 17)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_customerValue.suffix(4)) + String(str_labelValue.prefix(8))).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 提示（审核模式隐藏）
        //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
            //: let matchTipsBtn = UIButton(type: .custom)
            let matchTipsBtn = UIButton(type: .custom)
            //: let matchTipsImg = UIImage.nearTap(name: "quick_video_explain").withRenderingMode(.alwaysTemplate)
            let matchTipsImg = UIImage.nearTap(name: (String(str_titleData.prefix(6)) + "video_" + str_sharedValue.lowercased() + String(str_imageValue))).withRenderingMode(.alwaysTemplate)
            //: matchTipsBtn.setImage(matchTipsImg, for: .normal)
            matchTipsBtn.setImage(matchTipsImg, for: .normal)
            //: matchTipsBtn.tintColor = .white
            matchTipsBtn.tintColor = .white
            //: matchTipsBtn.addTarget(self, action: #selector(matchTipsButtonClick), for: .touchUpInside)
            matchTipsBtn.addTarget(self, action: #selector(tips), for: .touchUpInside)
            //: nav.addSubview(matchTipsBtn)
            nav.addSubview(matchTipsBtn)
            //: matchTipsBtn.snp.makeConstraints { make in
            matchTipsBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(0)
                make.trailing.equalTo(0)
                //: make.centerY.equalTo(backBtn)
                make.centerY.equalTo(backBtn)
                //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
                make.size.equalTo(CGSize(width: 45, height: consLet_messageText))
            }
        }

        //: return nav
        return nav
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
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

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Quick_Video_BG)
        let url = ResourceEffectTool.default.butterflyEffect(type: .Quick_Video_BG)
        //: do {
        do {
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
            printLog(message: (String(str_nameTitle.suffix(5)) + "son erro" + String(str_serverText)))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.exceptEqual(fontSize: 15)
        lab.font = UIFont.exceptEqual(fontSize: 15)
        //: lab.textColor = UIColor.init(white: 1, alpha: 0.7)
        lab.textColor = UIColor(white: 1, alpha: 0.7)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Searching for perfect matches. please be patient.".localized
        lab.text = String(bytes: str_pathName.reversed(), encoding: .utf8)!.localized
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var matchingLab: UILabel = {
    private lazy var matchingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.little(fontSize: 18)
        lab.font = UIFont.little(fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Matching...".localized
        lab.text = (String(str_statusValue.prefix(6)) + "ng...").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = actualWidth(w: 90)/2
        img.layer.cornerRadius = actualWidth(w: 90) / 2
        //: img.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        img.image = UIImage.numericalQuantityTheme(sex: ColorExpressionConvertible.female.rawValue)
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dataArr: [String] = {
    private lazy var dataArr: [String] = //: return Array<String>()
        .init()
    //: }()

    //: private lazy var resultDataArr: [TalkingMatchResultModel] = {
    private lazy var resultDataArr: [RoomResultModel] = //: return Array<RoomResultModel>()
        .init()
    //: }()
}

// MARK: - Request & 数据处理

//: extension TalkingQuickVideoMatchViewController {
extension SpeedyThen {
    /// 速配头像列表（男）
    //: private func req_videoMatchHeadPics() {
    private func queryedSize() {
        //: TalkingQuickVideoManager.req_videoMatchHeadPics { [weak self] succeed, result, errorModel in
        LogSendThen.valueBy { [weak self] succeed, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: self.dataArr = result as! [String]
            self.dataArr = result as! [String]

            //: var index = 0
            var index = 0
            //: self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { timer in
            self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { _ in
                // 实现无限循环
                //: if index >= self.dataArr.count { index = 0 }
                if index >= self.dataArr.count { index = 0 }
                // 网络加载图片，实现高斯模糊效果
                //: self.headImgView.setUrlImage(urlStr: self.dataArr[index]) { isSucceed in
                self.headImgView.underPause(urlStr: self.dataArr[index]) { _ in
                    //: guard let image = self.headImgView.image else { return }
                    guard let image = self.headImgView.image else { return }
                    //: self.headImgView.image = UIImage.blur(theImage: image, blurValue: 17)
                    self.headImgView.image = UIImage.barPlayer(theImage: image, blurValue: 17)
                }
                //: index += 1
                index += 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.headTimer?.fire()
            self.headTimer?.fire()
        }
    }

    /// 开始视频速配（男）
    //: private func req_videoMatchToMatch() {
    private func frontTo() {
        //: TalkingQuickVideoManager.req_videoMatchToMatch(matchId: self.matchId) { succeed, result, errorModel in
        LogSendThen.dismissal(matchId: self.matchId) { succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.matchId = json["matchId"].intValue
            self.matchId = json["matchId"].intValue
        }
    }
}

// MARK: - Event

//: extension TalkingQuickVideoMatchViewController {
extension SpeedyThen {
    /// 停止视频速配
    //: private func stopVideoMatch() {
    private func fileEmpty() {
        // 销毁定时器
        //: if self.headTimer != nil {
        if self.headTimer != nil {
            //: self.headTimer?.invalidate()
            self.headTimer?.invalidate()
            //: self.headTimer = nil
            self.headTimer = nil
        }

        //: if self.retryAfterTimer != nil {
        if self.retryAfterTimer != nil {
            //: self.retryAfterTimer?.invalidate()
            self.retryAfterTimer?.invalidate()
            //: self.retryAfterTimer = nil
            self.retryAfterTimer = nil
        }

        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        JewishCalendarMonthThen.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        JewishCalendarMonthThen.shared.errorDelegate = nil
    }

    /// 开始视频速配
    //: private func startVideoMatch() {
    private func patternTo() {
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        JewishCalendarMonthThen.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        JewishCalendarMonthThen.shared.errorDelegate = self
        //: req_videoMatchToMatch()
        frontTo()
    }

    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func equalBack() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 打开视频速配说明
    //: @objc private func matchTipsButtonClick() {
    @objc private func tips() {
        //: let message = "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video.".localized
        let message = String(bytes: str_managerValue.map{addApp(crop: $0)}, encoding: .utf8)!.localized
        //: TalkingAlertShow.alert(title: nil, message: message, rightBtnTitle: "OK".localized)
        EqualAlertShow.showConfig(title: nil, message: message, rightBtnTitle: "OK".localized)
    }
}

// MARK: - TalkingSocketManagerDelegate

//: extension TalkingQuickVideoMatchViewController: SocketManagerVideoMatchDelegate {
extension SpeedyThen: QualityMatchDelegate {
    /// 视频速配成功
    //: func socket_match_onVideoMatch(data: [String: Any]) {
    func sizeBy(data: [String: Any]) {
        // 停止速配，跳转速配结果界面
        //: stopVideoMatch()
        fileEmpty()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            //: guard let topVC = self.navigationController?.topViewController else { return }
            guard let topVC = self.navigationController?.topViewController else { return }
            //: guard !topVC.isKind(of: TalkingMatchResultViewController.self) else { return }
            guard !topVC.isKind(of: AutomaticallyErrorDelegate.self) else { return }
            //: guard let model = TalkingMatchResultModel.deserialize(from: data) else { return }
            guard let model = RoomResultModel.deserialize(from: data) else { return }

            // v1.0.6 订阅用户 当前视频速配成功的次数大于等于2，则在其匹配中页面额外展示回放按钮
            //: if IndexStyleAppManager.share.loginUserMode.loungePlus == true || IndexStyleAppManager.share.loginUserMode.videoPlayback == true {
            if IndexStyleAppManager.share.loginUserMode.loungePlus == true || IndexStyleAppManager.share.loginUserMode.videoPlayback == true {
                //: if self.resultDataArr.count >= 2 {
                if self.resultDataArr.count >= 2 {
                    //: self.resultDataArr.removeFirst()
                    self.resultDataArr.removeFirst()
                }
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)

                //: } else {
            } else { // 非订阅用户只展示一条
                //: self.resultDataArr.removeAll()
                self.resultDataArr.removeAll()
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)
            }

            //: let vc = TalkingMatchResultViewController()
            let vc = AutomaticallyErrorDelegate()
            //: vc.showLastArr = self.resultDataArr
            vc.showLastArr = self.resultDataArr
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func socket_match_onRequestCall(data: [String: Any]) {}
    func subjugate(data _: [String: Any]) {}
}

// MARK: - ViewObjectProtocol

//: extension TalkingQuickVideoMatchViewController: TalkingSocketManagerErrorDelegate {
extension SpeedyThen: ViewObjectProtocol {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func realize(errorNo: Int, cmd: String, msg _: String, data: [String: Any]) {
        //: if cmd == "onVideoMatch" && errorNo == 449 { // 匹配池用完，延时重试
        if cmd == (String(str_modelColorValue) + str_errorValue.replacingOccurrences(of: "title", with: "h")) && errorNo == 449 { // 匹配池用完，延时重试
            //: let json = JSON(data)
            let json = JSON(data)
            //: retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json["retryAfter"].intValue), block: { [weak self] timer in
            retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json[(String(str_moveAppTitle))].intValue), block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: self.matchId = json["matchId"].intValue
                self.matchId = json["matchId"].intValue
                //: self.startVideoMatch()
                self.patternTo()
                //: }, repeats: false)
            }, repeats: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingQuickVideoMatchViewController {
extension SpeedyThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func statusRecord() {
        //: self.view.addSubview(bgImgView)
        self.view.addSubview(bgImgView)
        //: self.view.addSubview(navView)
        self.view.addSubview(navView)
        //: self.view.addSubview(svgaPlayer)
        self.view.addSubview(svgaPlayer)
        //: self.view.addSubview(tipsLab)
        self.view.addSubview(tipsLab)
        //: self.view.addSubview(matchingLab)
        self.view.addSubview(matchingLab)
        //: self.view.addSubview(headImgView)
        self.view.addSubview(headImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func carryingCountoAction() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(consLet_tabValue)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: ScreenWidth, height: ScreenWidth))
            make.size.equalTo(CGSize(width: consLet_errorDeviceHeightData, height: consLet_errorDeviceHeightData))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalToSuperview().offset(-88-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-88 - consLet_halfTitle)
        }
        //: matchingLab.snp.makeConstraints { make in
        matchingLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(tipsLab.snp.top).offset(-20)
            make.bottom.equalTo(tipsLab.snp.top).offset(-20)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.center.equalTo(svgaPlayer)
            make.center.equalTo(svgaPlayer)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
            make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
        }
    }
}
