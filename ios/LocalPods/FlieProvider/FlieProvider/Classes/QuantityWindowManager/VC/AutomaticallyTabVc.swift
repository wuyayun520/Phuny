
//: Declare String Begin

/*: "Activity" :*/
fileprivate let str_matchName:String = "Activityif component data next container"

/*: "Charm" :*/
fileprivate let str_shareData:String = "Charmtitle view beyond define equal"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dataContent:[UInt8] = [0xb0,0xb5,0xb0,0xbb,0x6f,0xaa,0xb6,0xab,0xac,0xb9,0x81,0x70,0x67,0xaf,0xa8,0xba,0x67,0xb5,0xb6,0xbb,0x67,0xa9,0xac,0xac,0xb5,0x67,0xb0,0xb4,0xb7,0xb3,0xac,0xb4,0xac,0xb5,0xbb,0xac,0xab]

fileprivate func kitTap(top num: UInt8) -> UInt8 {
    let value = Int(num) + 185
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_rank_tabList" :*/
fileprivate let str_modelData:String = "target onbg_r"
fileprivate let str_errorName:String = "bListreturn area convert"

/*: "Yesterday" :*/
fileprivate let str_controlValue:String = "Yestephoto effect black tab"
fileprivate let str_timeData:[Character] = ["r","d","a","y"]

/*: "Today" :*/
fileprivate let str_makeText:[Character] = ["T","o","d","a","y"]

/*: "Weekly" :*/
fileprivate let str_soundTitle:[Character] = ["W","e","e","k","l","y"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AutomaticallyTabVc.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import Then
import Then

//: class SocialRankTabVC: TalkingBaseViewController {
class AutomaticallyTabVc: ServiceRecognizerDelegate {
    // MARK: params

    //: let titleViewWidth: CGFloat = 150+20*3
    let titleViewWidth: CGFloat = 150 + 20 * 3
    //: let titles = ["Activity".localized, "Charm".localized]
    let titles = [(String(str_matchName.prefix(8))).localized, "Charm".localized]
    //: var rankInfoModel = SocialRankModel()
    var rankInfoModel = PrizeEventMeasurable()

    //: let segmentedDataSource = JXSegmentedTitleDataSource()
    let segmentedDataSource = JXSegmentedTitleDataSource()
    //: let segmentedView = JXSegmentedView()
    let segmentedView = JXSegmentedView()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.hideNavi = true
        self.hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dataContent.map{kitTap(top: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: setupSubviews()
        modelWith()
        //: requestAllData()
        nextView()
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()

        //: listContainerView.frame = CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: ScreenHeight-StatusBarNavigationBarHeight)
        listContainerView.frame = CGRect(x: 0, y: consLet_tabValue, width: consLet_errorDeviceHeightData, height: consLet_sessionName - consLet_tabValue)
    }

    // MARK: - Lazy Load

    //: lazy var titleView = SocialRankTitleView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarNavigationBarHeight)).then {
    lazy var titleView = LogTitleView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_tabValue)).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
    }

    //: lazy var listContainerView: JXSegmentedListContainerView! = {
    lazy var listContainerView: JXSegmentedListContainerView! = //: return JXSegmentedListContainerView(dataSource: self)
        JXSegmentedListContainerView(dataSource: self)
    //: }()

    //: let bgImgView = UIImageView().then {
    let bgImgView = UIImageView().then {
        //: $0.frame = UIScreen.main.bounds
        $0.frame = UIScreen.main.bounds
        //: $0.image = UIImage.nearTap(name: "bg_rank_tabList")
        $0.image = UIImage.nearTap(name: (String(str_modelData.suffix(4)) + "ank_ta" + String(str_errorName.prefix(5))))
    }
}

// MARK: - request

//: extension SocialRankTabVC {
extension AutomaticallyTabVc {
    //: func requestAllData() {
    func nextView() {
        //: SocialRequestManager.getRankListRequest(topName: nil, periodName: nil) {[weak self] succeed, result, errorModel in
        SpectralColourRequestManager.redirect(topName: nil, periodName: nil) { [weak self] succeed, result, _ in

            //: guard let self = self else { return }
            guard let self = self else { return }

            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: self.rankInfoModel = SocialRankModel.deserialize(from: result)!
            self.rankInfoModel = PrizeEventMeasurable.deserialize(from: result)!
            //: self.segmentedView.reloadData()
            self.segmentedView.reloadData()
        }
    }
}

// MARK: - Event

//: extension SocialRankTabVC {
extension AutomaticallyTabVc {
    //: private func setupBindings() {
    private func methodPlus() {}
}

// MARK: - JXSegmentedDelegate

//: extension SocialRankTabVC: JXSegmentedListContainerViewDataSource {
extension AutomaticallyTabVc: JXSegmentedListContainerViewDataSource {
    //: func numberOfLists(in listContainerView: JXSegmentedListContainerView) -> Int {
    func numberOfLists(in _: JXSegmentedListContainerView) -> Int {
        //: if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
        if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
            //: return titleDataSource.dataSource.count
            return titleDataSource.dataSource.count
        }
        //: return 0
        return 0
    }

    //: func listContainerView(_ listContainerView: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
    func listContainerView(_: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
        //: let vc = SocialRankChildVC()
        let vc = ToListDelegate()
        //: let subTitle = titles[index]
        let subTitle = titles[index]
        //: if subTitle == "Activity".localized {
        if subTitle == (String(str_matchName.prefix(8))).localized {
            //: vc.rankPeriodModel = self.rankInfoModel.activity ?? SocialPeriodModel()
            vc.rankPeriodModel = self.rankInfoModel.activity ?? StartMakeHandyJSON()
            //: } else {
        } else {
            //: vc.rankPeriodModel = self.rankInfoModel.charm ?? SocialPeriodModel()
            vc.rankPeriodModel = self.rankInfoModel.charm ?? StartMakeHandyJSON()
        }
        //: vc.titles = ["Yesterday".localized, "Today".localized, "Weekly".localized]
        vc.titles = [(String(str_controlValue.prefix(5)) + String(str_timeData)).localized, "Today".localized, "Weekly".localized]
        //: vc.type = index
        vc.type = index
        //: return vc
        return vc
    }
}

// MARK: - Layout

//: extension SocialRankTabVC {
extension AutomaticallyTabVc {
    // 添加视图
    //: private func setupSubviews() {
    private func modelWith() {
        //: view.addSubview(bgImgView)
        view.addSubview(bgImgView)
        //: view.addSubview(titleView)
        view.addSubview(titleView)
        //: segmentedDataSource.itemWidth = 75
        segmentedDataSource.itemWidth = 75
        //: segmentedDataSource.itemSpacing = 20
        segmentedDataSource.itemSpacing = 20
        //: segmentedDataSource.titles = titles
        segmentedDataSource.titles = titles
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.titleNormalColor = UIColor.white.withAlphaComponent(0.7)
        segmentedDataSource.titleNormalColor = UIColor.white.withAlphaComponent(0.7)
        //: segmentedDataSource.titleSelectedColor = UIColor.white
        segmentedDataSource.titleSelectedColor = UIColor.white
        //: segmentedDataSource.titleNormalFont = .loadEnable(type: .Medium, fontSize: 18)
        segmentedDataSource.titleNormalFont = .loadEnable(type: .Medium, fontSize: 18)
        //: segmentedDataSource.titleSelectedFont = .loadEnable(type: .Medium, fontSize: 22)
        segmentedDataSource.titleSelectedFont = .loadEnable(type: .Medium, fontSize: 22)
        //: segmentedDataSource.itemWidthIncrement = 0
        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 22.0
        indicator.indicatorWidth = 22.0
        //: indicator.lineStyle = .lengthen
        indicator.lineStyle = .lengthen
        //: indicator.indicatorColor = .white
        indicator.indicatorColor = .white

        //: segmentedView.frame = CGRect(x: (ScreenWidth-titleViewWidth)/2.0, y: StatusBarNavigationBarHeight-actualHeight(h: 45), width: titleViewWidth, height: actualHeight(h: 30))
        segmentedView.frame = CGRect(x: (consLet_errorDeviceHeightData - titleViewWidth) / 2.0, y: consLet_tabValue - actualHeight(h: 45), width: titleViewWidth, height: actualHeight(h: 30))
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: titleView.addSubview(segmentedView)
        titleView.addSubview(segmentedView)

        //: segmentedView.listContainer = listContainerView
        segmentedView.listContainer = listContainerView
        //: view.addSubview(listContainerView)
        view.addSubview(listContainerView)
    }
}
