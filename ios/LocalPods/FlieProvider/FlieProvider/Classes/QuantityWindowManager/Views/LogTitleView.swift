
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0x92,0x97,0x92,0x9d,0x51,0x8c,0x98,0x8d,0x8e,0x9b,0x63,0x52,0x49,0x91,0x8a,0x9c,0x49,0x97,0x98,0x9d,0x49,0x8b,0x8e,0x8e,0x97,0x49,0x92,0x96,0x99,0x95,0x8e,0x96,0x8e,0x97,0x9d,0x8e,0x8d]

fileprivate func insideMake(action num: UInt8) -> UInt8 {
    let value = Int(num) + 215
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let str_touchData:String = "nav_bfrom case"
fileprivate let str_sizeValue:String = "bottom index heightack_"
fileprivate let str_tapName:[Character] = ["n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LogTitleView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class SocialRankTitleView: UIView {
class LogTitleView: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.periodicTable()
        //: self.setupSubViewsConstraint()
        self.topWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.map{insideMake(action: $0)}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.nearTap(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearTap(name: (String(str_touchData.prefix(5)) + "ack_bl" + String(str_sizeValue.suffix(4)) + String(str_tapName))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(employmentMention), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension LogTitleView {
    //: @objc func registerBackAction() {
    @objc func employmentMention() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        userRead()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension LogTitleView {
    //: private func setupSubviews() {
    private func periodicTable() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func topWith() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(consLet_netViewValue)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
