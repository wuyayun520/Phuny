
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let str_interestValue:String = "moment inBeau"
fileprivate let str_signTitle:String = "Settielse let self"
fileprivate let str_giftTitle:[Character] = ["n","g","s"]

/*: "icon_me_videoSet_beauty" :*/
fileprivate let str_lessCellTitle:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S"]
fileprivate let str_yetModelIndexName:[Character] = ["e"]
fileprivate let str_barLiveTitle:String = "index model maket_beauty"

/*: "Video Settings" :*/
fileprivate let str_popData:String = "Videomake for to content model"
fileprivate let str_frameData:String = "errorings"

/*: "TalkingSettingReceiveVideoCellId" :*/
fileprivate let str_thanExtraTrueValue:[UInt8] = [0x19,0x2c,0x21,0x26,0x24,0x23,0x2a,0x1e,0x28,0x39,0x39,0x24,0x23,0x2a,0x1f,0x28,0x2e,0x28,0x24,0x3b,0x28,0x1b,0x24,0x29,0x28,0x22,0xe,0x28,0x21,0x21,0x4,0x29]

private func cornerEqual(need num: UInt8) -> UInt8 {
    return num ^ 77
}

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_addData:[UInt8] = [0xee,0xc5,0xdf,0xce,0xd9,0x8b,0x89,0xf8,0xce,0xdf,0xdf,0xc2,0xc5,0xcc,0xd8,0x89,0x8b,0xca,0xc5,0xcf,0x8b,0xc4,0xdb,0xce,0xc5,0x8b,0x89,0xe8,0xca,0xc6,0xce,0xd9,0xca,0x89,0x8b,0xdb,0xce,0xd9,0xc6,0xc2,0xd8,0xd8,0xc2,0xc4,0xc5,0x8b,0xdf,0xc4,0x8b,0xde,0xd8,0xce,0x8b,0xdf,0xc3,0xc2,0xd8,0x8b,0xcd,0xde,0xc5,0xc8,0xdf,0xc2,0xc4,0xc5,0x8b,0xc5,0xc4,0xd9,0xc6,0xca,0xc7,0xc7,0xd2]

private func extraLet(file num: UInt8) -> UInt8 {
    return num ^ 171
}

/*: "Cancel" :*/
fileprivate let str_viewValue:String = "lab color modelCancel"

/*: "Settings" :*/
fileprivate let str_indicatorValue:String = "profile type equalSett"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let str_videoData:[UInt8] = [0xdb,0xfe,0xf9,0xfb,0xe7,0xee,0xab,0xe6,0xee,0xea,0xe5,0xf8,0xab,0xff,0xfe,0xf9,0xe5,0xab,0xe4,0xe5,0xab,0xff,0xe3,0xee,0xab,0xe8,0xea,0xe7,0xe7,0xab,0xe2,0xe5,0xfd,0xe2,0xff,0xea,0xff,0xe2,0xe4,0xe5,0xa7,0xab,0xec,0xf9,0xee,0xf2,0xab,0xe6,0xee,0xea,0xe5,0xf8,0xab,0xff,0xfe,0xf9,0xe5,0xab,0xe4,0xed,0xed,0xab,0xff,0xe3,0xee,0xab,0xe8,0xea,0xe7,0xe7,0xab,0xe2,0xe5,0xfd,0xe2,0xff,0xea,0xff,0xe2,0xe4,0xe5,0xa5]

private func frameworkData(choice num: UInt8) -> UInt8 {
    return num ^ 139
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TelevisionEqualThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class TelevisionEqualThen: ServiceRecognizerDelegate {
    // MARK: - life cycle

    private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: self.title = "Video Settings".localized
        self.title = (String(str_popData.prefix(5)) + " Set" + str_frameData.replacingOccurrences(of: "error", with: "t")).localized
        //: self.setupSubviews()
        self.notIntervalimate()
        //: self.setupSubViewsConstraint()
        self.fence()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.primaryColorBarContent()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: "TalkingSettingReceiveVideoCellId")
        table.register(RoomViewCell.self, forCellReuseIdentifier: String(bytes: str_thanExtraTrueValue.map{cornerEqual(need: $0)}, encoding: .utf8)!)
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

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension TelevisionEqualThen {
    //: func judgeCameraAuthorization() {
    func request() {
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
                EqualAlertShow.showConfig(title: nil, message: String(bytes: str_addData.map{extraLet(file: $0)}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: (String(str_indicatorValue.suffix(4)) + "ings").localized) {
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
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension TelevisionEqualThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && consLet_matchData {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: "TalkingSettingReceiveVideoCellId", for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: RoomViewCell = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_thanExtraTrueValue.map{cornerEqual(need: $0)}, encoding: .utf8)!, for: indexPath) as! RoomViewCell
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.equalOf(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.equalOf(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.equalOf(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && consLet_matchData else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = PostReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.viewIcon(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.purviewHidden(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && consLet_matchData {
                //: self.judgeCameraAuthorization()
                self.request()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.primaryColorBarContent()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.exceptEqual(fontSize: 14)
        title.font = UIFont.exceptEqual(fontSize: 14)
        //: title.textColor = UIColor.appValueDetailColor()
        title.textColor = UIColor.bringHomeColor()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: str_videoData.map{frameworkData(choice: $0)}, encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension TelevisionEqualThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func notIntervalimate() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fence() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
