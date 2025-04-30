
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let str_loadText:[UInt8] = [0x27,0x2c,0x8,0x2f,0x2b,0x24]

private func appInfo(effect num: UInt8) -> UInt8 {
    return num ^ 74
}

/*: "bannerList" :*/
fileprivate let str_equalContent:String = "bframenne"

/*: "icon_me_chatsettings" :*/
fileprivate let str_rawValue:[Character] = ["i","c","o","n","_","m","e"]
fileprivate let str_clickText:[Character] = ["_","c","h","a","t","s","e","t","t","i","n","g","s"]

/*: "icon_me_automatic" :*/
fileprivate let str_priceValue:String = "view kit layer indexicon_me"
fileprivate let str_toName:[Character] = ["_","a","u","t"]
fileprivate let str_blackUserData:[Character] = ["o","m","a","t","i","c"]

/*: "icon_me_settings" :*/
fileprivate let str_deviceData:[Character] = ["i","c","o","n","_","m","e","_","s"]
fileprivate let str_managerRoundData:[Character] = ["e","t","t","i","n","g","s"]

/*: "icon_me_tc" :*/
fileprivate let str_layerData:String = "view succeed render varicon_me_"
fileprivate let str_roomLabName:String = "tempc"

/*: "icon_me_videoSet" :*/
fileprivate let str_timeName:String = "icon_mload result state"
fileprivate let str_modelData:String = "oSetcolor female let"

/*: "icon_me_bs" :*/
fileprivate let str_kitName:String = "icon_title filter model make make"

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_statusValue:[UInt8] = [0xba,0x91,0x8b,0x9a,0x8d,0xdf,0xdd,0xac,0x9a,0x8b,0x8b,0x96,0x91,0x98,0x8c,0xdd,0xdf,0x9e,0x91,0x9b,0xdf,0x90,0x8f,0x9a,0x91,0xdf,0xdd,0xbc,0x9e,0x92,0x9a,0x8d,0x9e,0xdd,0xdf,0x8f,0x9a,0x8d,0x92,0x96,0x8c,0x8c,0x96,0x90,0x91,0xdf,0x8b,0x90,0xdf,0x8a,0x8c,0x9a,0xdf,0x8b,0x97,0x96,0x8c,0xdf,0x99,0x8a,0x91,0x9c,0x8b,0x96,0x90,0x91,0xdf,0x91,0x90,0x8d,0x92,0x9e,0x93,0x93,0x86]

/*: "Cancel" :*/
fileprivate let str_afterData:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let str_shareName:[Character] = ["S","e","t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelTitleViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class LabelTitleViewController: ServiceRecognizerDelegate {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(MakeDefaultsSerializable, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: reloadLocalData()
        valueOrRawData()
        //: func__reqBanner()
        viewPath()
        //: setupSubviews()
        subviewsRequest()
        //: setupSubViewsConstraint()
        localTitle()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(force),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: consLet_tableUserData,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(disobligeInfo),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: consLet_timeKeyValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        disobligeInfo()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(TotalThen.self, forCellReuseIdentifier: TotalThen.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(NameClearDataSource.self, forCellReuseIdentifier: NameClearDataSource.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(ServiceValueViewCell.self, forCellReuseIdentifier: ServiceValueViewCell.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(JumpView.self, forCellReuseIdentifier: JumpView.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(ClearFailViewCell.self, forCellReuseIdentifier: ClearFailViewCell.className())
        //: table.addHeaderRefresh { [weak self] in
        table.pastObject { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.greetFlush()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [LastModelType] = //: return Array<LastModelType>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension LabelTitleViewController {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func greetFlush() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        disobligeInfo()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func disobligeInfo() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        DeviceManagerRequest.readOut { _, _, _ in
            //: self.reloadLocalData()
            self.valueOrRawData()
            //: self.tableView.endRefresh()
            self.tableView.birth()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if DecisionMakerReactiveCompatible.barIn().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: consLet_callValue, object: nil, userInfo: ["mfBean": 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func viewPath() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        SpectralColourRequestManager().serverPosition(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_equalContent.replacingOccurrences(of: "frame", with: "a") + "rList")] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = LastModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func valueOrRawData() {
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(str_rawValue) + String(str_clickText))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(str_priceValue.suffix(7)) + String(str_toName) + String(str_blackUserData))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(str_deviceData) + String(str_managerRoundData)))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(str_deviceData) + String(str_managerRoundData)))]
        }
        //: if IndexStyleAppManager.share.appUserConfigMode.showTaskCenter {
        if IndexStyleAppManager.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(str_layerData.suffix(8)) + str_roomLabName.replacingOccurrences(of: "temp", with: "t"))), at: 0)
        }
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(str_timeName.prefix(6)) + "e_vide" + String(str_modelData.prefix(4)))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if consLet_matchData, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(str_kitName.prefix(5)) + "me_bs")), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension LabelTitleViewController {
    //: @objc func pushEdit() {
    @objc func force() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = AtPhotoDelegate()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func judgeData() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        KeyPermissionTool.modelBlock(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard JewishCalendarMonthThen.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.noblesseExtra(showMsg: consLet_viewData)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = FileViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                EqualAlertShow.showConfig(title: nil, message: String(bytes: str_statusValue.map{$0^255}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: (String(str_shareName)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    EqualAlertShow.postBegin()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension LabelTitleViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ClearFailViewCell.className(), for: indexPath) as! ClearFailViewCell
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.occurrence(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.atBtn()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: TotalThen.className(), for: indexPath) as! TotalThen
            //: cell.setViewData()
            cell.liePush()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: NameClearDataSource.className(), for: indexPath) as! NameClearDataSource
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.bannerDataViewCollectionCoffin(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ServiceValueViewCell.className(), for: indexPath) as! ServiceValueViewCell
            //: cell.setViewData()
            cell.cumulusToMetadata()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: JumpView.className(), for: indexPath) as! JumpView
            //: cell.setViewData()
            cell.down()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = BackgroundViewDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = ViewDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = SettingsVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: PostPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            PostPushManager.share.scene(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            judgeData()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = TelevisionEqualThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension LabelTitleViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsRequest() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func localTitle() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
