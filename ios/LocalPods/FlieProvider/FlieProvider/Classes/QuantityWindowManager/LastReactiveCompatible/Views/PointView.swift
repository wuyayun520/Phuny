
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_portEditName:[UInt8] = [0x4,0x9,0x4,0xf,0xc3,0xfe,0xa,0xff,0x0,0xd,0xd5,0xc4,0xbb,0x3,0xfc,0xe,0xbb,0x9,0xa,0xf,0xbb,0xfd,0x0,0x0,0x9,0xbb,0x4,0x8,0xb,0x7,0x0,0x8,0x0,0x9,0xf,0x0,0xff]

fileprivate func varImage(row num: UInt8) -> UInt8 {
    let value = Int(num) + 101
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_me_edit" :*/
fileprivate let str_betweenData:String = "block player ifbtn_"
fileprivate let str_hiddenBackContent:String = "me_editview manager false package"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointView.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import UIKit
import UIKit

//: class TalkingSearchDetailCell: UITableViewCell {
class PointView: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        makeLoad()
        //: setupSubViewsConstraint()
        sumernalRepresentation()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_portEditName.map{varImage(row: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Laod

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.appNameVisualProperty()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var valueLab: UILabel = {
    private lazy var valueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        lab.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.appNameVisualProperty()
        //: lab.textAlignment = .right
        lab.textAlignment = .right
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var rightImgV: UIImageView = {
    private lazy var rightImgV: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.nearTap(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.nearTap(name: (String(str_betweenData.suffix(4)) + String(str_hiddenBackContent.prefix(7)))))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSearchDetailCell {
extension PointView {
    /// 刷新
    //: func refreshCell(title: String, value: String) {
    func permission(title: String, value: String) {
        //: titleLab.text = title
        titleLab.text = title
        //: valueLab.text = value
        valueLab.text = value
    }
}

// MARK: - Layout

//: extension TalkingSearchDetailCell {
extension PointView {
    /// 添加视图
    //: private func setupSubviews() {
    private func makeLoad() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(valueLab)
        contentView.addSubview(valueLab)
        //: contentView.addSubview(rightImgV)
        contentView.addSubview(rightImgV)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sumernalRepresentation() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: valueLab.snp.makeConstraints { make in
        valueLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(rightImgV.snp.leading).offset(-10)
            make.trailing.equalTo(rightImgV.snp.leading).offset(-10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: rightImgV.snp.makeConstraints { make in
        rightImgV.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
    }
}
