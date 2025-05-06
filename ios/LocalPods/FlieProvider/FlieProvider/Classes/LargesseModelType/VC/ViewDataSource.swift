
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dateValue:[UInt8] = [0x46,0x41,0x46,0x5b,0x7,0x4c,0x40,0x4b,0x4a,0x5d,0x15,0x6,0xf,0x47,0x4e,0x5c,0xf,0x41,0x40,0x5b,0xf,0x4d,0x4a,0x4a,0x41,0xf,0x46,0x42,0x5f,0x43,0x4a,0x42,0x4a,0x41,0x5b,0x4a,0x4b]

/*: "Greeting Message Settings" :*/
fileprivate let str_firstValue:String = "Greetext item make launch"
fileprivate let str_burnName:String = "Messagcontent max to"
fileprivate let str_indexContent:String = "first label let selfe Set"

/*: "PrizeThen" :*/
fileprivate let str_rawValue:String = "image user stream make withTalk"
fileprivate let str_domainName:String = "etmake"
fileprivate let str_labContent:String = "height make transform value anyableCell"

/*: "Voice greeting" :*/
fileprivate let str_imageMyTitle:String = "show tap mode message equalVoice"
fileprivate let str_playerUserData:String = "elabeling"

/*: "icon_me_greet_vioce" :*/
fileprivate let str_voiceValueName:String = "framecon"
fileprivate let str_makeTitle:[Character] = ["e","e","t","_","v","i","o","c","e"]

/*: "Text greeting" :*/
fileprivate let str_endData:[Character] = ["T","e","x","t"," ","g","r"]
fileprivate let str_recordStateValue:String = "eetinequal"

/*: "icon_me_greet_text" :*/
fileprivate let str_viewText:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let str_makeData:String = "gnameet"
fileprivate let str_lineValue:String = "_textin value gift image value"

/*: "Photo greeting" :*/
fileprivate let str_needCenterAboveName:[Character] = ["P","h","o","t","o"," ","g","r","e","e","t","i","n"]
fileprivate let str_feeName:[Character] = ["g"]

/*: "icon_me_greet_photo" :*/
fileprivate let str_giftValue:[Character] = ["i","c","o","n","_","m","e","_","g","r","e","e","t","_","p","h"]
fileprivate let str_totalModelData:[Character] = ["o","t","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class ViewDataSource: ServiceRecognizerDelegate {
    //: var settingModel = TalkingSettingModel()
    var settingModel = PtolemaicSystemHandyJSON()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dateValue.map{$0^47}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        extractWithinInformation()
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
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(str_firstValue.prefix(4)) + "ting " + String(str_burnName.prefix(6)) + String(str_indexContent.suffix(5)) + "tings").localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: setupSubviews()
        coverSubviews()
        //: setupSubViewsConstraint()
        pop()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName - consLet_clickReplaceName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: "TalkingGreetingSetTableCell")
        table.register(PrizeThen.self, forCellReuseIdentifier: (String(str_rawValue.suffix(4)) + "ingGre" + str_domainName.replacingOccurrences(of: "make", with: "in") + "gSetT" + String(str_labContent.suffix(8))))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension ViewDataSource {
    //: func getSettingData() {
    func extractWithinInformation() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        KeyReactiveCompatible.workroomModel(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<PtolemaicSystemHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension ViewDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingGreetingSetTableCell"
        let identifier = (String(str_rawValue.suffix(4)) + "ingGre" + str_domainName.replacingOccurrences(of: "make", with: "in") + "gSetT" + String(str_labContent.suffix(8)))
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetingSetTableCell
        let cell: PrizeThen = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! PrizeThen

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.calculate(titile: (String(str_imageMyTitle.suffix(5)) + " gre" + str_playerUserData.replacingOccurrences(of: "label", with: "t")).localized, iconStr: (str_voiceValueName.replacingOccurrences(of: "frame", with: "i") + "_me_gr" + String(str_makeTitle)), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.calculate(titile: (String(str_endData) + str_recordStateValue.replacingOccurrences(of: "equal", with: "g")).localized, iconStr: (String(str_viewText) + str_makeData.replacingOccurrences(of: "name", with: "re") + String(str_lineValue.prefix(5))), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.calculate(titile: (String(str_needCenterAboveName) + String(str_feeName)).localized, iconStr: (String(str_giftValue) + String(str_totalModelData)), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = VersionAudioVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = NameModelGreetViewDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = CeremonyViewDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension ViewDataSource {
    //: private func setupSubviews() {
    private func coverSubviews() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func pop() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
