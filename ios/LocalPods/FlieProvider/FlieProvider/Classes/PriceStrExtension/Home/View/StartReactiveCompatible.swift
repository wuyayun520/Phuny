
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userName:[UInt8] = [0xd2,0xd7,0xd2,0xdd,0x91,0xcc,0xd8,0xcd,0xce,0xdb,0xa3,0x92,0x89,0xd1,0xca,0xdc,0x89,0xd7,0xd8,0xdd,0x89,0xcb,0xce,0xce,0xd7,0x89,0xd2,0xd6,0xd9,0xd5,0xce,0xd6,0xce,0xd7,0xdd,0xce,0xcd]

fileprivate func asFrom(theme num: UInt8) -> UInt8 {
    let value = Int(num) + 151
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "pic" :*/
fileprivate let str_insideValue:String = "PIC"

/*: "url" :*/
fileprivate let str_collectionData:[Character] = ["u","r","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StartReactiveCompatible.swift
//  FlieProvider
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class StartReactiveCompatible: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, consLet_errorDeviceHeightData, StartReactiveCompatible.fitHeight())
        //: basicUI()
        authorSText()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userName.map{asFrom(theme: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.first
        let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.net(urlStr: dic?["pic"] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(wakeful), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.last
        let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.net(urlStr: dic?["pic"] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(innerCity), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension StartReactiveCompatible {
    //: @objc private func hostBtnClick() {
    @objc private func wakeful() {
        //: let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.first
        let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.first
        //: PostPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        PostPushManager.share.gildTheLilyCount(urlStr: dic?["url"] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func innerCity() {
        //: let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.last
        let dic = IndexStyleAppManager.share.appConfigMode.homeOpAds.last
        //: PostPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        PostPushManager.share.gildTheLilyCount(urlStr: dic?["url"] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension StartReactiveCompatible {
    //: class func getSelfHeight() -> CGFloat {
    class func fitHeight() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue && IndexStyleAppManager.share.appConfigMode.homeOpAds.count > 1 {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue && IndexStyleAppManager.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func authorSText() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue, IndexStyleAppManager.share.appConfigMode.homeOpAds.count > 0 {
        if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue, IndexStyleAppManager.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
