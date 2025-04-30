
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_starData:[UInt8] = [0xae,0xa9,0xae,0xb3,0xef,0xa4,0xa8,0xa3,0xa2,0xb5,0xfd,0xee,0xe7,0xaf,0xa6,0xb4,0xe7,0xa9,0xa8,0xb3,0xe7,0xa5,0xa2,0xa2,0xa9,0xe7,0xae,0xaa,0xb7,0xab,0xa2,0xaa,0xa2,0xa9,0xb3,0xa2,0xa3]

/*: "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let str_contentText:[UInt8] = [0xb8,0x8e,0x94,0xc1,0x82,0x80,0x8f,0xc1,0x93,0x84,0x82,0x84,0x88,0x97,0x84,0xc1,0x80,0xc1,0x86,0x8e,0x8d,0x85,0xc1,0x82,0x8e,0x88,0x8f,0x92,0xc1,0x83,0x8e,0x8f,0x94,0x92,0xc1,0x8e,0x8f,0x82,0x84,0xc1,0x80,0xc1,0x85,0x80,0x98,0xc1,0x96,0x89,0x88,0x8d,0x84,0xc1,0x95,0x89,0x84,0xc1,0xc3,0xad,0x8e,0x94,0x8f,0x86,0x84,0xc1,0x91,0x8d,0x94,0x92,0xc3,0xc1,0x92,0x94,0x83,0x92,0x82,0x93,0x88,0x91,0x95,0x88,0x8e,0x8f,0xc1,0x92,0x84,0x93,0x97,0x88,0x82,0x84,0xc1,0x88,0x92,0xc1,0x80,0x82,0x95,0x88,0x97,0x84,0xcf,0xb5,0x89,0x84,0xc1,0x95,0x88,0x8c,0x84,0xc1,0x8e,0x87,0xc1,0x95,0x89,0x84,0xc1,0x85,0x80,0x88,0x8d,0x98,0xc1,0x86,0x8e,0x8d,0x85,0xc1,0x82,0x8e,0x88,0x8f,0x92,0xc1,0x96,0x88,0x8d,0x8d,0xc1,0x83,0x84,0xc1,0x83,0x80,0x92,0x84,0x85,0xc1,0x8e,0x8f,0xc1,0x95,0x89,0x84,0xc1,0xb4,0xb2,0xc1,0xa4,0x80,0x92,0x95,0x84,0x93,0x8f,0xc1,0xb5,0x88,0x8c,0x84,0xc1,0xbb,0x8e,0x8f,0x84,0xcf]

private func flushSuper(user num: UInt8) -> UInt8 {
    return num ^ 225
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventEqualThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class EventEqualThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_starData.map{$0^199}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.magnitudeerfoilSubviews()
        //: self.setupSubViewsConstraint()
        self.player()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.toColorRadii(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: str_contentText.map{flushSuper(user: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.exceptEqual(fontSize: 14)
        lab.font = UIFont.exceptEqual(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.bringHomeColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension EventEqualThen {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func callOpen() -> CGFloat {
        //: if IndexStyleAppManager.share.loginUserMode.isSignIn {
        if IndexStyleAppManager.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension EventEqualThen {
    // 添加视图
    //: private func setupSubviews() {
    private func magnitudeerfoilSubviews() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func player() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
