
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_visibleTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_faceverification_guide_ok" :*/
fileprivate let str_pathData:[Character] = ["i","c","o","n","_","f","a","c","e","v","e","r","i","f","i"]
fileprivate let str_toTitle:String = "CATI"
fileprivate let str_textName:String = "border self var heightide_ok"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let str_tabIconName:[UInt8] = [0x71,0x57,0x40,0x4f,0x4b,0x56,0x56,0x47,0x46,0x2,0x51,0x57,0x41,0x41,0x47,0x51,0x51,0x44,0x57,0x4e,0x4e,0x5b,0xe,0x2,0x52,0x4e,0x47,0x43,0x51,0x47,0x2,0x55,0x43,0x4b,0x56,0x2,0x28,0x2,0x52,0x43,0x56,0x4b,0x47,0x4c,0x56,0x4e,0x5b,0x2,0x44,0x4d,0x50,0x2,0x50,0x47,0x54,0x4b,0x47,0x55,0xc]

private func labelBack(add num: UInt8) -> UInt8 {
    return num ^ 34
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HalfVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class HalfVerificationView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        withViews()
        //: layoutSubViewsConstraints()
        cardEvent()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_visibleTitle.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearTap(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.nearTap(name: (String(str_pathData) + str_toTitle.lowercased() + "on_gu" + String(str_textName.suffix(6))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: str_tabIconName.map{labelBack(add: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 18)
        lb.font = .loadEnable(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension HalfVerificationView {
    //: func createSubViews() {
    func withViews() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func cardEvent() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
