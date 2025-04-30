
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerValue:[UInt8] = [0xbb,0xc0,0xbb,0xc6,0x7a,0xb5,0xc1,0xb6,0xb7,0xc4,0x8c,0x7b,0x72,0xba,0xb3,0xc5,0x72,0xc0,0xc1,0xc6,0x72,0xb4,0xb7,0xb7,0xc0,0x72,0xbb,0xbf,0xc2,0xbe,0xb7,0xbf,0xb7,0xc0,0xc6,0xb7,0xb6]

fileprivate func giftSex(to num: UInt8) -> UInt8 {
    let value = Int(num) + 174
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MatronymicContentTagHeaderView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagHeaderView: UICollectionReusableView {
class MatronymicContentTagHeaderView: UICollectionReusableView {
    //: var label = UILabel()
    var label = UILabel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.addSubview(label)
        self.addSubview(label)
        //: label.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        label.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.appNameVisualProperty()
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerValue.map{giftSex(to: $0)}, encoding: .utf8)!)
    }
}
