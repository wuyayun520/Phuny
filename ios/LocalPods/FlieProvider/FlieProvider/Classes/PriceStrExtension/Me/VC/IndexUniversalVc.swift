
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_postData:[UInt8] = [0xa8,0xaf,0xa8,0xb5,0xe9,0xa2,0xae,0xa5,0xa4,0xb3,0xfb,0xe8,0xe1,0xa9,0xa0,0xb2,0xe1,0xaf,0xae,0xb5,0xe1,0xa3,0xa4,0xa4,0xaf,0xe1,0xa8,0xac,0xb1,0xad,0xa4,0xac,0xa4,0xaf,0xb5,0xa4,0xa5]

/*: "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation." :*/
fileprivate let str_nameText:[UInt8] = [0x79,0x46,0x53,0x58,0x16,0x42,0x5e,0x53,0x58,0x16,0x13,0x76,0x16,0x41,0x5f,0x5a,0x5a,0x16,0x44,0x53,0x55,0x59,0x5b,0x5b,0x53,0x58,0x52,0x16,0x43,0x45,0x53,0x44,0x45,0x16,0x42,0x59,0x16,0x4f,0x59,0x43,0x18,0x16,0x77,0x16,0x58,0x53,0x41,0x16,0x55,0x5e,0x57,0x42,0x16,0x41,0x5f,0x5a,0x5a,0x16,0x54,0x53,0x16,0x5b,0x57,0x52,0x53,0x16,0x57,0x50,0x42,0x53,0x44,0x16,0x57,0x16,0x45,0x43,0x55,0x55,0x53,0x45,0x45,0x50,0x43,0x5a,0x16,0x44,0x53,0x55,0x59,0x5b,0x5b,0x53,0x58,0x52,0x57,0x42,0x5f,0x59,0x58,0x18]

private func equalMode(background num: UInt8) -> UInt8 {
    return num ^ 54
}

/*: "Open then Applyname will recommend users to you. Use your identity to greet each other." :*/
fileprivate let str_infoViewTitle:[UInt8] = [0x73,0x4c,0x59,0x52,0x1c,0x48,0x54,0x59,0x52,0x1c,0x7d,0x4c,0x4c,0x50,0x45,0x52,0x5d,0x51,0x59,0x1c,0x4b,0x55,0x50,0x50,0x1c,0x4e,0x59,0x5f,0x53,0x51,0x51,0x59,0x52,0x58,0x1c,0x49,0x4f,0x59,0x4e,0x4f,0x1c,0x48,0x53,0x1c,0x45,0x53,0x49,0x12,0x1c,0x69,0x4f,0x59,0x1c,0x45,0x53,0x49,0x4e,0x1c,0x55,0x58,0x59,0x52,0x48,0x55,0x48,0x45,0x1c,0x48,0x53,0x1c,0x5b,0x4e,0x59,0x59,0x48,0x1c,0x59,0x5d,0x5f,0x54,0x1c,0x53,0x48,0x54,0x59,0x4e,0x12]

/*: "Your avatar and nickname will not be displayed in the ranking." :*/
fileprivate let str_equalData:[UInt8] = [0xe3,0xf9,0xff,0xfc,0xaa,0xeb,0x0,0xeb,0xfe,0xeb,0xfc,0xaa,0xeb,0xf8,0xee,0xaa,0xf8,0xf3,0xed,0xf5,0xf8,0xeb,0xf7,0xef,0xaa,0x1,0xf3,0xf6,0xf6,0xaa,0xf8,0xf9,0xfe,0xaa,0xec,0xef,0xaa,0xee,0xf3,0xfd,0xfa,0xf6,0xeb,0x3,0xef,0xee,0xaa,0xf3,0xf8,0xaa,0xfe,0xf2,0xef,0xaa,0xfc,0xeb,0xf8,0xf5,0xf3,0xf8,0xf1,0xb8]

fileprivate func cellError(raw num: UInt8) -> UInt8 {
    let value = Int(num) - 138
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Open then %@ will recommend users to you. Use your identity to greet each other." :*/
fileprivate let str_dataTitle:[UInt8] = [0x4,0x3b,0x2e,0x25,0x6b,0x3f,0x23,0x2e,0x25,0x6b,0x6e,0xb,0x6b,0x3c,0x22,0x27,0x27,0x6b,0x39,0x2e,0x28,0x24,0x26,0x26,0x2e,0x25,0x2f,0x6b,0x3e,0x38,0x2e,0x39,0x38,0x6b,0x3f,0x24,0x6b,0x32,0x24,0x3e,0x65,0x6b,0x1e,0x38,0x2e,0x6b,0x32,0x24,0x3e,0x39,0x6b,0x22,0x2f,0x2e,0x25,0x3f,0x22,0x3f,0x32,0x6b,0x3f,0x24,0x6b,0x2c,0x39,0x2e,0x2e,0x3f,0x6b,0x2e,0x2a,0x28,0x23,0x6b,0x24,0x3f,0x23,0x2e,0x39,0x65]

private func thenApp(clear num: UInt8) -> UInt8 {
    return num ^ 75
}

/*: "DeviceReactiveCompatible" :*/
fileprivate let str_imageTitle:String = "Talkinadd view label top normal"
fileprivate let str_visualTitle:String = "file self app headingCell"

/*: "#FF2348" :*/
fileprivate let str_beginName:String = "#FF2348share color in on fatal"

/*: "VanguardThen" :*/
fileprivate let str_togetherData:String = "Talkheight video player succeed"
fileprivate let str_toText:String = "tticontent"
fileprivate let str_redValue:[Character] = ["g","N"]
fileprivate let str_kitValueContent:String = "otifCellregular crop visible"

/*: "To set up a password, you need to verify the account, choose your verification method" :*/
fileprivate let str_fieldData:[UInt8] = [0x2d,0x48,0xf9,0x4c,0x3e,0x4d,0xf9,0x4e,0x49,0xf9,0x3a,0xf9,0x49,0x3a,0x4c,0x4c,0x50,0x48,0x4b,0x3d,0x5,0xf9,0x52,0x48,0x4e,0xf9,0x47,0x3e,0x3e,0x3d,0xf9,0x4d,0x48,0xf9,0x4f,0x3e,0x4b,0x42,0x3f,0x52,0xf9,0x4d,0x41,0x3e,0xf9,0x3a,0x3c,0x3c,0x48,0x4e,0x47,0x4d,0x5,0xf9,0x3c,0x41,0x48,0x48,0x4c,0x3e,0xf9,0x52,0x48,0x4e,0x4b,0xf9,0x4f,0x3e,0x4b,0x42,0x3f,0x42,0x3c,0x3a,0x4d,0x42,0x48,0x47,0xf9,0x46,0x3e,0x4d,0x41,0x48,0x3d]

fileprivate func imageRoom(center num: UInt8) -> UInt8 {
    let value = Int(num) - 217
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Verified by Phone" :*/
fileprivate let str_voiceText:String = "max at model close viewVerifi"
fileprivate let str_intimateValue:String = "var letPhone"

/*: "Verified by Email" :*/
fileprivate let str_upName:String = "Verifieend data"
fileprivate let str_paraData:String = "corner var list face popd by "

/*: "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? " :*/
fileprivate let str_sizeData:[UInt8] = [0x20,0x3f,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x74,0x65,0x6c,0x65,0x64,0x20,0x6f,0x74,0x20,0x65,0x75,0x6e,0x69,0x74,0x6e,0x6f,0x43,0x2e,0x45,0x4c,0x42,0x41,0x52,0x45,0x56,0x4f,0x43,0x45,0x52,0x4e,0x55,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x72,0x75,0x6f,0x79,0x20,0x64,0x6e,0x61,0x20,0x59,0x4c,0x54,0x4e,0x45,0x4e,0x41,0x4d,0x52,0x45,0x50,0x20,0x73,0x64,0x6e,0x65,0x69,0x72,0x66,0x20,0x64,0x65,0x68,0x63,0x74,0x61,0x6d,0x20,0x64,0x6e,0x61,0x20,0x73,0x6f,0x74,0x6f,0x68,0x70,0x20,0x2c,0x73,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x2c,0x65,0x6c,0x69,0x66,0x6f,0x72,0x70,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x74,0x65,0x6c,0x65,0x64,0x20,0x6f,0x74,0x20,0x67,0x6e,0x69,0x6f,0x67,0x20,0x65,0x72,0x27,0x75,0x6f,0x59]

/*: "UNRECOVERABLE" :*/
fileprivate let str_bottomText:String = "UNRECtitle"
fileprivate let str_layerData:String = "VlogABLE"

/*: "Delete Account" :*/
fileprivate let str_currentName:[Character] = ["D","e","l","e","t","e"," ","A","c","c","o","u"]
fileprivate let str_contentValue:String = "NT"

/*: "Cancel" :*/
fileprivate let str_labelName:String = "Cancelself self key"

/*: "Delete" :*/
fileprivate let str_iconAtValue:[Character] = ["D","e","l","e","t","e"]

/*: " ( :*/
fileprivate let str_toName:String = " ("

/*: s)" :*/
fileprivate let str_equalName:String = "s)load end execute"

/*: "Logout succeeded!" :*/
fileprivate let str_animaName:String = "fail let model false eventLogout"
fileprivate let str_pathData:String = "eeded!var import var let session"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexUniversalVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/26.
//

//: import UIKit
import UIKit

//: enum SettingsUniversal: String {
enum BlockTermConvertible: String {
    //: case Contact_information          = "Contact information"
    case Contact_information = "Contact information"
    //: case Notifications                = "Notifications"
    case Notifications
    //: case Social_Preferences           = "Social Preferences"
    case Social_Preferences = "Social Preferences"
}

//: enum SettingsUniversalType: String {
enum TypeVersionTitleTotalerpolation: String {
    //: case Phone_Number          = "Phone Number"
    case Phone_Number = "Phone Number"
    //: case Email_Address         = "Email Address"
    case Email_Address = "Email Address"
    //: case Turnon_Notif          = "Turn on Notification"
    case Turnon_Notif = "Turn on Notification"
    //: case Same_gendered         = "Same-gendered messaging"
    case Same_gendered = "Same-gendered messaging"
    //: case Cupid                 = "Cupid messaging"
    case Cupid = "Cupid messaging"
    //: case Ranking               = "Ranking anonymous"
    case Ranking = "Ranking anonymous"
    //: case Automatic             = "Automatic message"
    case Automatic = "Automatic message"
    //: case SetPassword           = "Set New Password"
    case SetPassword = "Set New Password"
    //: case DeleteA               = "Delete Account"
    case DeleteA = "Delete Account"
}

//: class TalkingSettingsUniversalVC: TalkingBaseViewController {
class IndexUniversalVc: ServiceRecognizerDelegate {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()
    //: var settingModel = TalkingSettingModel()
    var settingModel = PtolemaicSystemHandyJSON()

    //: var  type = SettingsUniversal.Contact_information
    var type = BlockTermConvertible.Contact_information

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_postData.map{$0^193}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
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
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: designView()
        barMagnitudeimate()
        //: getSettingData()
        aboveTap()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [SettingsUniversalType] = {
    private lazy var DataSource: [TypeVersionTitleTotalerpolation] = {
        //: var array = [SettingsUniversalType]()
        var array = [TypeVersionTitleTotalerpolation]()
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

    //: private lazy var DetailSource: [String] = {
    private lazy var DetailSource: [String] = {
        //: var array = ["", "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation.".localizedArguments(AppName), "Open then Applyname will recommend users to you. Use your identity to greet each other.".localized, "Your avatar and nickname will not be displayed in the ranking.".localized]
        var array = ["", String(bytes: str_nameText.map{equalMode(background: $0)}, encoding: .utf8)!.localizedArguments(consLet_deviceData), String(bytes: str_infoViewTitle.map{$0^60}, encoding: .utf8)!.localized, String(bytes: str_equalData.map{cellError(raw: $0)}, encoding: .utf8)!.localized]
        //: if IndexStyleAppManager.share.loginUserMode.sex == "2" {
        if IndexStyleAppManager.share.loginUserMode.sex == "2" {
            //: array[1] = "Open then %@ will recommend users to you. Use your identity to greet each other.".localizedArguments(AppName)
            array[1] = String(bytes: str_dataTitle.map{thenApp(clear: $0)}, encoding: .utf8)!.localizedArguments(consLet_deviceData)
        }
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsUniversalVC {
extension IndexUniversalVc {
    //: func getSettingData() {
    func aboveTap() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetSetting(params: dict) { succeed, result, errorModel in
        KeyReactiveCompatible.objectRetrieveScenarioCompletion(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<PtolemaicSystemHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func setUnicersalView(type: SettingsUniversal) {
    func unicersal(type: BlockTermConvertible) {
        //: self.type = type
        self.type = type
        //: self.title = type.rawValue.localized
        self.title = type.rawValue.localized
        //: switch type {
        switch type {
        //: case .Contact_information:
        case .Contact_information:
            //: DataSource.append(.Phone_Number)
            DataSource.append(.Phone_Number)
            //: DataSource.append(.Email_Address)
            DataSource.append(.Email_Address)
            //: if IndexStyleAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 || IndexStyleAppManager.share.loginUserMode.email.count > 0 {
            if IndexStyleAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 || IndexStyleAppManager.share.loginUserMode.email.count > 0 {
                //: DataSource.append(.SetPassword)
                DataSource.append(.SetPassword)
            }
            //: DataSource.append(.DeleteA)
            DataSource.append(.DeleteA)
        //: break
        //: case .Notifications:
        case .Notifications:
            //: DataSource.append(.Turnon_Notif)
            DataSource.append(.Turnon_Notif)
        //: break
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: DataSource.append(.Same_gendered)
            DataSource.append(.Same_gendered)
            //: DataSource.append(.Cupid)
            DataSource.append(.Cupid)
            //: DataSource.append(.Ranking)
            DataSource.append(.Ranking)
            //: DataSource.append(.Automatic)
            DataSource.append(.Automatic)
            //: break
        }
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    /// 获取修改【手机号】密码验证码
    //: private func req_sendModifyPwdSms() {
    private func quitsTitle() {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingLoginRequestTool.req_sendModifyPwdSms { succeed, result, errorModel in
        AdministratorReactiveCompatible.with { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard succeed else { return }
            guard succeed else { return }
            //: PostPushManager.share.func__pushToSetNewPasswordVC(type: .PhoneLogin, content: IndexStyleAppManager.share.loginUserMode.mobile ?? "", isNewPwd: false)
            PostPushManager.share.dataPwd(type: .PhoneLogin, content: IndexStyleAppManager.share.loginUserMode.mobile ?? "", isNewPwd: false)
        }
    }

    /// 获取修改【邮箱】密码验证码
    //: private func req_sendModifyPwdEmail() {
    private func executeOf() {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingLoginRequestTool.req_sendModifyPwdEmail { succeed, result, errorModel in
        AdministratorReactiveCompatible.componentCompletion { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard succeed else { return }
            guard succeed else { return }
            //: PostPushManager.share.func__pushToSetNewPasswordVC(type: .EmailLogin, content: IndexStyleAppManager.share.loginUserMode.email, isNewPwd: false)
            PostPushManager.share.dataPwd(type: .EmailLogin, content: IndexStyleAppManager.share.loginUserMode.email, isNewPwd: false)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsUniversalVC: UITableViewDelegate, UITableViewDataSource {
extension IndexUniversalVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return DataSource.count
        return DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: switch type {
        switch type {
        //: case .Contact_information, .Notifications:
        case .Contact_information, .Notifications:
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: if DataSource[indexPath.row] == .Same_gendered {
            if DataSource[indexPath.row] == .Same_gendered {
                //: return actualHeight(h: 50)
                return actualHeight(h: 50)
                //: }else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: if IndexStyleAppManager.share.loginUserMode.sex == "2" {
                if IndexStyleAppManager.share.loginUserMode.sex == "2" {
                    //: return actualHeight(h: 89)
                    return actualHeight(h: 89)
                    //: } else {
                } else {
                    //: return actualHeight(h: 109)
                    return actualHeight(h: 109)
                }
                //: }  else if (DataSource[indexPath.row] == .Ranking ||  DataSource[indexPath.row] == .Automatic) {
            } else if DataSource[indexPath.row] == .Ranking || DataSource[indexPath.row] == .Automatic {
                //: return actualHeight(h: 92)
                return actualHeight(h: 92)
            }
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: switch self.type {
        switch self.type {
        //: case .Contact_information:
        case .Contact_information:
            //: let identifier = "TalkingSettingCell"
            let identifier = (String(str_imageTitle.prefix(6)) + "gSett" + String(str_visualTitle.suffix(7)))
            //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
            let cell: DeviceReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! DeviceReactiveCompatible

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.bean(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)

            //: if DataSource[indexPath.row] == SettingsUniversalType.Phone_Number {
            if DataSource[indexPath.row] == TypeVersionTitleTotalerpolation.Phone_Number {
                //: if IndexStyleAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 {
                if IndexStyleAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 {
                    //: cell.setCellDetails(detail: IndexStyleAppManager.share.loginUserMode.mobile ?? "")
                    cell.list(detail: IndexStyleAppManager.share.loginUserMode.mobile ?? "")
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: cell.titleBLB.textColor = .appTitleColor()
                cell.titleBLB.textColor = .appNameVisualProperty()
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.Email_Address {
            } else if DataSource[indexPath.row] == TypeVersionTitleTotalerpolation.Email_Address {
                //: if IndexStyleAppManager.share.loginUserMode.email.count > 0 {
                if IndexStyleAppManager.share.loginUserMode.email.count > 0 {
                    //: cell.setCellDetails(detail: IndexStyleAppManager.share.loginUserMode.email )
                    cell.list(detail: IndexStyleAppManager.share.loginUserMode.email)
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.SetPassword {
            } else if DataSource[indexPath.row] == TypeVersionTitleTotalerpolation.SetPassword {
                //: cell.editImag.isHidden = false
                cell.editImag.isHidden = false
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.DeleteA {
            } else if DataSource[indexPath.row] == TypeVersionTitleTotalerpolation.DeleteA {
                //: cell.editImag.isHidden = true
                cell.editImag.isHidden = true
                //: cell.titleBLB.textColor = UIColor.init(hex: "#FF2348")
                cell.titleBLB.textColor = UIColor(hex: "#FF2348")
            }

            //: return cell
            return cell

        //: case .Notifications, .Social_Preferences:
        case .Notifications, .Social_Preferences:
            //: let identifier = "TalkingSettingNotifCell"
            let identifier = (String(str_togetherData.prefix(4)) + "ingSe" + str_toText.replacingOccurrences(of: "content", with: "n") + String(str_redValue) + String(str_kitValueContent.prefix(8)))
            //: let cell: TalkingSettingNotifCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingNotifCell
            let cell: VanguardThen = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! VanguardThen

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.theory(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)
            //: if self.type == .Social_Preferences {
            if self.type == .Social_Preferences {
                //: cell.setCellDetails(detail: DetailSource[indexPath.row])
                cell.customer(detail: DetailSource[indexPath.row])
            }
            //: if DataSource[indexPath.row] == .Turnon_Notif {
            if DataSource[indexPath.row] == .Turnon_Notif {
                //: UNUserNotificationCenter.current().getNotificationSettings { settings in
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: let result = settings.authorizationStatus == .authorized
                        let result = settings.authorizationStatus == .authorized
                        //: cell.setCellNotif(isShow: result ? 1 : -1)
                        cell.vocalism(isShow: result ? 1 : -1)
                    }
                }
                //: } else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: cell.setCellNotif(isShow: self.settingModel.isCupid ?? 1)
                cell.vocalism(isShow: self.settingModel.isCupid ?? 1)
                //: } else if DataSource[indexPath.row] == .Ranking {
            } else if DataSource[indexPath.row] == .Ranking {
                //: cell.setCellNotif(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                cell.vocalism(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                //: } else if DataSource[indexPath.row] == .Same_gendered {
            } else if DataSource[indexPath.row] == .Same_gendered {
                //: cell.setCellNotif(isShow: self.settingModel.isSameGendered ?? -1)
                cell.vocalism(isShow: self.settingModel.isSameGendered ?? -1)
                //: } else if DataSource[indexPath.row] == .Automatic {
            } else if DataSource[indexPath.row] == .Automatic {
                //: cell.setCellNotif(isShow: self.settingModel.autoGreetAuth ?? -1)
                cell.vocalism(isShow: self.settingModel.autoGreetAuth ?? -1)
            }
            //: return cell
            return cell
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if self.type == .Contact_information {
        if self.type == .Contact_information {
            //: if DataSource[indexPath.row].rawValue == SettingsUniversalType.Phone_Number.rawValue {
            if DataSource[indexPath.row].rawValue == TypeVersionTitleTotalerpolation.Phone_Number.rawValue {
                //: let mobile = IndexStyleAppManager.share.loginUserMode.mobile ?? ""
                let mobile = IndexStyleAppManager.share.loginUserMode.mobile ?? ""
                //: if mobile.isEmptyString {
                if mobile.isEmptyString {
                    //: let vc = TalkingBindPhoneVC()
                    let vc = AutomaticallyReactiveCompatible()
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.Email_Address.rawValue {
            } else if DataSource[indexPath.row].rawValue == TypeVersionTitleTotalerpolation.Email_Address.rawValue {
                //: if IndexStyleAppManager.share.loginUserMode.email.count <= 0 {
                if IndexStyleAppManager.share.loginUserMode.email.count <= 0 {
                    //: let vc = TalkingLoginBindEmailVC()
                    let vc = ContextViewController()
                    //: vc.isBack = true
                    vc.isBack = true
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.DeleteA.rawValue {
            } else if DataSource[indexPath.row].rawValue == TypeVersionTitleTotalerpolation.DeleteA.rawValue {
                //: writeOff()
                away()
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.SetPassword.rawValue {
            } else if DataSource[indexPath.row].rawValue == TypeVersionTitleTotalerpolation.SetPassword.rawValue {
                //: let mobile = IndexStyleAppManager.share.loginUserMode.mobile ?? ""
                let mobile = IndexStyleAppManager.share.loginUserMode.mobile ?? ""
                //: let email = IndexStyleAppManager.share.loginUserMode.email
                let email = IndexStyleAppManager.share.loginUserMode.email
                //: if !mobile.isEmpty, !email.isEmpty {
                if !mobile.isEmpty, !email.isEmpty { // 手机号和邮箱都存在
                    //: let vc = TalkingMunuPopView(frame: self.view.frame)
                    let vc = ValueLabelReactiveCompatible(frame: self.view.frame)
                    //: vc.title = "To set up a password, you need to verify the account, choose your verification method".localized
                    vc.title = String(bytes: str_fieldData.map{imageRoom(center: $0)}, encoding: .utf8)!.localized
                    //: vc.titleFont = UIFont.exceptEqual(fontSize: 12)
                    vc.titleFont = UIFont.exceptEqual(fontSize: 12)
                    //: vc.titleColor = UIColor.appValueDetailColor()
                    vc.titleColor = UIColor.bringHomeColor()
                    //: vc.cellTitleFont = UIFont.little(fontSize: 16)
                    vc.cellTitleFont = UIFont.little(fontSize: 16)
                    //: vc.hasCancel = false
                    vc.hasCancel = false
                    //: vc.initwithList(cellTitleList: ["Verified by Phone".localized, "Verified by Email".localized])
                    vc.sizeTitle(cellTitleList: [(String(str_voiceText.suffix(6)) + "ed by " + String(str_intimateValue.suffix(5))).localized, (String(str_upName.prefix(7)) + String(str_paraData.suffix(5)) + "Email").localized])
                    //: vc.munuBlock = { [weak self] index, str in
                    vc.munuBlock = { [weak self] index, _ in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if index == 0 {
                        if index == 0 {
                            //: self.req_sendModifyPwdSms()
                            self.quitsTitle()
                            //: } else if index == 1 {
                        } else if index == 1 {
                            //: self.req_sendModifyPwdEmail()
                            self.executeOf()
                        }
                    }

                    //: } else if !mobile.isEmpty {
                } else if !mobile.isEmpty {
                    //: req_sendModifyPwdSms()
                    quitsTitle()

                    //: } else if !email.isEmpty {
                } else if !email.isEmpty {
                    //: req_sendModifyPwdEmail()
                    executeOf()
                }
            }
        }
    }
}

//: extension TalkingSettingsUniversalVC {
extension IndexUniversalVc {
    /// 注销
    //: private func writeOff() {
    private func away() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard KeyPermissionTool.militaryPost() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard JewishCalendarMonthThen.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.noblesseExtra(showMsg: consLet_viewData)
            //: return
            return
        }

        //: var seconds = 15
        var seconds = 15
        //: let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        //: timer.schedule(deadline: .now(), repeating: 1.0)
        timer.schedule(deadline: .now(), repeating: 1.0)

        //: let str = "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? ".localized
        let str = String(bytes: str_sizeData.reversed(), encoding: .utf8)!.localized

        //: let range =  str.exMatchStrRange("UNRECOVERABLE")
        let range = str.exMatchStrRange((str_bottomText.replacingOccurrences(of: "title", with: "O") + str_layerData.replacingOccurrences(of: "log", with: "ER")))

        //: let string = NSMutableAttributedString.init(string: str )
        let string = NSMutableAttributedString(string: str)
        //: if range.count > 0 {
        if range.count > 0 {
            //: string.addAttribute(.foregroundColor, value: UIColor.msgTipsColor(), range: range.first!)
            string.addAttribute(.foregroundColor, value: UIColor.everyUser(), range: range.first!)
        }
        //: TalkingAlertShow.attribAlert(title: "Delete Account".localized, attributedMessage: string, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
        EqualAlertShow.sizeJumpBlock(title: (String(str_currentName) + str_contentValue.lowercased()).localized, attributedMessage: string, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: timer.cancel()
            timer.cancel()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()

            //: self.LockAccount()
            self.bolt()
        }

        //: timer.setEventHandler {
        timer.setEventHandler {
            //: seconds -= 1
            seconds -= 1
            //: if seconds <= 0 {
            if seconds <= 0 {
                //: timer.cancel()
                timer.cancel()
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized, isTouch: true)
                EqualAlertShow.shimmer(title: "Delete".localized, isTouch: true)
                //: } else {
            } else {
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized + " (\(seconds)s)", isTouch: false)
                EqualAlertShow.shimmer(title: "Delete".localized + " (\(seconds)s)", isTouch: false)
            }
        }
        //: timer.resume()
        timer.resume()
    }

    //: private func LockAccount() {
    private func bolt() {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        KeyReactiveCompatible.place(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.tick()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.scaleMsg(showMsg: (String(str_animaName.suffix(6)) + " succ" + String(str_pathData.prefix(6))).localized)
            }
        }
    }

    //: private func logoutTool() {
    private func tick() {
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
}

// MARK: - UI

//: extension TalkingSettingsUniversalVC {
extension IndexUniversalVc {
    //: private func designView() {
    private func barMagnitudeimate() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(DeviceReactiveCompatible.self, forCellReuseIdentifier: (String(str_imageTitle.prefix(6)) + "gSett" + String(str_visualTitle.suffix(7))))
        //: MainTable.register(TalkingSettingNotifCell.self, forCellReuseIdentifier: "TalkingSettingNotifCell")
        MainTable.register(VanguardThen.self, forCellReuseIdentifier: (String(str_togetherData.prefix(4)) + "ingSe" + str_toText.replacingOccurrences(of: "content", with: "n") + String(str_redValue) + String(str_kitValueContent.prefix(8))))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
