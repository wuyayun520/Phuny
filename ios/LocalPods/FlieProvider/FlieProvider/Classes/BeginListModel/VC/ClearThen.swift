
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_callValue:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

/*: "There's no posts yet." :*/
fileprivate let str_dateName:String = "Thereimage coordinate quote player false"
fileprivate let str_lightEqualName:String = "makeosts"
fileprivate let str_indexValue:[Character] = [" ","y","e","t","."]

/*: "uid" :*/
fileprivate let str_withWrapValue:String = "uivideo"

/*: "page" :*/
fileprivate let str_whoQueryedData:String = "PAGE"

/*: "list" :*/
fileprivate let str_propertyValue:String = "lisbackground"

/*: "nickname" :*/
fileprivate let str_toTitle:[Character] = ["n","i","c","k","n","a"]
fileprivate let str_lowValue:String = "bar"

/*: "age" :*/
fileprivate let str_matchName:[Character] = ["a","g","e"]

/*: "sex" :*/
fileprivate let str_makeDataContent:String = "startx"

/*: "isTPAuth" :*/
fileprivate let str_withContent:String = "isTPAutable area return height"
fileprivate let str_infoLoadName:[Character] = ["t","h"]

/*: "headPic" :*/
fileprivate let str_closeText:[Character] = ["h","e"]
fileprivate let str_whiteValue:[Character] = ["a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let str_groupErrorValue:[Character] = ["p","i","n","C","o","u","n","t"]

/*: "model" :*/
fileprivate let str_aspectName:String = "mmapdel"

/*: "Unpin from profile" :*/
fileprivate let str_userEqualText:String = "manager else let var inUnpin"
fileprivate let str_giftFileData:String = "lab image profil"
fileprivate let str_fillName:[Character] = ["e"]

/*: "Delete Post" :*/
fileprivate let str_titleName:String = "make self party back varDelet"
fileprivate let str_actionTitle:String = "e Postkit image class shared"

/*: "Pin to profile" :*/
fileprivate let str_topText:String = "Pin to time data"
fileprivate let str_makeTitle:String = "titleofile"

/*: "id" :*/
fileprivate let str_regularValue:String = "message"

/*: "momentId" :*/
fileprivate let str_streamData:[Character] = ["m","o","m","e","n","t","I","d"]

/*: "status" :*/
fileprivate let str_infoTitle:String = "STATUS"

/*: "Your post has been pinned" :*/
fileprivate let str_buttonUseValue:String = "make to let stringYour p"
fileprivate let str_clickValue:String = "has model like year as"
fileprivate let str_finishData:String = "cell err return alongbeen "

/*: "Your post has been Unpinned" :*/
fileprivate let str_levelTitle:[Character] = ["Y","o","u","r"," ","p","o","s","t"," ","h","a","s"," "]
fileprivate let str_contentPushValue:String = "been Unpadd var else"
fileprivate let str_collectionTitle:String = "ofnned"

/*: "SendThen" :*/
fileprivate let str_lineData:[Character] = ["T","a","l","k","i","n","g","M","o","m","e","n","t","I","t"]
fileprivate let str_equalStyleData:String = "emCellcall value"

/*: "Posts" :*/
fileprivate let str_listTitle:String = "Postsrange stop equal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class ClearThen: ServiceRecognizerDelegate {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [TextTransformable] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_callValue.map{$0^50}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        mentalRepresentation()
        //: setupSubViewsConstraint()
        buttonConstraint()
        //: bindInteraction()
        reciprocation()
        //: reqData()
        closeTogether()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = HalfEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(str_dateName.prefix(5)) + "\'s no " + str_lightEqualName.replacingOccurrences(of: "make", with: "p") + String(str_indexValue))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension ClearThen {
    //: func reqData() {
    func closeTogether() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict["uid"] = uid
        //: dict["page"] = pageIndex
        dict["page"] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        GiftStoreReactiveCompatible.onEqual(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.birth()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict["list"] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [TextTransformable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<TextTransformable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(String(str_toTitle) + str_lowValue.replacingOccurrences(of: "bar", with: "me"))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict["age"] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict["sex"] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict["uid"] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(str_withContent.prefix(6)) + String(str_infoLoadName))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict["headPic"] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(str_groupErrorValue))] as! Int
                        //: model.caculateItemHeight()
                        model.noneEqual()
                        //: if model.uid == IndexStyleAppManager.share.loginUserMode.userID {
                        if model.uid == IndexStyleAppManager.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.noblesseExtra(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension ClearThen {
    //: func headerRefresh() {
    func anHeader() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        closeTogether()
    }

    //: func footerRefresh() {
    func submit() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        closeTogether()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func thinkOf(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: TextTransformable = userinfo["model"] as! TextTransformable
        //: if model.uid == IndexStyleAppManager.share.loginUserMode.userID {
        if model.uid == IndexStyleAppManager.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func dropWithoutCalendar(model: TextTransformable, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = ValueLabelReactiveCompatible(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.sizeTitle(cellTitleList: [(String(str_userEqualText.suffix(5)) + " from" + String(str_giftFileData.suffix(7)) + String(str_fillName)).localized, (String(str_titleName.suffix(5)) + String(str_actionTitle.prefix(6))).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.sizeTitle(cellTitleList: [(String(str_topText.prefix(7)) + str_makeTitle.replacingOccurrences(of: "title", with: "pr")).localized, (String(str_titleName.suffix(5)) + String(str_actionTitle.prefix(6))).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.sizeTitle(cellTitleList: [(String(str_userEqualText.suffix(5)) + " from" + String(str_giftFileData.suffix(7)) + String(str_fillName)).localized, (String(str_titleName.suffix(5)) + String(str_actionTitle.prefix(6))).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.sizeTitle(cellTitleList: [(String(str_titleName.suffix(5)) + String(str_actionTitle.prefix(6))).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(str_userEqualText.suffix(5)) + " from" + String(str_giftFileData.suffix(7)) + String(str_fillName)).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.mModel(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(str_topText.prefix(7)) + str_makeTitle.replacingOccurrences(of: "title", with: "pr")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.mModel(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(str_titleName.suffix(5)) + String(str_actionTitle.prefix(6))).localized {
                //: ProgressHUD.show()
                DeviceFailThen.callMake()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                GiftStoreReactiveCompatible.toAGreaterExtentRequest(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    DeviceFailThen.theAdd()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.noblesseExtra(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func mModel(isTop: Int, model: TextTransformable) {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(str_streamData))] = model.mid
        //: dict["status"] = isTop
        dict["status"] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        GiftStoreReactiveCompatible.catalogue(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.scaleMsg(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.noblesseExtra(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension ClearThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(str_lineData) + String(str_equalStyleData.prefix(6)))
        //: var cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        var cell = SendThen(style: .default, reuseIdentifier: identifier, isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: TextTransformable = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.area(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.dropWithoutCalendar(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = DetailMakeViewDelegate(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension ClearThen {
    // 添加视图
    //: private func setupSubviews() {
    private func mentalRepresentation() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: self.title = "Posts".localized
        self.title = "Posts".localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(SendThen.self, forCellReuseIdentifier: (String(str_lineData) + String(str_equalStyleData.prefix(6))))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func buttonConstraint() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func reciprocation() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.pastObject { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.anHeader()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.randomKey { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.submit()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(thinkOf(notification:)), name: consLet_showText, object: nil)
    }
}
