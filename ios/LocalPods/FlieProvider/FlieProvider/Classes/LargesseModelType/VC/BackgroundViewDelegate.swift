
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_iconValue:[UInt8] = [0x4,0x3,0x4,0x19,0x45,0xe,0x2,0x9,0x8,0x1f,0x57,0x44,0x4d,0x5,0xc,0x1e,0x4d,0x3,0x2,0x19,0x4d,0xf,0x8,0x8,0x3,0x4d,0x4,0x0,0x1d,0x1,0x8,0x0,0x8,0x3,0x19,0x8,0x9]

private func titleUser(length num: UInt8) -> UInt8 {
    return num ^ 109
}

/*: "Price Settings" :*/
fileprivate let str_postValue:String = "mode up returnPrice "
fileprivate let str_arrayValue:String = "share"
fileprivate let str_sureData:String = "ETTINGS"

/*: "5.00" :*/
fileprivate let str_nextThatValue:[Character] = ["5",".","0","0"]

/*: "30" :*/
fileprivate let str_viewData:[Character] = ["3","0"]

/*: "20" :*/
fileprivate let str_appToValue:String = "20"

/*: "Chat price settings" :*/
fileprivate let str_lockName:String = "fatal view genderChat p"
fileprivate let str_valueTitle:String = "settintables"

/*: "Video call price settings" :*/
fileprivate let str_sourceCellStateData:String = "data class circle height cellVideo "
fileprivate let str_addText:[Character] = ["p","r","i","c","e"," ","s","e","t","t","i","n","g","s"]

/*: "Voice call price settings" :*/
fileprivate let str_bottomData:[Character] = ["V","o","i","c","e"," ","c","a","l","l"," ","p","r","i","c","e"," ","s","e","t","t"]
fileprivate let str_photoValue:String = "inplayers"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class BackgroundViewDelegate: ServiceRecognizerDelegate {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [IndexTransformable] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [IndexTransformable] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [IndexTransformable] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_iconValue.map{titleUser(length: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(str_postValue.suffix(6)) + str_arrayValue.replacingOccurrences(of: "share", with: "S") + str_sureData.lowercased()).localized

        //: self.setupSubviews()
        self.playOut()
        //: self.setupSubViewsConstraint()
        self.jabbing()
        //: self.bindInteraction()
        self.mpQuantityeraction()
        //: self.setupData()
        self.hypocorism()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.primaryColorBarContent()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(StartSetCell.self, forCellReuseIdentifier: StartSetCell.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension BackgroundViewDelegate {
    //: private func setupData() {
    private func hypocorism() {
        //: for tempModel in IndexStyleAppManager.share.appUserConfigMode.chatPriceSettings {
        for tempModel in IndexStyleAppManager.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(IndexStyleAppManager.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(IndexStyleAppManager.share.loginUserMode.messagePrice ?? "5.00")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in IndexStyleAppManager.share.appUserConfigMode.videoPriceSettings {
        for tempModel in IndexStyleAppManager.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(IndexStyleAppManager.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(IndexStyleAppManager.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in IndexStyleAppManager.share.appUserConfigMode.voicePriceSettings {
        for tempModel in IndexStyleAppManager.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(IndexStyleAppManager.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(IndexStyleAppManager.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension BackgroundViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: StartSetCell.className(), for: indexPath) as! StartSetCell
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.saveerDismiss(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: consLet_errorDeviceHeightData, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.primaryColorBarContent()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: consLet_errorDeviceHeightData - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(str_lockName.suffix(6)) + "rice " + str_valueTitle.replacingOccurrences(of: "table", with: "g")).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(str_sourceCellStateData.suffix(6)) + "call " + String(str_addText)).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(str_bottomData) + str_photoValue.replacingOccurrences(of: "player", with: "g")).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .appValueDetailColor()
        titleLab.textColor = .bringHomeColor()
        //: titleLab.font = .loadEnable(type: .Regular, fontSize: 16)
        titleLab.font = .loadEnable(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = ObserverSetView(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.become()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension BackgroundViewDelegate {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension BackgroundViewDelegate {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension BackgroundViewDelegate {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension BackgroundViewDelegate {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension BackgroundViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func playOut() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func jabbing() {}

    // 添加事件
    //: private func bindInteraction() {
    private func mpQuantityeraction() {}
}
