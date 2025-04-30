
//: Declare String Begin

/*: "EmptyCollectionReusableView" :*/
fileprivate let str_equalData:String = "EmptyColcolor near live top model"
fileprivate let str_resultActualName:String = "lectfronto"
fileprivate let str_withValue:String = "center height model name varbleView"

/*: "Uncover Your Admirers" :*/
fileprivate let str_voiceTitle:String = "Uncoverdata frame view"
fileprivate let str_upData:String = "make position make equal close Your "

/*: "mf/newFeature/whoLikeMeList" :*/
fileprivate let str_colorValue:String = "back selfmf/new"
fileprivate let str_iconData:String = "re/wdata else height object"
fileprivate let str_shareData:String = "MeListinterval video hidden lab model"

/*: "mf/newFeature/whoVisitorMeList" :*/
fileprivate let str_labelName:[Character] = ["m","f","/","n","e","w","F","e","a","t","u","r","e","/","w","h","o","V","i","s","i","t","o"]
fileprivate let str_responseData:String = "rMeListcall var"

/*: "You've got no list yet." :*/
fileprivate let str_labText:[Character] = ["Y","o","u","\'"]
fileprivate let str_managerData:[Character] = ["v","e"," ","g","o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t","."]

/*: "&type=0" :*/
fileprivate let str_makeValue:String = "&type=0model if"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionFlowLayout.swift
//  FlieProvider
//
//  Created by Charlotte on 2025/2/19.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: enum likeTab: Int {
enum likeTab: Int {
    //: case Likes = 1
    case Likes = 1
    //: case Visitors  = 2
    case Visitors = 2
}

//: class TalkingLikeListVC: TalkingBaseViewController {
class VersionFlowLayout: ServiceRecognizerDelegate {
    // 页面类型
    //: var tabType: likeTab?
    var tabType: likeTab?
    //: var listData = Array<SocialUserListModel>()
    var listData = [VideoDeviceHandyJSON]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        setupAdd()
        //: setupSubViewsConstraint()
        rowName()
        //: firstLoadData()
        firstDataFill()
        //: addNotifications()
        imageRemove()
    }

    // MARK: - Lazy load

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(TalkingLikeListCell.self,
        collectionView.register(ToShowReactiveCompatible.self,
                                //: forCellWithReuseIdentifier: TalkingLikeListCell.className())
                                forCellWithReuseIdentifier: ToShowReactiveCompatible.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(str_equalData.prefix(8)) + str_resultActualName.replacingOccurrences(of: "front", with: "i") + "nReusa" + String(str_withValue.suffix(7))))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.pastObject { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.upwardsSection()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: DeviceView = {
        //: let v = SocialEmptyView()
        let v = DeviceView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipBtn: UIButton = {
    private lazy var vipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Uncover Your Admirers".localized, for: .normal)
        btn.setTitle((String(str_voiceTitle.prefix(7)) + String(str_upData.suffix(6)) + "Admirers").localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 325, height: 54)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 325, height: 54)), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.little(fontSize: 17)
        btn.titleLabel?.font = UIFont.little(fontSize: 17)
        //: btn.addTarget(self, action: #selector(vipBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(afterSquareBackClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLikeListVC {
extension VersionFlowLayout {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func firstDataFill() {
        //: headerRefresh()
        upwardsSection()
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func upwardsSection() {
        //: load_listData()
        tagContent()
    }

    //: func load_listData() {
    func tagContent() {
        //: var url = ""
        var url = ""
        //: if tabType == .Likes {
        if tabType == .Likes {
            //: url = "mf/newFeature/whoLikeMeList"
            url = (String(str_colorValue.suffix(6)) + "Featu" + String(str_iconData.prefix(4)) + "hoLike" + String(str_shareData.prefix(6)))
            //: } else {
        } else {
            //: url = "mf/newFeature/whoVisitorMeList"
            url = (String(str_labelName) + String(str_responseData.prefix(7)))
        }
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SafetyMarginReactiveCompatible()
        //: reqModel.requestPath = url
        reqModel.requestPath = url
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        consLet_listTitle.coloring(model: reqModel) { _, result, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: self.collectionView.endRefresh()
            self.collectionView.birth()
            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count > 0 {
            if arr.count > 0 {
                //: self.listData.removeAll()
                self.listData.removeAll()
            }
            //: for dict in arr {
            for dict in arr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = VideoDeviceHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.listData.append(model)
                    self.listData.append(model)
                }
            }
            //: self.refreshViewStatus()
            self.beginPrepare()
        }
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func startInfo() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        DeviceManagerRequest.readOut { _, _, _ in
            //: self.load_listData()
            self.tagContent()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func beginPrepare() {
        // 是否有数据判断缺省图
        //: if self.listData.count == 0 {
        if self.listData.count == 0 {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (String(str_labText) + String(str_managerData)).localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }
        //: if self.listData.count > 0 && !IndexStyleAppManager.share.loginUserMode.loungePlus {
        if self.listData.count > 0, !IndexStyleAppManager.share.loginUserMode.loungePlus {
            //: vipBtn.isHidden = false
            vipBtn.isHidden = false
            //: } else {
        } else {
            //: vipBtn.isHidden = true
            vipBtn.isHidden = true
        }
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
    }

    //: @objc private func vipBtnClick() {
    @objc private func afterSquareBackClick() {
        //: PostPushManager.share.func__pushToSubscribeAlert(appendParams: "&type=0")
        PostPushManager.share.markParams(appendParams: "&type=0")
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension TalkingLikeListVC: JXPagingViewListViewDelegate {
extension VersionFlowLayout: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UICollectionViewDelegate

//: extension TalkingLikeListVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension VersionFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: return listData.count
        return listData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingLikeListCell.className(), for: indexPath) as! TalkingLikeListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ToShowReactiveCompatible.className(), for: indexPath) as! ToShowReactiveCompatible
        //: var model: SocialUserListModel?
        var model: VideoDeviceHandyJSON?
        //: model = listData[indexPath.row]
        model = listData[indexPath.row]

        //: cell.refreshCell(model, indexRow: indexPath.row)
        cell.colorRow(model, indexRow: indexPath.row)

        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if !IndexStyleAppManager.share.loginUserMode.loungePlus {
        if !IndexStyleAppManager.share.loginUserMode.loungePlus {
            //: vipBtnClick()
            afterSquareBackClick()
            //: } else {
        } else {
            //: var model: SocialUserListModel?
            var model: VideoDeviceHandyJSON?
            //: model = self.listData[indexPath.row]
            model = self.listData[indexPath.row]
            //: let uid = model?.uid ?? 0
            let uid = model?.uid ?? 0
            //: if uid > 0 {
            if uid > 0 {
                //: PostPushManager.share.func__pushToUserDetailVC(uid: "\(uid)")
                PostPushManager.share.miniskirt(uid: "\(uid)")
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((consLet_errorDeviceHeightData - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }
}

// MARK: - Layout

//: extension TalkingLikeListVC {
extension VersionFlowLayout {
    // 添加视图
    //: private func setupSubviews() {
    private func setupAdd() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: self.view.addSubview(vipBtn)
        self.view.addSubview(vipBtn)
        //: self.view.bringSubviewToFront(vipBtn)
        self.view.bringSubviewToFront(vipBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func rowName() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
        //: vipBtn.snp.makeConstraints { make in
        vipBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview().offset(-30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 325, height: 54))
            make.size.equalTo(CGSize(width: 325, height: 54))
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func imageRemove() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.func__requestUserInfo),
                                               selector: #selector(self.startInfo),
                                               //: name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION,
                                               name: consLet_timeKeyValue,
                                               //: object: nil)
                                               object: nil)
    }
}
