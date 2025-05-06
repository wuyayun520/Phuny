
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_dataTitle:String = "view log letbg_sho"
fileprivate let str_cameraSessionTableName:[Character] = ["u","y","e","_","m","i","s","a","n","g","u","a","n"]
fileprivate let str_fromValue:String = "else target manager mode addg_de"

/*: "Popular" :*/
fileprivate let str_anonymousText:String = "path clean returnPopula"
fileprivate let str_maxWithText:String = "head"

/*: "777777" :*/
fileprivate let str_onlineValue:[Character] = ["7","7","7","7","7"]
fileprivate let str_makeTitle:String = "share"

/*: "icon_moment_news_nor" :*/
fileprivate let str_smallData:String = "tabcon"
fileprivate let str_normalName:String = "var first_news"

/*: "icon_free_pre" :*/
fileprivate let str_modelName:String = "itextn"
fileprivate let str_userTitle:String = "rof"

/*: "num" :*/
fileprivate let str_sizeValue:String = "nviewm"

/*: "99+" :*/
fileprivate let str_giftName:[UInt8] = [0x40,0x40,0x52]

private func eventTarget(name num: UInt8) -> UInt8 {
    return num ^ 121
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class ParadigmViewController: ServiceRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        item()
        //: setupSubViewsConstraint()
        doColor()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(translate), name: consLet_changeNameData, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        currentNum()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearTap(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.nearTap(name: (String(str_dataTitle.suffix(6)) + String(str_cameraSessionTableName) + String(str_fromValue.suffix(4)) + "fault")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: ExpressReactiveCompatible = {
        //: let vc = QYSlideNavigationViewController()
        let vc = ExpressReactiveCompatible()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = consLet_messageText
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [PopularHiddenDataSource()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = ["Popular".localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .loadEnable(type: .Medium, fontSize: 16)
        vc.titleFont = .loadEnable(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .loadEnable(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .loadEnable(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: "777777")!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.appNameVisualProperty()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (str_smallData.replacingOccurrences(of: "tab", with: "i") + "_moment" + String(str_normalName.suffix(5)) + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(busyDetail), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: HalfLabel = {
        //: let label = BadgeLab()
        let label = HalfLabel()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearTap(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (str_modelName.replacingOccurrences(of: "text", with: "co") + "_free_p" + str_userTitle.replacingOccurrences(of: "of", with: "e"))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cuttingEdge), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension ParadigmViewController {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func currentNum() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        GiftStoreReactiveCompatible.colorCompletion { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.deciding(num: json["num"].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension ParadigmViewController {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func busyDetail() {
        //: refreshNewsbadge(num: 0)
        deciding(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = ContextMonthReactiveCompatible()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func translate() {
        //: freeBtnClickEvent()
        cuttingEdge()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func cuttingEdge() {
        //: if IndexStyleAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue, IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if IndexStyleAppManager.share.loginUserMode.isTPAuth != QualityNameLiteral.isSuccessed.rawValue, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            DeviceManagerRequest.readOut { _, _, _ in
                //: if !IndexStyleAppManager.share.loginUserMode.isNaUser,
                if !IndexStyleAppManager.share.loginUserMode.isNaUser,
                   //: IndexStyleAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   IndexStyleAppManager.share.loginUserMode.isTPAuth != QualityNameLiteral.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    QuantityWindowManager.shared.sectionIntervalimate()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.unrestrained()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            unrestrained()
        }
    }

    //: private func pushFreeVC() {
    private func unrestrained() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = consLet_partyTitle.bool(forKey: consLet_viewText)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = LinguisticContextViewDelegate()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any UncommittedObjectProtocol
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        SumTipsView().viewWith {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - StyleNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension ParadigmViewController: StyleNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func custom(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension ParadigmViewController {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func deciding(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func item() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func doColor() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + consLet_netViewValue)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
