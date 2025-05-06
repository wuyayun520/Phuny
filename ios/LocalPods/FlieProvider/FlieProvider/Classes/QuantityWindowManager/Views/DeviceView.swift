
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toolValue:[UInt8] = [0x6f,0x74,0x6f,0x7a,0x2e,0x69,0x75,0x6a,0x6b,0x78,0x40,0x2f,0x26,0x6e,0x67,0x79,0x26,0x74,0x75,0x7a,0x26,0x68,0x6b,0x6b,0x74,0x26,0x6f,0x73,0x76,0x72,0x6b,0x73,0x6b,0x74,0x7a,0x6b,0x6a]

fileprivate func loopKind(conversation num: UInt8) -> UInt8 {
    let value = Int(num) + 250
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_kong_kong_default" :*/
fileprivate let str_liveData:String = "isizeon"
fileprivate let str_itemValue:String = "label head_kong_"
fileprivate let str_pendingEndName:[Character] = ["l","t"]

/*: "You've got no list yet." :*/
fileprivate let str_makeName:[Character] = ["Y","o","u","\'","v","e"," ","g"]
fileprivate let str_insideData:[Character] = ["o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class DeviceView: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toolValue.map{loopKind(conversation: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.listBoldCell()
        //: self.setupSubViewsConstraint()
        self.root()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearTap(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.nearTap(name: (str_liveData.replacingOccurrences(of: "size", with: "c") + "_kong" + String(str_itemValue.suffix(6)) + "defau" + String(str_pendingEndName))))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.bringHomeColor()
        //: lab.font = .loadEnable(type: .Regular, fontSize: 16)
        lab.font = .loadEnable(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (String(str_makeName) + String(str_insideData)).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension DeviceView {
    // 添加视图
    //: private func setupSubviews() {
    private func listBoldCell() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func root() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(consLet_messageText)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
