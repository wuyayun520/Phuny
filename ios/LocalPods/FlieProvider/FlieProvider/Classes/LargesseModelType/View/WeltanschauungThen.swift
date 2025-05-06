
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_errorName:[UInt8] = [0x94,0x99,0x94,0x9f,0x53,0x8e,0x9a,0x8f,0x90,0x9d,0x65,0x54,0x4b,0x93,0x8c,0x9e,0x4b,0x99,0x9a,0x9f,0x4b,0x8d,0x90,0x90,0x99,0x4b,0x94,0x98,0x9b,0x97,0x90,0x98,0x90,0x99,0x9f,0x90,0x8f]

fileprivate func shareUser(domain num: UInt8) -> UInt8 {
    let value = Int(num) - 43
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Sun" :*/
fileprivate let str_bottomCurrentName:[Character] = ["S","u","n"]

/*: "Mon" :*/
fileprivate let str_tableIntervalervalData:[Character] = ["M","o","n"]

/*: "Tue" :*/
fileprivate let str_playTitle:[Character] = ["T","u","e"]

/*: "Wed" :*/
fileprivate let str_endCallName:String = "Wedextension social equal"

/*: "Thu" :*/
fileprivate let str_viewGameKindData:String = "start in commentThu"

/*: "Fri" :*/
fileprivate let str_toText:String = "Frilabel share view"

/*: "Sat" :*/
fileprivate let str_actionTitle:String = "Satlab table sub"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WeltanschauungThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: let TalkingDailyHeaderView_H = actualWidth(w: 96)
let consLet_timeName = actualWidth(w: 96)

//: class TalkingDailyHeaderView: UICollectionReusableView {
class WeltanschauungThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_errorName.map{shareUser(domain: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.mark()
        //: self.setupSubViewsConstraint()
        self.contentConstraint()
    }

    // MARK: - Lazy Laod

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.little(fontSize: 18)
        lab.font = UIFont.little(fontSize: 18)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.appNameVisualProperty()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var weekArr: [String] = {
    private lazy var weekArr: [String] = //: return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    //: }()
}

// MARK: - Layout

//: extension TalkingDailyHeaderView {
extension WeltanschauungThen {
    // 添加视图
    //: private func setupSubviews() {
    private func mark() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.Corner(width: ScreenWidth, height: TalkingDailyHeaderView_H, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))
        self.toColorRadii(width: consLet_errorDeviceHeightData, height: consLet_timeName, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))

        //: self.addSubview(titleLab)
        self.addSubview(titleLab)

        //: var lastLab: UILabel?
        var lastLab: UILabel?
        //: for (index, title) in weekArr.enumerated() {
        for (index, title) in weekArr.enumerated() {
            //: let lab = UILabel()
            let lab = UILabel()
            //: lab.text = title.localized
            lab.text = title.localized
            //: lab.textColor = UIColor.appTitleColor()
            lab.textColor = UIColor.appNameVisualProperty()
            //: lab.textAlignment = .center
            lab.textAlignment = .center
            //: lab.font = UIFont.exceptEqual(fontSize: 16)
            lab.font = UIFont.exceptEqual(fontSize: 16)
            //: self.addSubview(lab)
            self.addSubview(lab)

            //: let width = ScreenWidth/CGFloat(weekArr.count)
            let width = consLet_errorDeviceHeightData / CGFloat(weekArr.count)
            //: if index == 0 {
            if index == 0 { // 首个
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(0)
                    make.leading.equalTo(0)
                    //: make.top.equalTo(actualWidth(w: 66))
                    make.top.equalTo(actualWidth(w: 66))
                    //: make.width.equalTo(width)
                    make.width.equalTo(width)
                    //: make.bottom.equalToSuperview()
                    make.bottom.equalToSuperview()
                }
                //: } else {
            } else {
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(lastLab!.snp.trailing)
                    make.leading.equalTo(lastLab!.snp.trailing)
                    //: make.top.width.bottom.equalTo(lastLab!)
                    make.top.width.bottom.equalTo(lastLab!)
                }
            }
            //: lastLab = lab
            lastLab = lab
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func contentConstraint() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 16))
            make.top.equalTo(actualWidth(w: 16))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
