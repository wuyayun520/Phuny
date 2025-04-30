
//: Declare String Begin

/*: "bannerList" :*/
fileprivate let str_callValue:[Character] = ["b","a","n","n","e","r","L","i","s"]
fileprivate let str_bottomData:String = "phone"

/*: "me_wallet" :*/
fileprivate let str_cellAppValue:String = "table accept extension keyme_walle"
fileprivate let str_errorName:[Character] = ["t"]

/*: "me_edit_profile" :*/
fileprivate let str_yearData:String = "size elseme_ed"
fileprivate let str_lineCareText:[Character] = ["i","l","e"]

/*: "icon_me_settings" :*/
fileprivate let str_backgroundValue:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let str_toLiveText:[Character] = ["s","e","t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResourceViewDelegate.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/2/19.
//

//: import UIKit
import UIKit

//: class TalkingMaleMeController: TalkingBaseViewController {
class ResourceViewDelegate: ServiceRecognizerDelegate {
    //: private var section1Data = [(String, String)]()
    private var section1Data = [(String, String)]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: reloadLocalData()
        conversationData()
        //: func__reqBanner()
        viewBanner()
        //: setupSubviews()
        quantityry()
        //: setupSubViewsConstraint()
        fromTo()
        //: addNotifications()
        addOffBy()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        repressObject()
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
        //: table.register(TalkingMeUpgradeCardCell.self, forCellReuseIdentifier: TalkingMeUpgradeCardCell.className())
        table.register(PrizeCardCell.self, forCellReuseIdentifier: PrizeCardCell.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(ClearFailViewCell.self, forCellReuseIdentifier: ClearFailViewCell.className())
        //: table.addHeaderRefresh { [weak self] in
        table.pastObject { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.effectReload()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = .init()
    lazy var bannerListData: [LastModelType] = .init()
}

// MARK: - Load Data

//: extension TalkingMaleMeController {
extension ResourceViewDelegate {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func effectReload() {
        //: self.tableView.mj_header?.beginRefreshing()
        self.tableView.mj_header?.beginRefreshing()
        //: self.func__requestUserInfo()
        self.repressObject()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func repressObject() {
        //: AppManagerRequest.func__requestUserInfo { _, _, _ in
        DeviceManagerRequest.readOut { _, _, _ in
            //: self.reloadLocalData()
            self.conversationData()
            //: self.tableView.endRefresh()
            self.tableView.birth()
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// banner
    //: func func__reqBanner() {
    func viewBanner() {
        //: SocialRequestManager().req_adBanner(position: 2) { [weak self] _, result, _ in
        SpectralColourRequestManager().serverPosition(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? [String: Any] else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(str_callValue) + str_bottomData.replacingOccurrences(of: "phone", with: "t"))] ?? []).arrayValue
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
    private func conversationData() {
        //: self.section1Data = [(CenterItemType.My_Wallet.rawValue, "me_wallet"),
        self.section1Data = [(MakeDefaultsSerializable.My_Wallet.rawValue, (String(str_cellAppValue.suffix(8)) + String(str_errorName))),
                             //: (CenterItemType.My_EditProfile.rawValue, "me_edit_profile"),
                             (MakeDefaultsSerializable.My_EditProfile.rawValue, (String(str_yearData.suffix(5)) + "it_prof" + String(str_lineCareText))),
                             //: (CenterItemType.My_Settings.rawValue, "icon_me_settings")]
                             (MakeDefaultsSerializable.My_Settings.rawValue, (String(str_backgroundValue) + String(str_toLiveText)))]
    }
}

// MARK: - Event

//: extension TalkingMaleMeController {
extension ResourceViewDelegate {
    /// 跳转编辑资料页
    //: @objc func pushEdit() {
    @objc func aboveColor() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = AtPhotoDelegate()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMaleMeController: UITableViewDelegate, UITableViewDataSource {
extension ResourceViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 3
            return 3
            //: } else if section == 1 {
        } else if section == 1 {
            //: return self.section1Data.count
            return self.section1Data.count
            //: } else {
        } else {
            //: return 0
            return 0
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ClearFailViewCell.className(), for: indexPath) as! ClearFailViewCell
            //: let data = self.section1Data[indexPath.row]
            let data = self.section1Data[indexPath.row]
            //: let isLast = section1Data.count == (indexPath.row + 1)
            let isLast = section1Data.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.occurrence(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
            //: return cell
            return cell
        }

        //: switch indexPath.row {
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
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeUpgradeCardCell.className(), for: indexPath) as! TalkingMeUpgradeCardCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PrizeCardCell.className(), for: indexPath) as! PrizeCardCell
            //: cell.refreshUpgradeCard()
            cell.equalResume()
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

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: let vc = TalkingWalletViewController()
                let vc = TalkingBlockViewController()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)

                //: } else if indexPath.row == 1 {
            } else if indexPath.row == 1 {
                //: PostPushManager.share.func__pushToUserDetailVC(uid: IndexStyleAppManager.share.loginUid)
                PostPushManager.share.miniskirt(uid: IndexStyleAppManager.share.loginUid)

                //: } else if indexPath.row == 2 {
            } else if indexPath.row == 2 {
                //: let vc = TalkingSettingsVC()
                let vc = SettingsVc()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMaleMeController {
extension ResourceViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func quantityry() {
        //: self.view.addSubview(self.tableView)
        self.view.addSubview(self.tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fromTo() {
        //: self.tableView.snp.makeConstraints { make in
        self.tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func addOffBy() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.pushEdit),
                                               selector: #selector(self.aboveColor),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: consLet_tableUserData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.func__requestUserInfo),
                                               selector: #selector(self.repressObject),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: consLet_timeKeyValue,
                                               //: object: nil)
                                               object: nil)
    }
}
