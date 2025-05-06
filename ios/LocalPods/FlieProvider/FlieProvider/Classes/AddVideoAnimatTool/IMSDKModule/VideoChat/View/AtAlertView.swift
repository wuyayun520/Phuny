
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pathContent:[UInt8] = [0x44,0x43,0x44,0x59,0x5,0x4e,0x42,0x49,0x48,0x5f,0x17,0x4,0xd,0x45,0x4c,0x5e,0xd,0x43,0x42,0x59,0xd,0x4f,0x48,0x48,0x43,0xd,0x44,0x40,0x5d,0x41,0x48,0x40,0x48,0x43,0x59,0x48,0x49]

private func withJump(title num: UInt8) -> UInt8 {
    return num ^ 45
}

/*: "bg_vip" :*/
fileprivate let str_allValue:[Character] = ["b"]
fileprivate let str_contentStatusText:String = "g_vipto size bottom"

/*: "OK" :*/
fileprivate let str_collectionData:String = "Olist"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtAlertView.swift
//  AbroadTalking
//
//  Created by young on 2023/12/1.
//

//: import UIKit
import UIKit

//: class TalkingFemaleVIPCallAlertView: UIView {
class AtAlertView: UIView {
    //: var callBlock: ((_ type: CallMenuType) -> Void)?
    var callBlock: ((_ type: HalfTransformable) -> Void)?
    //: private var popView: TalkingPopView?
    private var popView: BirdSEyeView?
    //: private var content = "" // 展示内容
    private var content = "" // 展示内容
    //: private var type = CallMenuType.VideoCall
    private var type = HalfTransformable.VideoCall // 类型

    //: init(type: CallMenuType, content: String) {
    init(type: HalfTransformable, content: String) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.content = content
        self.content = content
        //: self.type = type
        self.type = type
        //: setupSubviews()
        hide()
        //: setupSubViewsConstraint()
        picError()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pathContent.map{withJump(title: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearTap(name: "bg_vip")
        iamg.image = UIImage.nearTap(name: "bg_vip")
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 15)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = self.content
        lab.text = self.content
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 18)
        btn.titleLabel?.font = UIFont.little(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(okButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hunkyDory), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFemaleVIPCallAlertView {
extension AtAlertView {
    //: func show() {
    func atAdd() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func tabRow() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }

    /// ok按钮点击事件
    //: @objc private func okButtonClick() {
    @objc private func hunkyDory() {
        //: callBlock?(self.type)
        callBlock?(self.type)
        //: dismiss()
        tabRow()
    }
}

// MARK: - Layout

//: extension TalkingFemaleVIPCallAlertView {
extension AtAlertView {
    /// 添加视图
    //: private func setupSubviews() {
    private func hide() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func picError() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 295))
            make.width.equalTo(actualWidth(w: 295))
            //: make.height.greaterThanOrEqualTo(actualWidth(w: 255))
            make.height.greaterThanOrEqualTo(actualWidth(w: 255))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(22)
            make.top.equalTo(22)
            //: make.width.height.equalTo(actualWidth(w: 72))
            make.width.height.equalTo(actualWidth(w: 72))
        }

        //: contentLab.preferredMaxLayoutWidth = actualWidth(w: 297) - 60
        contentLab.preferredMaxLayoutWidth = actualWidth(w: 297) - 60
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(20)
            make.top.equalTo(topIcon.snp.bottom).offset(20)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(20)
            make.top.equalTo(contentLab.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }
    }
}
