
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_valueVideoData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_daily_todayBg_nor" :*/
fileprivate let str_moreSessionData:[Character] = ["b","t","n","_","d","a","i","l","y","_","t"]
fileprivate let str_giftValue:[Character] = ["o","d","a","y","B","g","_","n","o","r"]

/*: "btn_daily_style1_nor" :*/
fileprivate let str_makeText:[Character] = ["b","t","n","_","d","a","i","l","y","_","s","t","y","l","e","1","_","n","o"]
fileprivate let str_errorData:String = "page"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let str_normalText:String = "btn_dalet true do content"
fileprivate let str_contentData:String = "self shareddayLight_"
fileprivate let str_managerContent:String = "nocomponent"

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let str_voiceModelAppName:[Character] = ["b","t","n","_","d","a","i","l","y"]
fileprivate let str_subTitle:String = "voice data_notS"

/*: "btn_daily_signIn_nor" :*/
fileprivate let str_centerName:[Character] = ["b","t","n","_","d","a","i","l"]
fileprivate let str_gestureData:String = "y_signvar gender live string"
fileprivate let str_statusName:String = "In_norself data"

/*: "btn_daily_today_nor" :*/
fileprivate let str_shareData:[Character] = ["b","t","n","_","d","a","i","l","y","_","t"]
fileprivate let str_imageData:String = "ology"

/*: "#FF8F1A" :*/
fileprivate let str_createValue:String = "#FF8F1Aimage color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MechanicallyReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class MechanicallyReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueVideoData.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.beforeTitle()
        //: self.setupSubViewsConstraint()
        self.packet()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "btn_daily_todayBg_nor")
        img.image = UIImage.nearTap(name: (String(str_moreSessionData) + String(str_giftValue)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "btn_daily_style1_nor")
        img.image = UIImage.nearTap(name: (String(str_makeText) + str_errorData.replacingOccurrences(of: "page", with: "r")))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "btn_daily_todayLight_nor")
        img.image = UIImage.nearTap(name: (String(str_normalText.prefix(6)) + "ily_to" + String(str_contentData.suffix(9)) + str_managerContent.replacingOccurrences(of: "component", with: "r")))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.little(fontSize: 14)
        lab.font = UIFont.little(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension MechanicallyReusableView {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func imaginationImageModel(model: ServiceReactiveCompatible) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.exceptEqual(fontSize: 17)
        dayLab.font = UIFont.exceptEqual(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.nearTap(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.nearTap(name: (String(str_voiceModelAppName) + String(str_subTitle.suffix(5)) + "ignIn_nor"))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.bringHomeColor()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.nearTap(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.nearTap(name: (String(str_centerName) + String(str_gestureData.prefix(6)) + String(str_statusName.prefix(6))))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.bringHomeColor()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.nearTap(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.nearTap(name: (String(str_shareData) + str_imageData.replacingOccurrences(of: "log", with: "da") + "_nor"))
            //: dayLab.font = UIFont.little(fontSize: 17)
            dayLab.font = UIFont.little(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: "#FF8F1A")

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.nearTap(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.nearTap(name: (String(str_shareData) + str_imageData.replacingOccurrences(of: "log", with: "da") + "_nor"))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.frontColor()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension MechanicallyReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func beforeTitle() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func packet() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
