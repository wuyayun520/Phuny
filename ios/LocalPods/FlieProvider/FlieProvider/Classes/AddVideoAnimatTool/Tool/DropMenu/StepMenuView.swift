
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pathName:[UInt8] = [0x1,0x6,0x1,0x1c,0x40,0xb,0x7,0xc,0xd,0x1a,0x52,0x41,0x48,0x0,0x9,0x1b,0x48,0x6,0x7,0x1c,0x48,0xa,0xd,0xd,0x6,0x48,0x1,0x5,0x18,0x4,0xd,0x5,0xd,0x6,0x1c,0xd,0xc]

private func willRedView(camera num: UInt8) -> UInt8 {
    return num ^ 104
}

/*: "VersionGrantMenuCell" :*/
fileprivate let str_titleToData:String = "DropMevoice else label height"
fileprivate let str_tableValue:String = "nuCelltrue down share bag"

/*: "roomId" :*/
fileprivate let str_videoData:[Character] = ["r","o","o","m","I"]
fileprivate let str_requestName:String = "pic"

/*: "type" :*/
fileprivate let str_modelValue:[Character] = ["t","y","p","e"]

/*: "page" :*/
fileprivate let str_kitTitle:String = "patinge"

/*: "icon_chats_pcr" :*/
fileprivate let str_appData:[Character] = ["i","c","o","n","_","c","h","a","t","s","_","p","c","r"]

/*: "All Numbers" :*/
fileprivate let str_timeViewData:String = "center user model tableAll Num"
fileprivate let str_colorAreaValue:[Character] = ["b","e","r","s"]

/*: "all" :*/
fileprivate let str_equalName:[Character] = ["a","l","l"]

/*: "Recent Gifts" :*/
fileprivate let str_greenValue:String = "Recent in right intimate player selected"
fileprivate let str_tableName:String = "club window varGifts"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StepMenuView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: protocol DropDownMemberMenuViewDelegate {
protocol KeyStableViewDelegate {
    //: func  didClickSelectedRow(model: TalkingChatRoomMemberModel)
    func notBuild(model: TotalensityMemberModel)
}

//: class DropDownMemberMenuView: UIView {
class StepMenuView: UIView {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var roomID = ""
    var roomID = ""
    //: var menuDelegate: DropDownMemberMenuViewDelegate?
    var menuDelegate: KeyStableViewDelegate?

    // 蒙层背景color
    //: var coverBgColor: UIColor? {
    var coverBgColor: UIColor? {
        //: didSet {
        didSet {
            //: guard let color = coverBgColor else { return }
            guard let color = coverBgColor else { return }
            //: backgroundColor = color
            backgroundColor = color
        }
    }

    // 主样式color
    //: var menuBgColor: UIColor? {
    var menuBgColor: UIColor? {
        //: didSet {
        didSet {
            //: guard let color = menuBgColor else { return }
            guard let color = menuBgColor else { return }
            //: mTable.backgroundColor = color
            mTable.backgroundColor = color
        }
    }

    // cell高度
    //: public var menuCellHeight = 40.0
    public var menuCellHeight = 40.0
    /**
     *  table最大高度限制
     *  默认：5 * cellHeight
     */
    //: var menuMaxHeight = 300.0
    var menuMaxHeight = 300.0
    /**
     *  小三角高度
     *  45°等腰三角形
     */
    //: public var triangleHeight = Config.DropMenuConfig.triangleHeight
    public var triangleHeight = Config.AcousticPowerConfig.triangleHeight
    /**
     *  调整使下拉优先 当向下偏转屏幕距离足够，优先向下偏转
     */
    //: public var adjustPullDown = Config.DropMenuConfig.adjustPullDown
    public var adjustPullDown = Config.AcousticPowerConfig.adjustPullDown

    //: fileprivate var menuArray = NSMutableArray.init()
    fileprivate var menuArray = NSMutableArray()
    //: var recentmenuArray = NSMutableArray.init()
    var recentmenuArray = NSMutableArray()

    //: fileprivate lazy var contentView: UIView = self.makeContentView()
    fileprivate lazy var contentView: UIView = self.beautyText()
    //: fileprivate lazy var mTable: UITableView = self.makeTableView()
    fileprivate lazy var mTable: UITableView = self.layExaggerate()
    //: fileprivate var anchorRect = CGRect.zero
    fileprivate var anchorRect = CGRect.zero

    //: static let shared = DropDownMemberMenuView(frame: .zero)
    static let shared = StepMenuView(frame: .zero)
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: init(frame: CGRect, anchorView: UIView, roomID: String) {
    init(frame: CGRect, anchorView: UIView, roomID: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: let window = OverdoReactiveCompatible.getWindow()
        let window = OverdoReactiveCompatible.outMax()
        //: self.roomID = roomID
        self.roomID = roomID
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: window.addSubview(self)
        window.addSubview(self)
        //: self.anchorRect = anchorView.convert(anchorView.bounds, to: window)
        self.anchorRect = anchorView.convert(anchorView.bounds, to: window)

        //: setupUI()
        withTo()
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pathName.map{willRedView(camera: $0)}, encoding: .utf8)!)
    }

    //: private func makeContentView() -> UIView {
    private func beautyText() -> UIView {
        //: let view  = UIView()
        let view = UIView()
        //: return view
        return view
    }

    //: private func makeTableView() -> UITableView {
    private func layExaggerate() -> UITableView {
        //: let tableView = UITableView(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.layer.cornerRadius = 5.0
        tableView.layer.cornerRadius = 5.0
        //: tableView.backgroundColor = menuBgColor
        tableView.backgroundColor = menuBgColor
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.addFooterRefresh { [weak self] in
        tableView.randomKey { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.finishIcon()
        }
        //: return tableView
        return tableView
    }

    //: private func footerRefresh() {
    private func finishIcon() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        extraAddData()
    }

    //: private func setupUI() {
    private func withTo() {
        //: coverBgColor = .clear
        coverBgColor = .clear
        //: menuBgColor = UIColor.white
        menuBgColor = UIColor.white
        //: addSubview(contentView)
        addSubview(contentView)
        //: mTable.register(DropMemberMenuCell.self, forCellReuseIdentifier: "DropMemberMenuCell")
        mTable.register(VersionGrantMenuCell.self, forCellReuseIdentifier: (String(str_titleToData.prefix(6)) + "mberMe" + String(str_tableValue.prefix(6))))
        //: contentView.addSubview(mTable)
        contentView.addSubview(mTable)
        //: reqData()
        extraAddData()
    }

    //: private func refreshUI() {
    private func haversack() {
        //: drawmTableFrame()
        errorVideo()
        //: self.mTable.reloadData()
        self.mTable.reloadData()
    }

    //: func reqData() {
    func extraAddData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict["roomId"] = roomID
        //: dict["type"] = "3"
        dict["type"] = "3"
        //: dict["page"] = String(pageIndex)
        dict["page"] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        RoomGiftManager.share.lineToText(params: dict, completion: { array in
            //: self.mTable.endRefresh()
            self.mTable.birth()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }
            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                self.mTable.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mTable.mj_footer?.isHidden = true
                self.mTable.mj_footer?.isHidden = true
                //: return
                return
            }
            //: self.menuArray.addObjects(from: arr)
            self.menuArray.addObjects(from: arr)
            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: let model = TalkingChatRoomMemberModel.init()
                let model = TotalensityMemberModel()
                //: model.headPic = "icon_chats_pcr"
                model.headPic = (String(str_appData))
                //: model.nickname = "All Numbers".localized
                model.nickname = (String(str_timeViewData.suffix(7)) + String(str_colorAreaValue)).localized
                //: model.uid = "all"
                model.uid = "all"
                //: self.menuArray.insert(model, at: 0)
                self.menuArray.insert(model, at: 0)
            }

            //: self.refreshUI()
            self.haversack()

            //: })
        })
    }

    // function
    //: private func animateRemoveView() {
    private func channel() {
        //: UIView.animate(withDuration: 0.5) {
        UIView.animate(withDuration: 0.5) {
            //: self.alpha = 0.0
            self.alpha = 0.0
            //: self.contentView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
            self.contentView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
            //: self.contentView.alpha = 0.0
            self.contentView.alpha = 0.0
            //: } completion: { _ in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }

    //: private func drawmTableFrame() {
    private func errorVideo() {
        //: var layerAnchor = CGPoint.zero
        var layerAnchor = CGPoint.zero
        //: var layerPosition = CGPoint.zero
        var layerPosition = CGPoint.zero
        //: var x: CGFloat = anchorRect.origin.x
        var x: CGFloat = anchorRect.origin.x
        //: var y: CGFloat = 0.0
        var y: CGFloat = 0.0
        //: var h: CGFloat = CGFloat(menuArray.count + self.recentmenuArray.count) * menuCellHeight+40
        var h = CGFloat(menuArray.count + self.recentmenuArray.count) * menuCellHeight + 40
        //: let w: CGFloat = 148.0
        let w: CGFloat = 148.0
        // 最大高度围栏限制
        //: if h > menuMaxHeight {
        if h > menuMaxHeight {
            //: h = menuMaxHeight
            h = menuMaxHeight
        }
        // X中点位置：
        // 居左：table右偏
        // 居右：table左偏
        //: if x > bounds.midX {
        if x > bounds.midX {
            //: x -= 3 * w / 4.0
            x -= 3 * w / 4.0
            //: layerAnchor.x = 1.0
            layerAnchor.x = 1.0
            //: layerPosition.x = x + w
            layerPosition.x = x + w
            //: } else {
        } else {
            //: x -= w / 4.0
            x -= w / 4.0
            //: layerAnchor.x = 0.0
            layerAnchor.x = 0.0
            //: layerPosition.x = x
            layerPosition.x = x
        }
        // 围栏
        //: if x < Config.menuBorderMinMargin {
        if x < Config.menuBorderMinMargin {
            //: x = Config.menuBorderMinMargin
            x = Config.menuBorderMinMargin
            //: layerPosition.x = x
            layerPosition.x = x
        }

        //: if ((x + w ) > bounds.size.width) {
        if (x + w) > bounds.size.width {
            //: x = bounds.size.width - w - Config.menuBorderMinMargin
            x = bounds.size.width - w - Config.menuBorderMinMargin
            //: layerPosition.x = x + w
            layerPosition.x = x + w
        }

        // 需要偏转Y对比中心点 默认比对屏幕中心点
        //: var offsetCenterY = bounds.midY
        var offsetCenterY = bounds.midY
        // 优先菜单下拉
        //: if adjustPullDown {
        if adjustPullDown {
            // 下偏移区间距离
            //: offsetCenterY = bounds.size.height - h - triangleHeight
            offsetCenterY = bounds.size.height - h - triangleHeight
        }
        // Y中心位置
        // 居上：下拉
        // 居下：上拉
        //: if anchorRect.midY < offsetCenterY {
        if anchorRect.midY < offsetCenterY {
            //: y = anchorRect.maxY
            y = anchorRect.maxY
            //: mTable.frame = CGRect(x: 0.0, y: triangleHeight, width: w, height: h)
            mTable.frame = CGRect(x: 0.0, y: triangleHeight, width: w, height: h)
            //: layerAnchor.y = 0.0
            layerAnchor.y = 0.0
            //: layerPosition.y = y
            layerPosition.y = y
            //: } else {
        } else {
            //: y = anchorRect.minY - triangleHeight - h
            y = anchorRect.minY - triangleHeight - h
            //: mTable.frame = CGRect(x: 0.0, y: 0.0, width: w, height: h)
            mTable.frame = CGRect(x: 0.0, y: 0.0, width: w, height: h)
            //: layerAnchor.y = 1.0
            layerAnchor.y = 1.0
            //: layerPosition.y = y + h
            layerPosition.y = y + h
        }
        //: contentView.frame = CGRect(x: x, y: y, width: w, height: h + triangleHeight)
        contentView.frame = CGRect(x: x, y: y, width: w, height: h + triangleHeight)
        //: drawTriangle()
        addList()
        // 动画锚点
        //: contentView.layer.position = layerPosition
        contentView.layer.position = layerPosition
        //: contentView.layer.anchorPoint = layerAnchor
        contentView.layer.anchorPoint = layerAnchor
    }

    //: private func drawTriangle() {
    private func addList() {
        //: var x: CGFloat = anchorRect.midX - contentView.frame.minX
        var x: CGFloat = anchorRect.midX - contentView.frame.minX
        //: var y: CGFloat = 0.0
        var y: CGFloat = 0.0
        //: var p = CGPoint.zero
        var p = CGPoint.zero
        //: var q = CGPoint.zero
        var q = CGPoint.zero
        //: let h: CGFloat = CGFloat(menuArray.count) * menuCellHeight
        let h = CGFloat(menuArray.count) * menuCellHeight
        // 围栏
        //: if x < 2 * triangleHeight {
        if x < 2 * triangleHeight {
            //: x = 2 * triangleHeight
            x = 2 * triangleHeight
        }

        //: if x > (contentView.bounds.width - 2 * triangleHeight) {
        if x > (contentView.bounds.width - 2 * triangleHeight) {
            //: x = (contentView.bounds.width - 2 * triangleHeight)
            x = (contentView.bounds.width - 2 * triangleHeight)
        }

        // 需要偏转Y对比中心点 默认比对屏幕中心点
        //: var offsetCenterY = bounds.midY
        var offsetCenterY = bounds.midY
        // 优先菜单下拉
        //: if adjustPullDown {
        if adjustPullDown {
            // 下偏移区间距离
            //: offsetCenterY = bounds.size.height - h - triangleHeight
            offsetCenterY = bounds.size.height - h - triangleHeight
        }
        // Y中心位置
        // 居上：下拉
        // 居下：上拉
        //: if anchorRect.midY < offsetCenterY {
        if anchorRect.midY < offsetCenterY {
            //: y = 0.0
            y = 0.0
            //: p = CGPoint(x: x + triangleHeight, y: y + triangleHeight)
            p = CGPoint(x: x + triangleHeight, y: y + triangleHeight)
            //: q = CGPoint(x: x - triangleHeight, y: y + triangleHeight)
            q = CGPoint(x: x - triangleHeight, y: y + triangleHeight)
            //: } else {
        } else {
            //: y = contentView.frame.height
            y = contentView.frame.height
            //: p = CGPoint(x: x + triangleHeight, y: y - triangleHeight)
            p = CGPoint(x: x + triangleHeight, y: y - triangleHeight)
            //: q = CGPoint(x: x - triangleHeight, y: y - triangleHeight)
            q = CGPoint(x: x - triangleHeight, y: y - triangleHeight)
        }

        //: let triangleLayer = CAShapeLayer()
        let triangleLayer = CAShapeLayer()
        //: triangleLayer.frame = contentView.bounds
        triangleLayer.frame = contentView.bounds
        //: triangleLayer.fillColor = UIColor.white.cgColor
        triangleLayer.fillColor = UIColor.white.cgColor
        //: let bezier = UIBezierPath()
        let bezier = UIBezierPath()
        //: bezier.move(to: CGPoint(x: x, y: y))
        bezier.move(to: CGPoint(x: x, y: y))
        //: bezier.addLine(to: p)
        bezier.addLine(to: p)
        //: bezier.addLine(to: q)
        bezier.addLine(to: q)
        //: bezier.lineJoinStyle = .round
        bezier.lineJoinStyle = .round
        //: triangleLayer.path = bezier.cgPath
        triangleLayer.path = bezier.cgPath
        //: contentView.layer.addSublayer(triangleLayer)
        contentView.layer.addSublayer(triangleLayer)
    }

    //: public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override public func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: animateRemoveView()
        channel()
    }
}

//: @available(iOS 11.0, *)
@available(iOS 11.0, *)
//: extension DropDownMemberMenuView: UITableViewDelegate, UITableViewDataSource {
extension StepMenuView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if recentmenuArray.count > 0 {
        if recentmenuArray.count > 0 {
            //: return 2
            return 2
        }
        //: return 1
        return 1
    }

    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if recentmenuArray.count > 0 && section == 0 {
        if recentmenuArray.count > 0 && section == 0 {
            //: return recentmenuArray.count
            return recentmenuArray.count
        }
        //: return menuArray.count
        return menuArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return menuCellHeight
        return menuCellHeight
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "DropMemberMenuCell", for: indexPath) as! DropMemberMenuCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_titleToData.prefix(6)) + "mberMe" + String(str_tableValue.prefix(6))), for: indexPath) as! VersionGrantMenuCell
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = TotalensityMemberModel()
        //: if recentmenuArray.count > 0 && indexPath.section == 0 {
        if recentmenuArray.count > 0 && indexPath.section == 0 {
            //: cellModel = recentmenuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = recentmenuArray[indexPath.row] as! TotalensityMemberModel
            //: }else {
        } else {
            //: cellModel = menuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = menuArray[indexPath.row] as! TotalensityMemberModel
        }
        //: cell.setDropMemberMenuCell(model: cellModel)
        cell.cellImage(model: cellModel)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = TotalensityMemberModel()
        //: if recentmenuArray.count > 0 && indexPath.section == 0 {
        if recentmenuArray.count > 0 && indexPath.section == 0 {
            //: cellModel = recentmenuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = recentmenuArray[indexPath.row] as! TotalensityMemberModel
            //: }else {
        } else {
            //: cellModel = menuArray[indexPath.row] as! TalkingChatRoomMemberModel
            cellModel = menuArray[indexPath.row] as! TotalensityMemberModel
        }

        //: animateRemoveView()
        channel()
        //: menuDelegate?.didClickSelectedRow(model: cellModel )
        menuDelegate?.notBuild(model: cellModel)
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headeView = UILabel.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 23))
        let headeView = UILabel(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 23))
        //: headeView.backgroundColor = UIColor.appBgColor()
        headeView.backgroundColor = UIColor.primaryColorBarContent()
        //: let titleLB = UILabel.init()
        let titleLB = UILabel()
        //: titleLB.frame = CGRect(x: 3, y: 5, width: 100, height: 14)
        titleLB.frame = CGRect(x: 3, y: 5, width: 100, height: 14)
        //: titleLB.font = .loadEnable(type: .Medium, fontSize: 12)
        titleLB.font = .loadEnable(type: .Medium, fontSize: 12)
        //: titleLB.textColor = .appValueDetailColor()
        titleLB.textColor = .bringHomeColor()
        //: if recentmenuArray.count > 0 && section == 0 {
        if recentmenuArray.count > 0 && section == 0 {
            //: titleLB.text = "Recent Gifts".localized
            titleLB.text = (String(str_greenValue.prefix(7)) + String(str_tableName.suffix(5))).localized
            //: }else {
        } else {
            //: titleLB.text = "All Numbers".localized
            titleLB.text = (String(str_timeViewData.suffix(7)) + String(str_colorAreaValue)).localized
        }
        //: headeView.addSubview(titleLB)
        headeView.addSubview(titleLB)
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 23.0
        return 23.0
    }
}
