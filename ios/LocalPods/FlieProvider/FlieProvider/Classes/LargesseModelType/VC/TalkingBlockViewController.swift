
//: Declare String Begin

/*: "Wallet" :*/
fileprivate let str_giftName:String = "color logWallet"

/*: "0 Private photos" :*/
fileprivate let str_viewValue:String = "model match up self go0 Privat"
fileprivate let str_partyValue:[Character] = ["e"," ","p","h","o","t","o","s"]

/*: "0 Private videos" :*/
fileprivate let str_actionValue:[Character] = ["0"," ","P","r","i","v","a","t","e"," "]
fileprivate let str_touchName:String = "vidlists"

/*: "0 min voice calls" :*/
fileprivate let str_objectText:[Character] = ["0"," ","m","i","n"," "]
fileprivate let str_contentValue:[Character] = ["v","o","i","c","e"," ","c","a","l","l","s"]

/*: "0 min video calls" :*/
fileprivate let str_modelCoinTitle:[Character] = ["0"," "]
fileprivate let str_hiddenClickValue:[Character] = ["m","i","n"," ","v","i","d","e","o"," ","c","a","l","l","s"]

/*: "me_private_photos_num" :*/
fileprivate let str_imageTitle:[Character] = ["m","e","_","p","r","i","v","a","t","e","_","p","h"]
fileprivate let str_leadingText:[Character] = ["o","t","o","s","_","n","u","m"]

/*: "me_private_video_num" :*/
fileprivate let str_imageValue:String = "player color user return inme_pri"
fileprivate let str_dataPathEffectValue:[Character] = ["v","a","t","e","_","v","i","d"]
fileprivate let str_mainValue:[Character] = ["e","o","_","n","u","m"]

/*: "me_min_voice_call" :*/
fileprivate let str_indicatorTitle:String = "me_miself collection leading"
fileprivate let str_equalName:[Character] = ["n","_","v","o","i"]
fileprivate let str_ofText:String = "element key error size stringce_call"

/*: "me_min_video_call" :*/
fileprivate let str_actualShareName:String = "me_mihost to of height if"
fileprivate let str_modelViewName:String = "as to video sex typeeo_ca"
fileprivate let str_selectedValue:[Character] = ["l","l"]

/*: "&type=1" :*/
fileprivate let str_postToText:String = "&type=1let area table"

/*: "&type=2" :*/
fileprivate let str_withValue:[Character] = ["&","t","y","p","e","=","2"]

/*: "&type=4" :*/
fileprivate let str_keyName:String = "add return empty left equal&type=4"

/*: "&type=3" :*/
fileprivate let str_titleName:String = "&typeself try add bar"
fileprivate let str_popularValue:[Character] = ["=","3"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingBlockViewController.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/3/24.
//

//: import UIKit
import UIKit

//: class TalkingWalletViewController: TalkingBaseViewController {
class TalkingBlockViewController: ServiceRecognizerDelegate {
    //: private var section1Data = [(String, String)]()
    private var section1Data = [(String, String)]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Wallet"
        self.title = "Wallet"
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: loadResidualInfoData()
        endData()
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(loadResidualInfoData),
                                               selector: #selector(endData),
                                               //: name: USER_UPDATE_RESIDUALINFO_NOTIFICATION,
                                               name: consLet_timeKeyValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
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
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(ClearFailViewCell.self, forCellReuseIdentifier: ClearFailViewCell.className())
        //: table.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        table.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
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
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingWalletViewController {
extension TalkingBlockViewController {
    /// 加载数据
    //: @objc private func loadResidualInfoData() {
    @objc private func endData() {
        //: TalkingUserRequestManager.func__reqResidualInfo() { succeed, result, errorModel in
        HiddenRequestManager.yesterday { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: var str1 = "0 Private photos"
            var str1 = (String(str_viewValue.suffix(8)) + String(str_partyValue))
            //: var str2 = "0 Private videos"
            var str2 = (String(str_actionValue) + str_touchName.replacingOccurrences(of: "list", with: "eo"))
            //: var str3 = "0 min voice calls"
            var str3 = (String(str_objectText) + String(str_contentValue))
            //: var str4 = "0 min video calls"
            var str4 = (String(str_modelCoinTitle) + String(str_hiddenClickValue))

            //: if let datas = Array<ResidualInfoModel>.deserialize(from: result as? Array) {
            if let datas = Array<WhiteMeasurable>.deserialize(from: result as? Array) {
                //: datas.forEach { model in
                for model in datas {
                    //: if model?.type == 1 {
                    if model?.type == 1 { // 私密照片
                        //: str1 = str1.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str1 = str1.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 2 {
                    } else if model?.type == 2 { // 私密视频
                        //: str2 = str2.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str2 = str2.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 4 {
                    } else if model?.type == 4 { // 音频包
                        //: str3 = str3.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str3 = str3.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 3 {
                    } else if model?.type == 3 { // 视频频包
                        //: str4 = str4.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str4 = str4.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                    }
                }
            }

            //: self.section1Data = [(str1, "me_private_photos_num"),
            self.section1Data = [(str1, (String(str_imageTitle) + String(str_leadingText))),
                                 //: (str2, "me_private_video_num"),
                                 (str2, (String(str_imageValue.suffix(6)) + String(str_dataPathEffectValue) + String(str_mainValue))),
                                 //: (str3, "me_min_voice_call"),
                                 (str3, (String(str_indicatorTitle.prefix(5)) + String(str_equalName) + String(str_ofText.suffix(7)))),
                                 //: (str4, "me_min_video_call")]
                                 (str4, (String(str_actualShareName.prefix(5)) + "n_vid" + String(str_modelViewName.suffix(5)) + String(str_selectedValue)))]
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingWalletViewController: UITableViewDelegate, UITableViewDataSource {
extension TalkingBlockViewController: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return section1Data.count
        return section1Data.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ClearFailViewCell.className(), for: indexPath) as! ClearFailViewCell
        //: let data = self.section1Data[indexPath.row]
        let data = self.section1Data[indexPath.row]
        //: let isLast = self.section1Data.count == (indexPath.row + 1)
        let isLast = self.section1Data.count == (indexPath.row + 1)
        //: cell.setViewData(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
        cell.occurrence(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
        //: cell.setpurchaseBtn()
        cell.changeBtn()
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
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
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: PostPushManager.share.func__pushToRechargeAlert(appendParams: "&type=1")
            PostPushManager.share.everyReason(appendParams: "&type=1")
            //: } else if indexPath.row == 1 {
        } else if indexPath.row == 1 {
            //: PostPushManager.share.func__pushToRechargeAlert(appendParams: "&type=2")
            PostPushManager.share.everyReason(appendParams: "&type=2")
            //: } else if indexPath.row == 2 {
        } else if indexPath.row == 2 {
            //: PostPushManager.share.func__pushToRechargeAlert(appendParams: "&type=4")
            PostPushManager.share.everyReason(appendParams: "&type=4")
            //: } else if indexPath.row == 3 {
        } else if indexPath.row == 3 {
            //: PostPushManager.share.func__pushToRechargeAlert(appendParams: "&type=3")
            PostPushManager.share.everyReason(appendParams: "&type=3")
        }
    }
}
