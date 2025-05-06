
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_methodValue:[UInt8] = [0xd0,0xd7,0xd0,0xcd,0x91,0xda,0xd6,0xdd,0xdc,0xcb,0x83,0x90,0x99,0xd1,0xd8,0xca,0x99,0xd7,0xd6,0xcd,0x99,0xdb,0xdc,0xdc,0xd7,0x99,0xd0,0xd4,0xc9,0xd5,0xdc,0xd4,0xdc,0xd7,0xcd,0xdc,0xdd]

private func pinRef(index num: UInt8) -> UInt8 {
    return num ^ 185
}

/*: "bg_others_shadow_up" :*/
fileprivate let str_modelData:[Character] = ["b","g","_","o","t","h","e","r","s","_","s","h","a","d","o","w","_","u","p"]

/*: "nav_back_black_nor" :*/
fileprivate let str_popTitle:[Character] = ["n","a","v","_","b"]
fileprivate let str_mainName:[Character] = ["a","c","k","_","b","l","a","c","k","_","n","o","r"]

/*: "btn_detail_more" :*/
fileprivate let str_toName:[Character] = ["b","t","n","_","d","e","t","a","i","l","_","m","o"]
fileprivate let str_sizeData:[Character] = ["r","e"]

/*: "Shielding Success" :*/
fileprivate let str_moreStyleData:[Character] = ["S","h","i","e","l","d","i","n","g"]
fileprivate let str_barName:String = " Successitem text"

/*: "Unmasking Succeeded" :*/
fileprivate let str_nextValue:[Character] = ["U","n","m","a","s","k","i","n","g"," ","S","u","c","c","e","e","d","e"]
fileprivate let str_hiddenData:String = "user"

/*: "Report" :*/
fileprivate let str_serviceGiftData:[Character] = ["R","e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let str_liveContent:String = "leading text cameraRemvoe"
fileprivate let str_sharedNameValue:String = "load"

/*: "Block" :*/
fileprivate let str_equalText:[Character] = ["B","l","o","c","k"]

/*: "Cancel" :*/
fileprivate let str_bottomTitle:String = "Cancemanager extra manager"
fileprivate let str_collectionText:[Character] = ["l"]

/*: "OK" :*/
fileprivate let str_makeTitle:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NaviMonthThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class NaviMonthThen: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = MonthLabelHandyJSON() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        omitSubviews()
        //: setupSubViewsConstraint()
        requestConstraint()
        //: bindInteraction()
        adhereContactCounteraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_methodValue.map{pinRef(index: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearTap(name: "bg_others_shadow_up")
        imgV.image = UIImage.nearTap(name: (String(str_modelData)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearTap(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearTap(name: (String(str_popTitle) + String(str_mainName))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(actionDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearTap(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearTap(name: (String(str_toName) + String(str_sizeData))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension NaviMonthThen {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func subjectMatter() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        HiddenRequestManager.clickIcon(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(str_moreStyleData) + String(str_barName.prefix(8))).localized : (String(str_nextValue) + str_hiddenData.replacingOccurrences(of: "user", with: "d")).localized
                //: ProgressHUD.toast(toastStr)
                DeviceFailThen.picToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension NaviMonthThen {
    //: @objc private func clickBackButtonAction() {
    @objc private func actionDown() {
        //: PostPushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        PostPushManager.share.overDoinglineVc()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func giftAction() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = ValueLabelReactiveCompatible(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = ["Report".localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(str_liveContent.suffix(6)) + " Blo" + str_sharedNameValue.replacingOccurrences(of: "load", with: "ck")).localized : "Block".localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.sizeTitle(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.searched()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.buildDown()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func searched() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = ValueDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.thirdView(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func buildDown() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            subjectMatter()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        EqualAlertShow.showConfig(title: nil, message: consLet_messageName, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: self.req_pullBlackRequest()
            self.subjectMatter()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension NaviMonthThen {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func colorMinimize(_ userModel: MonthLabelHandyJSON) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == IndexStyleAppManager.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == IndexStyleAppManager.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func omitSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func requestConstraint() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(consLet_messageText)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(consLet_messageText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: consLet_messageText))
        }
    }

    //: private func bindInteraction() {
    private func adhereContactCounteraction() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.giftAction()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
