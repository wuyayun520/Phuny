
//: Declare String Begin

/*: "Follow" :*/
fileprivate let str_colorInfoTitle:String = "Followequal image color for model"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_willText:[UInt8] = [0x51,0x6c,0x75,0x3f,0x25,0x46,0x64,0x6b,0x22,0x71,0x25,0x60,0x64,0x77,0x6b,0x25,0x75,0x6a,0x6c,0x6b,0x71,0x76,0x25,0x6c,0x63,0x25,0x7c,0x6a,0x70,0x25,0x63,0x6a,0x69,0x69,0x6a,0x72,0x25,0x60,0x64,0x66,0x6d,0x25,0x6a,0x71,0x6d,0x60,0x77,0x7b]

/*: "Tip:\"Favorite each other\" chat will be free" :*/
fileprivate let str_logEnableTitle:[UInt8] = [0xee,0xd3,0xca,0x80,0x98,0xfc,0xdb,0xcc,0xd5,0xc8,0xd3,0xce,0xdf,0x9a,0xdf,0xdb,0xd9,0xd2,0x9a,0xd5,0xce,0xd2,0xdf,0xc8,0x98,0x9a,0xd9,0xd2,0xdb,0xce,0x9a,0xcd,0xd3,0xd6,0xd6,0x9a,0xd8,0xdf,0x9a,0xdc,0xc8,0xdf,0xdf]

/*: "targetUid" :*/
fileprivate let str_appNameValue:String = "shadowarg"

/*: "type" :*/
fileprivate let str_photoData:[Character] = ["t","y","p","e"]

/*: "attentionType" :*/
fileprivate let str_loadName:String = "atargeten"
fileprivate let str_labData:String = "room error appearType"

/*: "limit" :*/
fileprivate let str_reportValue:String = "libackt"

/*: "20" :*/
fileprivate let str_theData:[Character] = ["2","0"]

/*: "page" :*/
fileprivate let str_contextText:String = "pagshare"

/*: "BriquetView" :*/
fileprivate let str_toolText:String = "Talkelse self user"
fileprivate let str_startTextName:String = "TTEN"
fileprivate let str_theoryValue:String = "eonon"

/*: "You've got no favourite yet." :*/
fileprivate let str_retData:String = "You\'v"
fileprivate let str_popContent:String = "no favouscript now type image"
fileprivate let str_photoTitle:String = "RIT"
fileprivate let str_byText:String = "let image let yeare yet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WhiteAttentionVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: import JXPagingView
import JXPagingView

//: class TalkingAttentionVC: TalkingBaseViewController {
class WhiteAttentionVc: ServiceRecognizerDelegate {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [StartAttentionModel] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = "Follow".localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        atView()
        //: reqData()
        nickname()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.pastObject { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.targetValue()
        }
        //: table.addFooterRefresh { [weak self] in
        table.randomKey { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.countimate()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 15)
        label.font = .loadEnable(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.labelSumervalMedium()
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: str_willText.map{$0^5}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = String(bytes: str_logEnableTitle.map{$0^186}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension WhiteAttentionVc {
    //: func reqData() {
    func nickname() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = IndexStyleAppManager.share.loginUserMode.userID
        dict[(str_appNameValue.replacingOccurrences(of: "shadow", with: "t") + "etUid")] = IndexStyleAppManager.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict["type"] = "1"
        //: dict["attentionType"] = "1"
        dict[(str_loadName.replacingOccurrences(of: "target", with: "tt") + "tion" + String(str_labData.suffix(4)))] = "1"
        //: dict["limit"] = "20"
        dict["limit"] = "20"
        //: dict["page"] = String(pageIndex)
        dict["page"] = String(pageIndex)

        //: TalkingChatRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        ChatMakeReactiveCompatible.clickText(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.birth()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [StartAttentionModel] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<StartAttentionModel>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [StartAttentionModel])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func targetValue() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        nickname()
    }

    //: func footerRefresh() {
    func countimate() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        nickname()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension WhiteAttentionVc: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension WhiteAttentionVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingAttentionCell"
        let identifier = (String(str_toolText.prefix(4)) + "ingA" + str_startTextName.lowercased() + "tionC" + str_theoryValue.replacingOccurrences(of: "on", with: "l"))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? BriquetView
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = BriquetView(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: StartAttentionModel = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.loadAtype(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - LabelShowAttentionDelegate

//: extension TalkingAttentionVC: AttentionDelegate {
extension WhiteAttentionVc: LabelShowAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func warningFile(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func untilObject(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension WhiteAttentionVc {
    //: private func designView() {
    private func atView() {
        //: var style = EmptyStyle()
        var style = HalfEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (str_retData + "e got " + String(str_popContent.prefix(8)) + str_photoTitle.lowercased() + String(str_byText.suffix(6))).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(consLet_keyData ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = IndexStyleAppManager.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = IndexStyleAppManager.share.appStatus != FailHashable.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: "TalkingAttentionCell")
        MainTable.register(BriquetView.self, forCellReuseIdentifier: (String(str_toolText.prefix(4)) + "ingA" + str_startTextName.lowercased() + "tionC" + str_theoryValue.replacingOccurrences(of: "on", with: "l")))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
