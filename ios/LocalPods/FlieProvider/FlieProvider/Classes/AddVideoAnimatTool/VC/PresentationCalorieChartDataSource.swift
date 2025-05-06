
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_atAppCallName:[UInt8] = [0x35,0x32,0x35,0x28,0x74,0x3f,0x33,0x38,0x39,0x2e,0x66,0x75,0x7c,0x34,0x3d,0x2f,0x7c,0x32,0x33,0x28,0x7c,0x3e,0x39,0x39,0x32,0x7c,0x35,0x31,0x2c,0x30,0x39,0x31,0x39,0x32,0x28,0x39,0x38]

/*: "You've got no message yet." :*/
fileprivate let str_visualTableText:String = "You\'"
fileprivate let str_standardData:String = " no self data label make let"
fileprivate let str_modeValue:String = "mviewssa"

/*: "icon_kong_kong_default" :*/
fileprivate let str_micText:String = "emptyo"
fileprivate let str_aspectName:String = "n_koncell back"
fileprivate let str_directionValue:String = "g_defdata pic case"

/*: "Cancel" :*/
fileprivate let str_columnValue:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_cellData:String = "fillK"

/*: "uid" :*/
fileprivate let str_colorName:[UInt8] = [0x30,0x2c,0x21]

/*: "btn_message_report_nor" :*/
fileprivate let str_toValue:[Character] = ["b","t","n","_","m"]
fileprivate let str_midName:String = "eexecute"
fileprivate let str_primaryAppValue:[Character] = ["a","g","e","_","r","e","p","o","r","t","_","n","o","r"]

/*: "#FF935D" :*/
fileprivate let str_fileData:String = "equal call image self regular#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let str_barValue:String = "btn_please sex"
fileprivate let str_iconData:[Character] = ["_","b","l","o","c"]
fileprivate let str_positionValue:String = "let statusk_nor"

/*: "#C179F9" :*/
fileprivate let str_timeTitle:String = "up"
fileprivate let str_sizeEqualData:[Character] = ["C","1","7","9","F","9"]

/*: "btn_message_untop_nor" :*/
fileprivate let str_topData:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x70,0x6f,0x74,0x6e,0x75,0x5f,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x5f,0x6e,0x74,0x62]

/*: "btn_message_top_nor" :*/
fileprivate let str_countValue:String = "btn_mvar video"
fileprivate let str_indexContent:String = "record name screenge_top_n"
fileprivate let str_nameMakeData:[Character] = ["o","r"]

/*: "#8A79F9" :*/
fileprivate let str_currentErrorData:[Character] = ["#","8","A","7","9","F","9"]

/*: "btn_message_delete_nor" :*/
fileprivate let str_maxPriceValue:String = "all selectedbtn_m"
fileprivate let str_sizeValue:String = "add time sub_del"
fileprivate let str_equalName:String = "E"
fileprivate let str_insideData:[Character] = ["t","e","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let str_shName:String = "#FF506Dcut index event title"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentationCalorieChartDataSource.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingChatListViewController: TalkingBaseViewController {
class PresentationCalorieChartDataSource: ServiceRecognizerDelegate {
    //: var iLikeBlock: ((_ isShow: Bool) -> ())?
    var iLikeBlock: ((_ isShow: Bool) -> Void)?
    //: private var canLoadMore = false
    private var canLoadMore = false // 是否可以加载更多数据
    //: private var curType = ChatListTopItemType.All
    private var curType = UserMakeColumnConvertible.All

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_atAppCallName.map{$0^92}, encoding: .utf8)!)
    }

    //: init(isHalfView: Bool = false) {
    init(isHalfView: Bool = false) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.manager.isHalf = isHalfView
        self.manager.isHalf = isHalfView
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: HiddenConversationListener.shared.func__refreshSysMsg()
        HiddenConversationListener.shared.tradeNameRoom()
        // 公共聊天室
        //: self.manager.req_chatRommArr { [weak self] succeed in
        self.manager.behindView { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
        // 获取我喜欢列表
        //: self.manager.req_getLikeList { [weak self] succeed in
        self.manager.getInsert { [weak self] succeed in
            //: guard succeed == true, let self = self else { return }
            guard succeed == true, let self = self else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let shouldShow = self.manager.iLikeArr.count > 0
                let shouldShow = self.manager.iLikeArr.count > 0
                //: self.likeListView.isHidden = !shouldShow
                self.likeListView.isHidden = !shouldShow
                //: self.likeListView.snp.updateConstraints { make in
                self.likeListView.snp.updateConstraints { make in
                    //: make.height.equalTo(shouldShow ? 90:0)
                    make.height.equalTo(shouldShow ? 90 : 0)
                }
                //: self.likeListView.refreshILikeList(self.manager.iLikeArr)
                self.likeListView.toRoom(self.manager.iLikeArr)
                //: self.iLikeBlock?(shouldShow)
                self.iLikeBlock?(shouldShow)
            }
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: half_showViewAnimation()
        logAnimation()
        //: HiddenConversationListener.shared.func__addDelegate(self)
        HiddenConversationListener.shared.inventoryItem(self)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
            //: self.getConversationList()
            self.oralCommunicationList()
        }
        //: createUI()
        upLab()
        //: func__installNotificationObservers()
        serviceOff()
    }

    // MARK: - Lazy load

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(EventView.self, forCellReuseIdentifier: EventView.className())
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.pastObject { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.refreshOnlineStatus(isFirst: true)
            self.doinglineControl(isFirst: true)
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.randomKey { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.getConversationListMore()
            self.presentRange()
        }
        //: let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        //: footer.setTitle("", for: MJRefreshState.idle)
        footer.setTitle("", for: MJRefreshState.idle)
        //: footer.setTitle("", for: MJRefreshState.noMoreData)
        footer.setTitle("", for: MJRefreshState.noMoreData)
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = HalfEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (str_visualTableText + "ve got" + String(str_standardData.prefix(4)) + str_modeValue.replacingOccurrences(of: "view", with: "e") + "ge yet.").localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (str_micText.replacingOccurrences(of: "empty", with: "ic") + String(str_aspectName.prefix(5)) + "g_kon" + String(str_directionValue.prefix(5)) + "ault")
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var removeCurrVBtn: UIButton = {
    private lazy var removeCurrVBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(removeCurrentViewButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nearCover), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: MechanicallyListManager = //: return MechanicallyListManager()
        .init()
    //: }()

//    private lazy var topItemView: RowItemView = {
//        let view = RowItemView.init()
//        view.delegate = self
//        view.backgroundColor = .white
//        return view
//    }()
    /// v1.8.8 我喜欢列表
    //: private lazy var likeListView: ILikeListView = {
    private lazy var likeListView: PresentationListView = {
        //: let v = ILikeListView()
        let v = PresentationListView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatListViewController {
extension PresentationCalorieChartDataSource {
    /// 获取会话列表【增量返回】
    //: func getConversationList() {
    func oralCommunicationList() {
        //: self.manager.req_getConversationList { [weak self] isFinish in
        self.manager.onEffect { [weak self] isFinish in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.canLoadMore = isFinish
            self.canLoadMore = isFinish
            // 获取用户在线状态逻辑
            //: var timeInterval = 0.5
            var timeInterval = 0.5
            //: var isFirst = false
            var isFirst = false
            //: if (self.manager.loadedOnlineStatus == false) {
            if self.manager.loadedOnlineStatus == false { // 首次
                //: self.manager.loadedOnlineStatus = true
                self.manager.loadedOnlineStatus = true
                //: timeInterval = 3
                timeInterval = 3
                //: isFirst = true
                isFirst = true
            }
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
                //: self.refreshOnlineStatus(isFirst: isFirst)
                self.doinglineControl(isFirst: isFirst)
            }
        }
    }

    /// 刷新在线状态
    /// - Parameter isFirst: 是否首次刷新
    //: func refreshOnlineStatus(isFirst: Bool) {
    func doinglineControl(isFirst: Bool) {
        //: self.manager.getConversationListOnlineStatus(isFirst: isFirst) { [weak self] succeed in
        self.manager.mTheory(isFirst: isFirst) { [weak self] succeed in
            //: self?.tableView.endRefresh()
            self?.tableView.birth()
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self?.tableView.mj_footer?.endRefreshing()
                self?.tableView.mj_footer?.endRefreshing()
                //: self?.tableView.reloadData()
                self?.tableView.reloadData()
            }
        }
    }

    /// 获取更多会话列表数据
    //: func getConversationListMore() {
    func presentRange() {
        //: self.getConversationList()
        self.oralCommunicationList()
    }

    /// 过滤增量会话
    //: func cconfigData(listData: [TalkingConversationModel]) {
    func dataCconfigListAggregation(listData: [ModelAllThen]) {
        // 获取用户信息
        //: if listData.count > 0 {
        if listData.count > 0 {
            //: self.manager.getUserInfoListFromCache(conversationList: listData) { [weak self] in
            self.manager.shareSectionCereUpward(conversationList: listData) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.reloadData()
                self.builderSend()
            }
        }

        //: refreshTableView()
        take()
    }

    /// 刷新表格
    //: func refreshTableView() {
    func take() {
        //: guard self.manager.officialArr.count != 0 ||
        guard self.manager.officialArr.count != 0 ||
            //: self.manager.topArr.count != 0 ||
            self.manager.topArr.count != 0 ||
            //: self.manager.normalArr.count != 0 else {
            self.manager.normalArr.count != 0
        else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: return
            return
        }

        //: self.tableView.endRefresh()
        self.tableView.birth()
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.tableView.mj_footer?.isHidden = !canLoadMore
        self.tableView.mj_footer?.isHidden = !canLoadMore
        //: self.reloadData()
        self.builderSend()

        // 没有更多数据
        //: if self.canLoadMore == false {
        if self.canLoadMore == false {
            //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
            self.tableView.mj_footer?.endRefreshingWithNoMoreData()
        }
    }

    /// 刷新
    //: func reloadData() {
    func builderSend() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingChatListViewController {
extension PresentationCalorieChartDataSource {
    /// 返回上级页面手势事件
    //: @objc private func removeCurrentViewButtonClick() {
    @objc private func nearCover() {
        //: half_dismissViewAnimation()
        spot()
    }

    // 删除会话cell
    //: func deleteChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func development(indexPath _: IndexPath, conversationModel: ModelAllThen) {
        //: if !HiddenConversationListener.shared.func__checkCanOperateList() { return }
        if !HiddenConversationListener.shared.quick() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        AddVideoAnimatTool.shared.freeSpoken(targetID: conversationModel.targetId)
        //: var type: ChatListDataType = .normalList
        var type: ServerDataType = .normalList
        //: if conversationModel.isPinned { type = .topList }
        if conversationModel.isPinned { type = .topList }
        //: HiddenConversationListener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: type)
        HiddenConversationListener.shared.upType(targetId: conversationModel.targetId, dataType: type)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.party(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            //: if self.canLoadMore &&
            if self.canLoadMore,
               //: self.manager.topArr.count == 0 &&
               self.manager.topArr.count == 0,
               //: self.manager.normalArr.count == 0 {
               self.manager.normalArr.count == 0
            {
                //: self.getConversationList()
                self.oralCommunicationList()
            }
        }
    }

    // 置顶会话
    //: func setTopChatListCell(conversationModel: TalkingConversationModel) {
    func errorModel(conversationModel: ModelAllThen) {
        //: if !HiddenConversationListener.shared.func__checkCanOperateList() { return }
        if !HiddenConversationListener.shared.quick() { return }
        //: let isTop = !conversationModel.isPinned
        let isTop = !conversationModel.isPinned
        //: HiddenConversationListener.shared.func__setConversationTop(convModel: conversationModel, isTop: isTop)
        HiddenConversationListener.shared.inputTop(convModel: conversationModel, isTop: isTop)

        //: if curType == .intimate {
        if curType == .intimate {
            //: self.manager.top_intimateData(convModel: conversationModel, isTop: isTop)
            self.manager.indexStatus(convModel: conversationModel, isTop: isTop)
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func terrace(indexPath: IndexPath, conversationModel: ModelAllThen) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        EqualAlertShow.showConfig(title: nil,
                                    //: message: kMessage_blocking,
                                    message: consLet_messageName,
                                    //: leftBtnTitle: "Cancel".localized,
                                    leftBtnTitle: "Cancel".localized,
                                    //: rightBtnTitle: "OK".localized) {
                                    rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            HiddenRequestManager.clickIcon(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(indexPath: indexPath, conversationModel: conversationModel)
                self.development(indexPath: indexPath, conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: consLet_keyNoTitle,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: ["uid": conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func modifyImage(conversationModel: ModelAllThen) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = ValueDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.thirdView(view: nil)
    }
}

// MARK: - 通知

//: extension TalkingChatListViewController {
extension PresentationCalorieChartDataSource {
    //: func func__installNotificationObservers() {
    func serviceOff() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(afterShowUser(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: consLet_robotName,
                                               //: object: nil)
                                               object: nil)
        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(retirementIndividualModifyOnlineOmitAppear(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: consLet_appData,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户亲密度
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserIntimate(notif:)),
                                               selector: #selector(trifle(notif:)),
                                               //: name: MSGLIST_UPDATE_INTIMATE_NOTIFICATION,
                                               name: consLet_intervalTitle,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func afterShowUser(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: UserHandyJSON = dic![userID] as! UserHandyJSON
            let aInfoWrap: UserHandyJSON = dic![userID] as! UserHandyJSON
            //: let aModel: TalkingConversationModel? = HiddenConversationListener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: ModelAllThen? = HiddenConversationListener.shared.recuperate(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        reloadKeep()

        //: self.reloadData()
        self.builderSend()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func reloadKeep() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: consLet_screenContent) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = HiddenConversationListener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: ModelAllThen? = HiddenConversationListener.shared.recuperate(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set([String: Any](), forKey: consLet_screenContent)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func retirementIndividualModifyOnlineOmitAppear(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.equalRenderInfo(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    /// 更新消息列表用户亲密度
    //: @objc private func func__updateUserIntimate(notif: Notification) {
    @objc private func trifle(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userIntimate(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.eraseInfo(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - HiddenViewDelegate

//: extension TalkingChatListViewController: TalkingChatListTopItemViewDelegate {
extension PresentationCalorieChartDataSource: HiddenViewDelegate {
    //: func resetToTopItemView() {
    func light() {
//        if self.curType == .intimate {
//            topItemView.resetToSeleteAll()
//        }
    }

    //: func changeTopItem(type: ChatListTopItemType) {
    func messageDismissType(type _: UserMakeColumnConvertible) {
//        self.curType = type
//        if self.curType == .All {
//            tableView.mj_header?.isHidden = false
//            tableView.mj_footer?.isHidden = false
//            refreshTableView()
//        } else {
//            self.manager.req_intimateData()
//            tableView.mj_header?.isHidden = true
//            tableView.mj_footer?.isHidden = true
//
//           if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
//                self.tableView.isHidden = true
//                self.emptyView.isHidden = false
//            }
//            self.tableView.reloadData()
//            uploadRecord.uploadRecordEvent(eventID: ClickIntimateTabNoP)
//        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatListViewController: UITableViewDelegate, UITableViewDataSource {
extension PresentationCalorieChartDataSource: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: return 5
            return 5
            //: } else {
        } else {
            //: return 2
            return 2
        }
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: switch section {
            switch section {
            //: case ChatListSectionTyep.offical.rawValue:
            case ItemCountLiteral.offical.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.officialArr.count
                return self.manager.officialArr.count

            //: case ChatListSectionTyep.chatRoom.rawValue:
            case ItemCountLiteral.chatRoom.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.chatRoomArr.count
                return self.manager.chatRoomArr.count

            //: case ChatListSectionTyep.moreMsg.rawValue:
            case ItemCountLiteral.moreMsg.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                // 首次加载完数据再展示，防止提前进入无数据
                //: if self.manager.loadedOnlineStatus == false { return 0 }
                if self.manager.loadedOnlineStatus == false { return 0 }
                //: return 1
                return 1

            //: case ChatListSectionTyep.top.rawValue:
            case ItemCountLiteral.top.rawValue:
                //: return self.manager.topArr.count
                return self.manager.topArr.count

            //: case ChatListSectionTyep.normal.rawValue:
            case ItemCountLiteral.normal.rawValue:
                //: return self.manager.normalArr.count
                return self.manager.normalArr.count

            //: default:
            default:
                //: return 0
                return 0
            }
            //: } else {
        } else {
            //: switch section {
            switch section {
            //: case ChatListSectionIntimateTyep.top.rawValue:
            case GrantTotalimateTyep.top.rawValue:
                //: return self.manager.intimateTopArr.count
                return self.manager.intimateTopArr.count
            //: case ChatListSectionIntimateTyep.normal.rawValue:
            case GrantTotalimateTyep.normal.rawValue:
                //: return self.manager.intimateNorArr.count
                return self.manager.intimateNorArr.count
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: EventView.className(), for: indexPath) as! EventView
        //: var model: TalkingConversationModel?
        var model: ModelAllThen?
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == ItemCountLiteral.moreMsg.rawValue {
                //: model = self.manager.req_moreMsgGetPlaceholderModel()
                model = self.manager.playerModel()
                //: } else {
            } else {
                //: model = self.manager.req_conversationModel(indexPath: indexPath)
                model = self.manager.cordBlastogenesisDismiss(indexPath: indexPath)
            }
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.blockPath(indexPath: indexPath)
        }
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.get(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.someone(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: if curType == .All {
        if curType == .All {
            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.cordBlastogenesisDismiss(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.blockPath(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
        }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let model: TalkingConversationModel?
        let model: ModelAllThen?
        //: if curType == .All {
        if curType == .All {
            //: model = self.manager.req_conversationModel(indexPath: indexPath)
            model = self.manager.cordBlastogenesisDismiss(indexPath: indexPath)
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.blockPath(indexPath: indexPath)
        }
        //: if model == nil {
        if model == nil {
            //: return nil
            return nil
        }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model!)
            self.modifyImage(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.nearTap(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.nearTap(name: (String(str_toValue) + str_midName.replacingOccurrences(of: "execute", with: "ss") + String(str_primaryAppValue))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = GiftTextThen(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: "#FF935D")

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(indexPath: indexPath, conversationModel: model!)
            self.terrace(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.nearTap(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.nearTap(name: (String(str_barValue.prefix(4)) + "message" + String(str_iconData) + String(str_positionValue.suffix(5)))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = GiftTextThen(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: "#C179F9")

        // 置顶
        //: let topBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let topBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.setTopChatListCell(conversationModel: model!)
            self.errorModel(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: let image = model!.isPinned ? "btn_message_untop_nor":"btn_message_top_nor"
        let image = model!.isPinned ? String(bytes: str_topData.reversed(), encoding: .utf8)! : (String(str_countValue.prefix(5)) + "essa" + String(str_indexContent.suffix(8)) + String(str_nameMakeData))
        //: if let topBtnTrashcan = UIImage.nearTap(name: image).cgImage {
        if let topBtnTrashcan = UIImage.nearTap(name: image).cgImage {
            //: topBtn.image = ImageWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            topBtn.image = GiftTextThen(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: topBtn.backgroundColor = UIColor(hex: "#8A79F9")
        topBtn.backgroundColor = UIColor(hex: "#8A79F9")

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(indexPath: indexPath, conversationModel: model!)
            self.development(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.nearTap(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.nearTap(name: (String(str_maxPriceValue.suffix(5)) + "essage" + String(str_sizeValue.suffix(4)) + str_equalName.lowercased() + String(str_insideData))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = GiftTextThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: "#FF506D")

        //: let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if self.manager.isHalf == false &&
        if self.manager.isHalf == false &&
            //: self.curType == .All &&
            self.curType == .All &&
            //: section == ChatListSectionTyep.offical.rawValue &&
            section == ItemCountLiteral.offical.rawValue &&
            //: self.manager.officialArr.count > 0 &&
            self.manager.officialArr.count > 0 &&
            //: IndexStyleAppManager.share.appStatus != AppSkinStatus.special.rawValue {
            IndexStyleAppManager.share.appStatus != FailHashable.special.rawValue
        {
            //: return 15.0
            return 15.0
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: if self.curType == .All && section == ChatListSectionTyep.offical.rawValue && self.manager.officialArr.count > 0 {
        if self.curType == .All && section == ItemCountLiteral.offical.rawValue && self.manager.officialArr.count > 0 {
            //: let v = UIView()
            let v = UIView()
            //: v.backgroundColor = tableView.backgroundColor
            v.backgroundColor = tableView.backgroundColor
            //: return v
            return v
        }
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == ItemCountLiteral.moreMsg.rawValue { // 更多消息
                //: let vc = TalkingMoreMessagesListViewController()
                let vc = ShowViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: return
                return
            }

            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.cordBlastogenesisDismiss(indexPath: indexPath) else {
                //: return
                return
            }
            //: if model.chatType == .group {
            if model.chatType == .group { // 群聊
                //: pushChatRoomList(model: model)
                modelSeek(model: model)

                //: } else if model.chatType == .service {
            } else if model.chatType == .service { // 官方客服
                //: PostPushManager.share.func__pushToWebVC(webViewType: .FAQ)
                PostPushManager.share.scene(webViewType: .FAQ)
                //: uploadRecord.uploadRecordEvent(eventID: ClickCSCNoP, toUid: model.targetId)
                consLet_contentData.postEqual(eventID: consLet_formalText, toUid: model.targetId)

                //: } else {
            } else {
                //: if model.targetId == OverdoReactiveCompatible.getXiaoMiID() {
                if model.targetId == OverdoReactiveCompatible.winImage() { // 系统消息
                    //: uploadRecord.uploadRecordEvent(eventID: ClickSystemNotificationNoP, toUid: model.targetId)
                    consLet_contentData.postEqual(eventID: consLet_clickValue, toUid: model.targetId)
                    //: } else {
                } else {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
                    consLet_contentData.postEqual(eventID: consLet_deviceTitle, toUid: model.targetId)
                }

                //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
                let isFrom = self.manager.isHalf ? ModelDeviceFromEnum.LiveRoom : ModelDeviceFromEnum.Normal
                //: PostPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
                PostPushManager.share.birthday(chatID: model.targetId, isFrom: isFrom) { vc in
                    //: if model.gj_userInfo != nil {
                    if model.gj_userInfo != nil {
                        //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                        vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    }
                }
            }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.blockPath(indexPath: indexPath) else {
                //: return
                return
            }
            //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
            let isFrom = self.manager.isHalf ? ModelDeviceFromEnum.LiveRoom : ModelDeviceFromEnum.Normal
            //: PostPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
            PostPushManager.share.birthday(chatID: model.targetId, isFrom: isFrom) { vc in
                //: if model.gj_userInfo != nil {
                if model.gj_userInfo != nil {
                    //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    vc.isHaveSession = model.gj_userInfo!.isHaveSession
                }
            }
        }
    }
}

// MARK: - 跳转公共聊天室

//: extension TalkingChatListViewController {
extension PresentationCalorieChartDataSource {
    //: func pushChatRoomList(model: TalkingConversationModel) {
    func modelSeek(model: ModelAllThen) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickChatRoomNoP, toUid: model.targetId)
        consLet_contentData.postEqual(eventID: consLet_errSampleValue, toUid: model.targetId)
        //: guard model.onlyOneRoomId.isEmptyString else {
        guard model.onlyOneRoomId.isEmptyString else {
            //: PostPushManager.share.func__pushToGroupChat(groupId: model.onlyOneRoomId)
            PostPushManager.share.aboveContent(groupId: model.onlyOneRoomId)
            //: return
            return
        }
        //: let vc = TalkingChatRoomListVC.init()
        let vc = AdministratorViewController()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingChatListViewController: IMManagerDelegate {
extension PresentationCalorieChartDataSource: HiddenObjectProtocol {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func subControl(data: [ModelAllThen]) {
        //: self.manager.req_initData()
        self.manager.usedData()
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: self.manager.req_intimateData()
            self.manager.quantityeractionData()
        }
        //: cconfigData(listData: data)
        dataCconfigListAggregation(listData: data)
    }
}

// MARK: - 半屏页面展示/隐藏动画

//: extension TalkingChatListViewController {
extension PresentationCalorieChartDataSource {
    /// 半屏展示动画
    //: private func half_showViewAnimation() {
    private func logAnimation() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_SHOW, object: nil, userInfo: nil)
        NotificationCenter.default.post(name: consLet_saltValue, object: nil, userInfo: nil)
        //: self.view.frame = CGRect(x: 0, y: ScreenHeight-HalfViewTopMargin, width: ScreenWidth, height: ScreenHeight)
        self.view.frame = CGRect(x: 0, y: consLet_sessionName - consLet_barContent, width: consLet_errorDeviceHeightData, height: consLet_sessionName)
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: 0,
                                     y: 0,
                                     //: width: ScreenWidth,
                                     width: consLet_errorDeviceHeightData,
                                     //: height: ScreenHeight)
                                     height: consLet_sessionName)
        }
    }

    /// 半屏页消失动画
    //: private func half_dismissViewAnimation() {
    private func spot() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        // 语聊房要提前发通知，动画效果更流畅
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if EqualSendReactiveCompatible.clout().isParty == true {
            //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
            NotificationCenter.default.post(name: consLet_domainName, object: nil, userInfo: nil)
        }
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: ScreenHeight-HalfViewTopMargin,
                                     y: consLet_sessionName - consLet_barContent,
                                     //: width: ScreenWidth,
                                     width: consLet_errorDeviceHeightData,
                                     //: height: ScreenHeight)
                                     height: consLet_sessionName)
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromParent()
            self.removeFromParent()
            //: self.view.removeFromSuperview()
            self.view.removeFromSuperview()
            //: if TalkingVoiceRoomManager.shared().isParty == false {
            if EqualSendReactiveCompatible.clout().isParty == false {
                //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: consLet_domainName, object: nil, userInfo: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingChatListViewController {
extension PresentationCalorieChartDataSource {
    // MARK: - UI

    //: private func createUI() {
    private func upLab() {
        //: if self.manager.isHalf == false {
        if self.manager.isHalf == false { // 全屏
            //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if IndexStyleAppManager.share.appStatus == FailHashable.special.rawValue { // 审核模式
                //: view.backgroundColor = .clear
                view.backgroundColor = .clear
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                }

                //: } else {
            } else {
                //: view.backgroundColor = .appBgColor()
                view.backgroundColor = .primaryColorBarContent()
//                view.addSubview(topItemView)
//                topItemView.snp.makeConstraints { make in
//                    make.leading.trailing.top.equalToSuperview()
//                    make.height.equalTo(50)
//                }
                //: view.addSubview(likeListView)
                view.addSubview(likeListView)
                //: likeListView.snp.makeConstraints { make in
                likeListView.snp.makeConstraints { make in
                    //: make.leading.trailing.top.equalToSuperview()
                    make.leading.trailing.top.equalToSuperview()
                    //: make.height.equalTo(0)
                    make.height.equalTo(0)
                }
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
//                    make.top.equalTo(topItemView.snp.bottom)
                    //: make.top.equalTo(likeListView.snp.bottom)
                    make.top.equalTo(likeListView.snp.bottom)
                    //: make.leading.trailing.bottom.equalToSuperview()
                    make.leading.trailing.bottom.equalToSuperview()
                }
            }

            //: } else {
        } else { // 半屏
            //: self.view.backgroundColor = .clear
            self.view.backgroundColor = .clear

            //: view.addSubview(removeCurrVBtn)
            view.addSubview(removeCurrVBtn)
            //: removeCurrVBtn.snp.makeConstraints { make in
            removeCurrVBtn.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.height.equalTo(HalfViewTopMargin)
                make.height.equalTo(consLet_barContent)
            }

            //: view.addSubview(contentView)
            view.addSubview(contentView)
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(removeCurrVBtn.snp.bottom)
                make.top.equalTo(removeCurrVBtn.snp.bottom)
                //: make.leading.trailing.bottom.equalToSuperview()
                make.leading.trailing.bottom.equalToSuperview()
            }
            //: contentView.layoutIfNeeded()
            contentView.layoutIfNeeded()
            //: contentView.Corner(width: contentView.width,
            contentView.toColorRadii(width: contentView.width,
                                     //: height: contentView.height,
                                     height: contentView.height,
                                     //: corners: [.topLeft, .topRight],
                                     corners: [.topLeft, .topRight],
                                     //: cornerRadii: .init(width: 8, height: 8))
                                     cornerRadii: .init(width: 8, height: 8))

            //: contentView.addSubview(tableView)
            contentView.addSubview(tableView)
            //: tableView.snp.makeConstraints { make in
            tableView.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.bottom.equalTo(-kDeviceSafeBottomHeight)
                make.bottom.equalTo(-consLet_halfTitle)
            }
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.builderSend()
        }
    }
}
