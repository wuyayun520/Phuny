
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_eventTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Cancel" :*/
fileprivate let str_iconName:[Character] = ["C","a","n","c","e","l"]

/*: "Submit" :*/
fileprivate let str_makeContent:String = "Submitmodel one"

/*: "Please tell us your problems                   " :*/
fileprivate let str_viewName:[UInt8] = [0x25,0x41,0x3a,0x36,0x48,0x3a,0xf5,0x49,0x3a,0x41,0x41,0xf5,0x4a,0x48,0xf5,0x4e,0x44,0x4a,0x47,0xf5,0x45,0x47,0x44,0x37,0x41,0x3a,0x42,0x48,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5,0xf5]

fileprivate func pointOut(name num: UInt8) -> UInt8 {
    let value = Int(num) + 43
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "You need to choose at least one." :*/
fileprivate let str_modeTitle:[UInt8] = [0x2e,0x65,0x6e,0x6f,0x20,0x74,0x73,0x61,0x65,0x6c,0x20,0x74,0x61,0x20,0x65,0x73,0x6f,0x6f,0x68,0x63,0x20,0x6f,0x74,0x20,0x64,0x65,0x65,0x6e,0x20,0x75,0x6f,0x59]

/*: "Please tell us your problems." :*/
fileprivate let str_upValue:String = "in make start foundationPlea"
fileprivate let str_sharePhotographData:String = "user truell us "
fileprivate let str_butterflyByLabelValue:String = " probbold recover pick make"
fileprivate let str_addRequestText:String = "kit"

/*: "app/userReport" :*/
fileprivate let str_buttonListGuardTitle:String = "aindexindex"
fileprivate let str_tabData:String = "in self/user"

/*: "id" :*/
fileprivate let str_textData:[UInt8] = [0x2e,0x29]

fileprivate func valueGender(succeed num: UInt8) -> UInt8 {
    let value = Int(num) - 197
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "reason" :*/
fileprivate let str_fillListTitle:String = "repleaseon"

/*: "desc" :*/
fileprivate let str_sizeStateName:[UInt8] = [0xfd,0xfc,0xea,0xfa]

/*: "mf/moment/report" :*/
fileprivate let str_makeIndexTitle:[Character] = ["m","f","/","m","o","m","e","n","t","/","r"]
fileprivate let str_likeViewValue:String = "erecordingrt"

/*: "momentId" :*/
fileprivate let str_femaleValue:[UInt8] = [0xa,0x8,0xa,0x2,0x9,0x13,0x2e,0x3]

/*: "mf/momentReply/report" :*/
fileprivate let str_statusLabData:String = "at viewmf/mome"
fileprivate let str_numberData:String = "style self top make namentRep"
fileprivate let str_userRequestToData:String = "EPORT"

/*: "app/videoReport" :*/
fileprivate let str_rawName:String = "image gift windowapp/"
fileprivate let str_makeName:String = "oReportprint title gift name"

/*: "logId" :*/
fileprivate let str_backgroundName:[UInt8] = [0x64,0x49,0x67,0x6f,0x6c]

/*: "Submitted successfully" :*/
fileprivate let str_littleTitle:String = "cell elseSubmit"
fileprivate let str_indexShareBlockData:String = "uccetext"
fileprivate let str_withContent:[Character] = ["s","f","u","l","l","y"]

/*: "Nudity" :*/
fileprivate let str_meData:String = "self data quick inNudity"

/*: "Violence" :*/
fileprivate let str_partyName:String = "video typeVio"
fileprivate let str_titleValue:String = "librarynce"

/*: "Harassment" :*/
fileprivate let str_leadingToData:[Character] = ["H","a","r","a","s","s","m","e","n"]
fileprivate let str_countName:String = "view"

/*: "Suicide or Self-injury" :*/
fileprivate let str_matchValue:[Character] = ["S","u","i","c","i","d","e"," ","o"]
fileprivate let str_upData:[Character] = ["r"," ","S","e","l","f","-"]
fileprivate let str_cellName:String = "inbottomry"

/*: "False Information" :*/
fileprivate let str_playerValue:String = "play language to make stringFalse In"
fileprivate let str_equalVoiceHeadValue:[Character] = ["f","o","r"]
fileprivate let str_itemData:String = "MATION"

/*: "Spam" :*/
fileprivate let str_videoValue:String = "border messageSpam"

/*: "Hate Speech" :*/
fileprivate let str_okValue:String = "manager"
fileprivate let str_makeTitle:[Character] = ["a","t","e"," ","S","p","e","e","c","h"]

/*: "Terrorism" :*/
fileprivate let str_femaleData:String = "Terroif equal to if"

/*: "Sale of Illegal or Regulated Goods" :*/
fileprivate let str_floorBlockTitle:[UInt8] = [0x73,0x64,0x6f,0x6f,0x47,0x20,0x64,0x65,0x74,0x61,0x6c,0x75,0x67,0x65,0x52,0x20,0x72,0x6f,0x20,0x6c,0x61,0x67,0x65,0x6c,0x6c,0x49,0x20,0x66,0x6f,0x20,0x65,0x6c,0x61,0x53]

/*: "Sending disgusting messages" :*/
fileprivate let str_appTitle:String = "time near template pathSend"
fileprivate let str_styleName:String = "methodgumethodt"
fileprivate let str_listValue:String = "toolsagtool"

/*: "Using photos of nudity or drugs" :*/
fileprivate let str_welcomeName:[UInt8] = [0x73,0x67,0x75,0x72,0x64,0x20,0x72,0x6f,0x20,0x79,0x74,0x69,0x64,0x75,0x6e,0x20,0x66,0x6f,0x20,0x73,0x6f,0x74,0x6f,0x68,0x70,0x20,0x67,0x6e,0x69,0x73,0x55]

/*: "Harassing or sending ads" :*/
fileprivate let str_topData:String = "Harassincenter button let hidden"
fileprivate let str_frameName:[Character] = ["g"," ","o","r"," "]
fileprivate let str_tableData:[Character] = ["s","e","n","d","i","n","g"," ","a","d","s"]

/*: "Defraud or using fake info" :*/
fileprivate let str_statusValue:[Character] = ["D","e","f","r","a","u","d"]
fileprivate let str_sourceText:String = "left private view size or "
fileprivate let str_keyData:String = " fake gift back"

/*: "Others" :*/
fileprivate let str_managerText:String = "Othersnow tap return"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueDataSource.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: enum TalkingReportAlertType: CaseIterable {
enum ItemAlertType: CaseIterable {
    //: case reportCommentType
    case reportCommentType // 举报动态
    //: case reportDynamicType
    case reportDynamicType
    //: case reportUserType
    case reportUserType // 举报用户
    //: case reportVideo
    case reportVideo // 举报视频通话
}

// 是否举报成功block
//: typealias ReportViewHideBlock = (_ isReportSucc: Bool) -> Void
typealias ReportViewHideBlock = (_ isReportSucc: Bool) -> Void

//: class TalkingReportAlertView: UIView {
class ValueDataSource: UIView {
    //: var reportType: TalkingReportAlertType?
    var reportType: ItemAlertType?
    //: var dataArray: Array<TalkingReportModel> = []
    var dataArray: [ViewIndexReactiveCompatible] = []
    //: var selectedModel = TalkingReportModel()
    var selectedModel = ViewIndexReactiveCompatible()
    //: var tempId: String = ""
    var tempId: String = ""
    //: var reportHideBlock: ReportViewHideBlock?
    var reportHideBlock: ReportViewHideBlock?
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: public init(frame: CGRect, type: TalkingReportAlertType?, rId: String) {
    public init(frame: CGRect, type: ItemAlertType?, rId: String) {
        //: tempId = rId
        tempId = rId
        //: reportType = type
        reportType = type
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        viewClose()
        //: setupSubViewsConstraint()
        percipientBegin()
        //: setupReasons()
        overdo()
        //: bindInteraction()
        sharedBar()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_eventTitle.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var cancelButton = UIButton().then {
    lazy var cancelButton = UIButton().then {
        //: $0.setTitle("Cancel".localized, for: .normal)
        $0.setTitle("Cancel".localized, for: .normal)
        //: $0.setTitleColor(UIColor.appThemeColor(), for: .normal)
        $0.setTitleColor(UIColor.labelSumervalMedium(), for: .normal)
        //: $0.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        $0.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: $0.backgroundColor = UIColor.white
        $0.backgroundColor = UIColor.white
        //: $0.layer.borderWidth = 1
        $0.layer.borderWidth = 1
        //: $0.layer.borderColor = UIColor.appThemeColor().cgColor
        $0.layer.borderColor = UIColor.labelSumervalMedium().cgColor
        //: $0.layer.cornerRadius = 25
        $0.layer.cornerRadius = 25
        //: $0.clipsToBounds = true
        $0.clipsToBounds = true
        //: $0.addTarget(self, action: #selector(registerCancelAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(back), for: .touchUpInside)
    }

    //: lazy var submitButton = UIButton().then {
    lazy var submitButton = UIButton().then {
        //: $0.setTitle("Submit".localized, for: .normal)
        $0.setTitle("Submit".localized, for: .normal)
        //: $0.setTitleColor(UIColor.white, for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        //: $0.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        $0.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: $0.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 126, height: 50)), for: .normal)
        $0.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 126, height: 50)), for: .normal)
        //: $0.layer.cornerRadius = 25
        $0.layer.cornerRadius = 25
        //: $0.clipsToBounds = true
        $0.clipsToBounds = true
        //: $0.addTarget(self, action: #selector(registerSubmitAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(control), for: .touchUpInside)
    }

    //: lazy var tableFooterView = UIView().then {
    lazy var tableFooterView = UIView().then {
        //: $0.frame = CGRect(x: 0, y: 0, width: ScreenWidth-actualWidth(w: 108), height: actualHeight(h: 74))
        $0.frame = CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData - actualWidth(w: 108), height: actualHeight(h: 74))
        //: $0.backgroundColor = UIColor.RGBA(245, 245, 248, 1)
        $0.backgroundColor = UIColor.computeImage(245, 245, 248, 1)
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 5
        $0.layer.cornerRadius = 5
    }

    //: lazy var otherTextView = PlaceholderTextView(placeholder: "Please tell us your problems                   ".localized, placeholderColor: UIColor.appValueDetailColor(), frame: CGRect(x: 10, y: 10, width: ScreenWidth-actualWidth(w: 128), height: actualHeight(h: 54))).then {
    lazy var otherTextView = VideoReactiveCompatible(placeholder: String(bytes: str_viewName.map{pointOut(name: $0)}, encoding: .utf8)!.localized, placeholderColor: UIColor.bringHomeColor(), frame: CGRect(x: 10, y: 10, width: consLet_errorDeviceHeightData - actualWidth(w: 128), height: actualHeight(h: 54))).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.placeholdertextView.backgroundColor = .clear
        $0.placeholdertextView.backgroundColor = .clear
        //: $0.limitWords = 200
        $0.limitWords = 200
        //: $0.isShowCountLabel = false
        $0.isShowCountLabel = false
        //: $0.isReturnHidden = true
        $0.isReturnHidden = true
        //: $0.plaleLabel.font = .loadEnable(type: .Regular, fontSize: 16)
        $0.plaleLabel.font = .loadEnable(type: .Regular, fontSize: 16)
        //: $0.placeholdertextView.textColor = UIColor.appTitleColor()
        $0.placeholdertextView.textColor = UIColor.appNameVisualProperty()
        //: $0.placeholdertextView.font = .loadEnable(type: .Regular, fontSize: 16)
        $0.placeholdertextView.font = .loadEnable(type: .Regular, fontSize: 16)
    }

    //: lazy var bgView = UIView().then {
    lazy var bgView = UIView().then {
        //: $0.backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        $0.backgroundColor = UIColor.computeImage(0, 0, 0, 0.6)
    }

    //: lazy var containerView = UIView().then {
    lazy var containerView = UIView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 15
        $0.layer.cornerRadius = 15
    }

    //: lazy var tableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var tableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.showsVerticalScrollIndicator = false
        $0.showsVerticalScrollIndicator = false
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: if reportType != .reportCommentType, reportType != .reportVideo {
        if reportType != .reportCommentType, reportType != .reportVideo {
            //: $0.tableFooterView = self.tableFooterView
            $0.tableFooterView = self.tableFooterView
        }
        //: $0.register(TalkingReportViewCell.self, forCellReuseIdentifier: TalkingReportViewCell.className())
        $0.register(LabelViewCell.self, forCellReuseIdentifier: LabelViewCell.className())
    }
}

// MARK: - Bind && Event

//: extension TalkingReportAlertView {
extension ValueDataSource {
    //: @objc func func__TapGestureRecognizer() {
    @objc func radiogramRecord() {
        //: self.endEditing(true)
        self.endEditing(true)
    }

    //: public func showReportViewIn(view: UIView?) {
    public func thirdView(view: UIView?) {
        //: if view == nil {
        if view == nil {
            //: let window = OverdoReactiveCompatible.getWindow()
            let window = OverdoReactiveCompatible.outMax()
            //: window.addSubview(self)
            window.addSubview(self)
            //: return
            return
        }
        //: view?.addSubview(self)
        view?.addSubview(self)
    }

    /// 移除视图
    /// - Parameter succeed: 是否举报成功
    //: private func dismissReportView(succeed: Bool) {
    private func rank(succeed: Bool) {
        //: reportHideBlock?(succeed)
        reportHideBlock?(succeed)
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 取消
    //: @objc func registerCancelAction() {
    @objc func back() {
        //: self.dismissReportView(succeed: false)
        self.rank(succeed: false)
    }

    /// 提交举报内容
    //: @objc func registerSubmitAction() {
    @objc func control() {
        //: if selectedModel.selected == false {
        if selectedModel.selected == false {
            //: self.func__showStatusBarErrorMsg(showMsg: "You need to choose at least one.".localized)
            self.noblesseExtra(showMsg: String(bytes: str_modeTitle.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }
        //: if reportType == .reportUserType, otherTextView.placeholdertextView.text.isEmptyString {
        if reportType == .reportUserType, otherTextView.placeholdertextView.text.isEmptyString {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please tell us your problems.".localized)
            self.noblesseExtra(showMsg: (String(str_upValue.suffix(4)) + "se te" + String(str_sharePhotographData.suffix(6)) + "your" + String(str_butterflyByLabelValue.prefix(5)) + "lems" + str_addRequestText.replacingOccurrences(of: "kit", with: ".")).localized)
            //: return
            return
        }

        //: var param: [String: String] = [:]
        var param: [String: String] = [:]
        //: var path: String = ""
        var path = ""

        //: switch self.reportType {
        switch self.reportType {
        //: case .reportUserType:
        case .reportUserType:
            //: path = "app/userReport"
            path = (str_buttonListGuardTitle.replacingOccurrences(of: "index", with: "p") + String(str_tabData.suffix(5)) + "Report")
            //: param = ["id": tempId, "reason": selectedModel.type, "desc": otherTextView.placeholdertextView.text]
            param = ["id": tempId, "reason": selectedModel.type, "desc": otherTextView.placeholdertextView.text]

        //: case .reportDynamicType:
        case .reportDynamicType:
            //: path = "mf/moment/report"
            path = (String(str_makeIndexTitle) + str_likeViewValue.replacingOccurrences(of: "recording", with: "po"))
            //: param = ["momentId": tempId, "reason": selectedModel.type]
            param = [String(bytes: str_femaleValue.map{$0^103}, encoding: .utf8)!: tempId, "reason": selectedModel.type]

        //: case .reportCommentType:
        case .reportCommentType:
            //: path = "mf/momentReply/report"
            path = (String(str_statusLabData.suffix(7)) + String(str_numberData.suffix(5)) + "ly/r" + str_userRequestToData.lowercased())
            //: param = ["id": tempId, "reason": selectedModel.type]
            param = ["id": tempId, "reason": selectedModel.type]

        //: case .reportVideo:
        case .reportVideo:
            //: path = "app/videoReport"
            path = (String(str_rawName.suffix(4)) + "vide" + String(str_makeName.prefix(7)))
            //: param = ["logId": tempId, "reason": selectedModel.type]
            param = ["logId": tempId, "reason": selectedModel.type]

        //: default:
        default:
            //: break
            break
        }

        //: self.submitButton.isEnabled = false
        self.submitButton.isEnabled = false
        //: TalkingUserRequestManager.func__reportRequest(reqPath: path, reqParams: param) { succeed, result, errorModel in
        HiddenRequestManager.achromaticColor(reqPath: path, reqParams: param) { succeed, _, _ in
            //: self.submitButton.isEnabled = true
            self.submitButton.isEnabled = true
            //: if succeed == true {
            if succeed == true {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Submitted successfully".localized)
                self.scaleMsg(showMsg: (String(str_littleTitle.suffix(6)) + "ted s" + str_indexShareBlockData.replacingOccurrences(of: "text", with: "s") + String(str_withContent)).localized)
                //: self.dismissReportView(succeed: true)
                self.rank(succeed: true)
            }
        }
    }
}

// MARK: - Delegate

//: extension TalkingReportAlertView: UITableViewDelegate, UITableViewDataSource {
extension ValueDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 40)
        return actualHeight(h: 40)
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingReportViewCell.className()) as! TalkingReportViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: LabelViewCell.className()) as! LabelViewCell
        //: let model = dataArray[indexPath.item]
        let model = dataArray[indexPath.item]
        //: cell.updateReportCell(model: model)
        cell.compartment(model: model)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: for model in dataArray {
        for model in dataArray {
            //: model.selected = false
            model.selected = false
        }

        //: let itemModel = dataArray[indexPath.item]
        let itemModel = dataArray[indexPath.item]
        //: itemModel.selected = true
        itemModel.selected = true
        //: self.selectedModel = itemModel
        self.selectedModel = itemModel

        //: tableView.reloadData()
        tableView.reloadData()
    }
}

// MARK: - Layout

//: extension TalkingReportAlertView {
extension ValueDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func viewClose() {
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(containerView)
        addSubview(containerView)
        //: containerView.addSubview(tableView)
        containerView.addSubview(tableView)
        //: containerView.addSubview(cancelButton)
        containerView.addSubview(cancelButton)
        //: containerView.addSubview(submitButton)
        containerView.addSubview(submitButton)
        //: tableFooterView.addSubview(otherTextView)
        tableFooterView.addSubview(otherTextView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func percipientBegin() {
        //: var height = actualHeight(h: 325)
        var height = actualHeight(h: 325)
        //: if reportType == .reportUserType {
        if reportType == .reportUserType {
            //: height = actualHeight(h: 375)
            height = actualHeight(h: 375)
            //: } else if reportType == .reportVideo {
        } else if reportType == .reportVideo {
            //: height = actualHeight(h: 338)
            height = actualHeight(h: 338)
        }
        //: let topY = (self.frame.height - height) / 2.0
        let topY = (self.frame.height - height) / 2.0

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalTo(0)
            make.leading.top.trailing.bottom.equalTo(0)
        }
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.top.equalTo(topY)
            make.top.equalTo(topY)
            //: make.leading.equalTo(actualWidth(w: 40))
            make.leading.equalTo(actualWidth(w: 40))
            //: make.trailing.equalTo(actualWidth(w: -40))
            make.trailing.equalTo(actualWidth(w: -40))
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 14))
            make.leading.equalTo(actualWidth(w: 14))
            //: make.trailing.equalTo(actualWidth(w: -14))
            make.trailing.equalTo(actualWidth(w: -14))
            //: make.top.equalTo(actualHeight(h: 36))
            make.top.equalTo(actualHeight(h: 36))
            //: if reportType == .reportVideo {
            if reportType == .reportVideo {
                //: make.bottom.equalTo(actualHeight(h: -62))
                make.bottom.equalTo(actualHeight(h: -62))
                //: } else {
            } else {
                //: make.bottom.equalTo(actualHeight(h: -82))
                make.bottom.equalTo(actualHeight(h: -82))
            }
        }
        //: cancelButton.snp.makeConstraints { make in
        cancelButton.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 14))
            make.leading.equalTo(actualWidth(w: 14))
            //: make.bottom.equalTo(actualHeight(h: -16))
            make.bottom.equalTo(actualHeight(h: -16))
            //: make.size.equalTo(CGSize(width: 126, height: 50))
            make.size.equalTo(CGSize(width: 126, height: 50))
        }
        //: submitButton.snp.makeConstraints { make in
        submitButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(actualWidth(w: -14))
            make.trailing.equalTo(actualWidth(w: -14))
            //: make.bottom.equalTo(actualHeight(h: -16))
            make.bottom.equalTo(actualHeight(h: -16))
            //: make.size.equalTo(CGSize(width: 126, height: 50))
            make.size.equalTo(CGSize(width: 126, height: 50))
        }
    }

    /// 添加数据
    //: private func setupReasons() {
    private func overdo() {
        //: var reasonArray: [String] = []
        var reasonArray: [String] = []
        //: var type = 0
        var type = 0

        //: switch self.reportType {
        switch self.reportType {
        //: case .reportDynamicType, .reportCommentType:
        case .reportDynamicType, .reportCommentType:
            //: type = 6
            type = 6
            //: reasonArray = ["Nudity".localized,
            reasonArray = ["Nudity".localized,
                           //: "Violence".localized,
                           (String(str_partyName.suffix(3)) + str_titleValue.replacingOccurrences(of: "library", with: "le")).localized,
                           //: "Harassment".localized,
                           (String(str_leadingToData) + str_countName.replacingOccurrences(of: "view", with: "t")).localized,
                           //: "Suicide or Self-injury".localized,
                           (String(str_matchValue) + String(str_upData) + str_cellName.replacingOccurrences(of: "bottom", with: "ju")).localized,
                           //: "False Information".localized,
                           (String(str_playerValue.suffix(8)) + String(str_equalVoiceHeadValue) + str_itemData.lowercased()).localized,
                           //: "Spam".localized,
                           "Spam".localized,
                           //: "Hate Speech".localized,
                           (str_okValue.replacingOccurrences(of: "manager", with: "H") + String(str_makeTitle)).localized,
                           //: "Terrorism".localized,
                           (String(str_femaleData.prefix(5)) + "rism").localized,
                           //: "Sale of Illegal or Regulated Goods".localized]
                           String(bytes: str_floorBlockTitle.reversed(), encoding: .utf8)!.localized]

        //: case .reportUserType:
        case .reportUserType:
            //: type = 1
            type = 1
            //: reasonArray = ["Sending disgusting messages".localized,
            reasonArray = [(String(str_appTitle.suffix(4)) + "ing di" + str_styleName.replacingOccurrences(of: "method", with: "s") + "ing m" + str_listValue.replacingOccurrences(of: "tool", with: "es")).localized,
                           //: "Using photos of nudity or drugs".localized,
                           String(bytes: str_welcomeName.reversed(), encoding: .utf8)!.localized,
                           //: "Harassing or sending ads".localized,
                           (String(str_topData.prefix(8)) + String(str_frameName) + String(str_tableData)).localized,
                           //: "Defraud or using fake info".localized,
                           (String(str_statusValue) + String(str_sourceText.suffix(4)) + "using" + String(str_keyData.prefix(6)) + "info").localized,
                           //: "Others".localized]
                           "Others".localized]

        //: case .reportVideo:
        case .reportVideo:
            //: if let reason = IndexStyleAppManager.share.appConfigMode.videoReport["reason"] {
            if let reason = IndexStyleAppManager.share.appConfigMode.videoReport["reason"] {
                //: reasonArray = reason as! [String]
                reasonArray = reason as! [String]
            }

        //: default:
        default:
            //: type = 0
            type = 0
            //: reasonArray = []
            reasonArray = []
        }

        //: for i in 0..<reasonArray.count {
        for i in 0 ..< reasonArray.count {
            //: let model = TalkingReportModel()
            let model = ViewIndexReactiveCompatible()
            //: model.reason = reasonArray[i]
            model.reason = reasonArray[i]
            //: if self.reportType == .reportVideo {
            if self.reportType == .reportVideo {
                //: model.type = "\(i)"
                model.type = "\(i)"
                //: } else {
            } else {
                //: model.type = "\(i+type)"
                model.type = "\(i + type)"
            }
            //: dataArray.append(model)
            dataArray.append(model)
        }

        //: tableView.reloadData()
        tableView.reloadData()
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func sharedBar() {
        //: let tapGesture = UITapGestureRecognizer()
        let tapGesture = UITapGestureRecognizer()
        //: bgView.addGestureRecognizer(tapGesture)
        bgView.addGestureRecognizer(tapGesture)
        //: tapGesture.rx.event.bind { [weak self] recognizer in
        tapGesture.rx.event.bind { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.endEditing(true)
            self.endEditing(true)
        }
        //: .disposed(by: disposeBag)
        .disposed(by: disposeBag)
    }
}
