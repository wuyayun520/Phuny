
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_willData:[UInt8] = [0xa9,0xae,0xa9,0xb4,0xe8,0xa3,0xaf,0xa4,0xa5,0xb2,0xfa,0xe9,0xe0,0xa8,0xa1,0xb3,0xe0,0xae,0xaf,0xb4,0xe0,0xa2,0xa5,0xa5,0xae,0xe0,0xa9,0xad,0xb0,0xac,0xa5,0xad,0xa5,0xae,0xb4,0xa5,0xa4]

/*: "icon_window_verification" :*/
fileprivate let str_textData:[Character] = ["i","c","o","n","_","w","i","n","d","o","w","_","v","e","r"]
fileprivate let str_makeName:String = "ifiviewa"

/*: "Go to certify" :*/
fileprivate let str_pathText:[Character] = ["G","o"," ","t","o"," ","c","e","r","t","i","f","y"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_modelName:String = "jump if selfbtn_"
fileprivate let str_frameName:String = "cellram"
fileprivate let str_lengthValue:String = "o_deleteself file lab hidden"

/*: "Authentication is under reviewing" :*/
fileprivate let str_colorData:[UInt8] = [0x67,0x6e,0x69,0x77,0x65,0x69,0x76,0x65,0x72,0x20,0x72,0x65,0x64,0x6e,0x75,0x20,0x73,0x69,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x74,0x6e,0x65,0x68,0x74,0x75,0x41]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StableOnlyUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class StableOnlyUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.makeQuery()
        //: self.setupSubViewsConstraint()
        self.viewsConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_willData.map{$0^192}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: IndexStyleAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.nearTap(name: "icon_window_verification"))
        imag.cling(urlStr: IndexStyleAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.nearTap(name: (String(str_textData) + str_makeName.replacingOccurrences(of: "view", with: "c") + "tion")))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(str_pathText)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 16)
        btn.titleLabel?.font = UIFont.little(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickCapacity), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_modelName.suffix(4)) + "me_pro" + str_frameName.replacingOccurrences(of: "cell", with: "g") + "_phot" + String(str_lengthValue.prefix(8)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enableNextShuttle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension StableOnlyUpView {
    //: @objc private func finishBtnClick() {
    @objc private func clickCapacity() {
        //: dismiss()
        needStatus()
        //: if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isSuccessed.rawValue {
            //: return
            return
                //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.unknown.rawValue {
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
            //: } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if IndexStyleAppManager.share.loginUserMode.isTPAuth == QualityNameLiteral.isOnGoing.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.noblesseExtra(showMsg: String(bytes: str_colorData.reversed(), encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: PostPushManager.share.func__pushUserVerifyController(toast: nil)
            PostPushManager.share.loadToast(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func enableNextShuttle() {
        //: dismiss()
        needStatus()
    }

    //: func show() {
    func site() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func needStatus() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension StableOnlyUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func makeQuery() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(consLet_sessionName / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
