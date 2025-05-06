
//: Declare String Begin

/*: "New friends" :*/
fileprivate let str_sourceName:String = "to name model frameNew fr"

/*: "icon_yidu_pre" :*/
fileprivate let str_paraData:[Character] = ["i","c","o","n","_","y","i","d","u","_","p","r"]
fileprivate let str_leadingData:String = "error"

/*: "You've got no message yet." :*/
fileprivate let str_labContent:String = "You\'"
fileprivate let str_buttonViewName:String = "hidden color string to all no m"
fileprivate let str_nearName:[Character] = ["e"," ","y","e","t","."]

/*: "icon_kong_kong_default" :*/
fileprivate let str_lessTaskData:String = "icon_first case"
fileprivate let str_toValue:String = "ong_destick price size"

/*: "Cancel" :*/
fileprivate let str_largePanViewName:String = "Canceextension if visible"
fileprivate let str_shadowTitle:String = "life"

/*: "OK" :*/
fileprivate let str_insertSearchedValue:[Character] = ["O","K"]

/*: "uid" :*/
fileprivate let str_areaText:[UInt8] = [0x2c,0x30,0x3d]

private func itemAfter(send num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_genderName:[UInt8] = [0x46,0x6d,0x22,0x7b,0x6d,0x77,0x22,0x75,0x63,0x6c,0x76,0x22,0x76,0x6d,0x22,0x6f,0x63,0x70,0x69,0x22,0x63,0x6e,0x6e,0x22,0x6f,0x67,0x71,0x71,0x63,0x65,0x67,0x71,0x22,0x63,0x71,0x22,0x70,0x67,0x63,0x66,0x3d]

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let str_modelText:[Character] = ["M","o","r","e","M","e","s","s","a","g","e","s","一","键","已","\u{8bfb}","失"]
fileprivate let str_cellData:String = "\u{8d25}\u{ff1a}code:"

/*: , desc: :*/
fileprivate let str_addText:[Character] = [","," ","d","e","s","c",":"]

/*: "btn_message_report_nor" :*/
fileprivate let str_fieldValue:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","r","e","p"]
fileprivate let str_layerValue:String = "conversation text bar moment titleort_nor"

/*: "#FF935D" :*/
fileprivate let str_frontData:String = "design case#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let str_mainName:String = "btn_metype label"
fileprivate let str_labelMagnitudeData:String = "_bloccolor screen"
fileprivate let str_cornerText:[Character] = ["k","_","n","o","r"]

/*: "#C179F9" :*/
fileprivate let str_makeName:[Character] = ["#","C","1","7","9","F","9"]

/*: "btn_message_delete_nor" :*/
fileprivate let str_playerModeData:String = "btn_button private live make"
fileprivate let str_equalErrorData:[Character] = ["d","e","l","e","t","e","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let str_sharedText:String = "view index text as equal#FF506D"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class ShowViewController: ServiceRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(str_sourceName.suffix(6)) + "iends").localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.nearTap(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_paraData) + str_leadingData.replacingOccurrences(of: "error", with: "e"))), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewExecute), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: HiddenConversationListener.shared.func__addDelegate(self)
        HiddenConversationListener.shared.inventoryItem(self)
        //: func__installNotificationObservers()
        regard()
        //: createUI()
        withFile()
        //: self.manager.req_moreMsgInitData()
        self.manager.styleMoreData()
        //: refreshTableView()
        marginOfSafetyView()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

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
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = HalfEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (str_labContent + "ve got" + String(str_buttonViewName.suffix(5)) + "essag" + String(str_nearName)).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(str_lessTaskData.prefix(5)) + "kong_k" + String(str_toValue.prefix(6)) + "fault")
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: MechanicallyListManager = //: return MechanicallyListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension ShowViewController {
    /// 刷新表格
    //: func refreshTableView() {
    func marginOfSafetyView() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.resumePerform()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.resumePerform()
    }

    /// 刷新
    //: func reloadData() {
    func resumePerform() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension ShowViewController {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func cameraShow(conversationModel: ModelAllThen) {
        //: if !HiddenConversationListener.shared.func__checkCanOperateList() { return }
        if !HiddenConversationListener.shared.quick() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        AddVideoAnimatTool.shared.freeSpoken(targetID: conversationModel.targetId)
        //: HiddenConversationListener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        HiddenConversationListener.shared.upType(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.party(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.marginOfSafetyView()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func upCapacity(conversationModel: ModelAllThen) {
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
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.cameraShow(conversationModel: conversationModel)
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
    func sharedIndex(conversationModel: ModelAllThen) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = ValueDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.thirdView(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func viewExecute() {
        //: let config = ShowAlertConfig()
        let config = ResourceAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        EqualAlertShow.pathFinish(message: String(bytes: str_genderName.map{$0^2}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.economicAid() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: EqualLogTool.writeDoing(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    EqualLogTool.writeDoing(msg: (String(str_modelText) + str_cellData) + "\(code), desc:\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension ShowViewController {
    //: func func__installNotificationObservers() {
    func regard() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(framework(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: consLet_robotName,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(roundPlay(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: consLet_appData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func framework(notification: NSNotification) {
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
        sectionSize()

        //: self.reloadData()
        self.resumePerform()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func sectionSize() {
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
    @objc private func roundPlay(notif: Notification) {
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
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension ShowViewController: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: EventView.className(), for: indexPath) as! EventView
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.messagePath(indexPath: indexPath)
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
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.messagePath(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.messagePath(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.sharedIndex(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.nearTap(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.nearTap(name: (String(str_fieldValue) + String(str_layerValue.suffix(7)))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = GiftTextThen(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: "#FF935D")

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.upCapacity(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.nearTap(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.nearTap(name: (String(str_mainName.prefix(6)) + "ssage" + String(str_labelMagnitudeData.prefix(5)) + String(str_cornerText))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = GiftTextThen(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: "#C179F9")

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.cameraShow(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.nearTap(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.nearTap(name: (String(str_playerModeData.prefix(4)) + "message_" + String(str_equalErrorData))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = GiftTextThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: "#FF506D")

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
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
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.messagePath(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        consLet_contentData.postEqual(eventID: consLet_deviceTitle, toUid: model.targetId)
        //: PostPushManager.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        PostPushManager.share.birthday(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension ShowViewController: HiddenObjectProtocol {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func subControl(data _: [ModelAllThen]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.styleMoreData()
        //: refreshTableView()
        marginOfSafetyView()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension ShowViewController {
    /// UI
    //: private func createUI() {
    private func withFile() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
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
            self?.resumePerform()
        }
    }
}
