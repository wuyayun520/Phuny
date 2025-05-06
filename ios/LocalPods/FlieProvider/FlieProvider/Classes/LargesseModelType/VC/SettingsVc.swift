
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeTitle:[UInt8] = [0x35,0x32,0x35,0x28,0x74,0x3f,0x33,0x38,0x39,0x2e,0x66,0x75,0x7c,0x34,0x3d,0x2f,0x7c,0x32,0x33,0x28,0x7c,0x3e,0x39,0x39,0x32,0x7c,0x35,0x31,0x2c,0x30,0x39,0x31,0x39,0x32,0x28,0x39,0x38]

private func menuModel(title num: UInt8) -> UInt8 {
    return num ^ 92
}

/*: "Settings" :*/
fileprivate let str_labData:String = "Settbring collection"

/*: "Security" :*/
fileprivate let str_actualData:String = "path show extensionSecurit"
fileprivate let str_roomValue:String = "conversation"

/*: "More" :*/
fileprivate let str_ofNameText:[Character] = ["M","o","r","e"]

/*: "Logout succeeded!" :*/
fileprivate let str_modelTitle:[Character] = ["L","o","g","o","u","t"," ","s"]
fileprivate let str_makeSharedName:String = "stackcee"

/*: "DeviceReactiveCompatible" :*/
fileprivate let str_tagValue:String = "string self with remove callTalki"
fileprivate let str_userValue:String = "Cellvideo normal written"

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let str_toContent:[UInt8] = [0x3,0x3f,0x36,0x32,0x20,0x36,0x73,0x30,0x3c,0x3e,0x3e,0x26,0x3d,0x3a,0x30,0x32,0x27,0x36,0x73,0x24,0x3a,0x27,0x3b,0x73,0x3c,0x3d,0x3f,0x3a,0x3d,0x36,0x73,0x20,0x36,0x21,0x25,0x3a,0x30,0x36,0x73,0x35,0x3a,0x21,0x20,0x27,0x73,0x32,0x3d,0x37,0x73,0x27,0x3b,0x36,0x3d,0x73,0x26,0x23,0x3f,0x3c,0x32,0x37,0x73,0x3f,0x3c,0x34,0x20,0x7f,0x73,0x3f,0x3c,0x34,0x20,0x73,0x32,0x21,0x36,0x73,0x26,0x20,0x36,0x37,0x73,0x27,0x3c,0x73,0x32,0x3d,0x32,0x3f,0x2a,0x29,0x36,0x73,0x23,0x21,0x3c,0x31,0x3f,0x36,0x3e,0x20,0x73,0x2a,0x3c,0x26,0x73,0x36,0x3d,0x30,0x3c,0x26,0x3d,0x27,0x36,0x21,0x36,0x37,0x73,0x3a,0x3d,0x73,0x27,0x3b,0x36,0x73,0x26,0x20,0x36,0x73,0x3c,0x35,0x73,0x27,0x3b,0x36,0x73,0x12,0x23,0x23,0x72]

/*: "Cancel" :*/
fileprivate let str_makeName:String = "Cancelmake video label component"

/*: "OK" :*/
fileprivate let str_arrayValue:[Character] = ["O","K"]

/*: "#999999" :*/
fileprivate let str_valueText:String = "#99999"
fileprivate let str_countUserValue:String = "9"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SettingsVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

//: enum SettingsType: String {
enum StraddleTextConvertible: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class SettingsVc: ServiceRecognizerDelegate {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeTitle.map{menuModel(title: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(str_labData.prefix(4)) + "ings").localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: designView()
        designSearch()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[StraddleTextConvertible]] = {
        //: var array = [[SettingsType]]()
        var array = [[StraddleTextConvertible]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [StraddleTextConvertible] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [StraddleTextConvertible] = [.Turnon_Notif]
//        var array3: [StraddleTextConvertible] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [StraddleTextConvertible] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [StraddleTextConvertible] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [StraddleTextConvertible] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
//        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName - consLet_clickReplaceName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "Security".localized, "More".localized, ""]
        var array = ["", "", (String(str_actualData.suffix(7)) + str_roomValue.replacingOccurrences(of: "conversation", with: "y")).localized, "More".localized, ""]
//        var array = ["", "", "", "Security".localized, "More".localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension SettingsVc {
    /// logout
    //: func logoutTool() {
    func begin() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard KeyPermissionTool.militaryPost() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: return
            return
        }

        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingLoginRequestTool.req_loginOut { t in
        AdministratorReactiveCompatible.information { t in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: consLet_askData, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func level() {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        KeyReactiveCompatible.place(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.begin()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.scaleMsg(showMsg: (String(str_modelTitle) + str_makeSharedName.replacingOccurrences(of: "stack", with: "uc") + "ded!").localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension SettingsVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [StraddleTextConvertible] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 2 || section == 3 {
        if section == 2 || section == 3 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingSettingCell"
        let identifier = (String(str_tagValue.suffix(5)) + "ngSetting" + String(str_userValue.prefix(4)))
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
        let cell: DeviceReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! DeviceReactiveCompatible

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [StraddleTextConvertible] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.table(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.begin()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.bean(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [StraddleTextConvertible] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = TitleResourceReactiveCompatible()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = MonthEventViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: PostPushManager.share.func__pushToWebVC(webViewType: .TermsofUse)
            PostPushManager.share.scene(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: PostPushManager.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            PostPushManager.share.scene(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = IndexUniversalVc()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.unicersal(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = IndexUniversalVc()
            //: vc.setUnicersalView(type: .Notifications)
            vc.unicersal(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = IndexUniversalVc()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.unicersal(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: PostPushManager.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            PostPushManager.share.scene(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = PtolemaicSystemRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = ResourceAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.exceptEqual(fontSize: 16)
            config.textFont = UIFont.exceptEqual(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            EqualAlertShow.showConfig(title: nil, message: String(bytes: str_toContent.map{$0^83}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                EqualLogTool.shared.betweenGift()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.primaryColorBarContent()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: "#999999")
        //: title.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        title.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension SettingsVc {
    //: private func designView() {
    private func designSearch() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(DeviceReactiveCompatible.self, forCellReuseIdentifier: (String(str_tagValue.suffix(5)) + "ngSetting" + String(str_userValue.prefix(4))))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
