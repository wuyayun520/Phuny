
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_hiLocalValue:[UInt8] = [0xb,0xc,0xb,0x16,0x4a,0x1,0xd,0x6,0x7,0x10,0x58,0x4b,0x42,0xa,0x3,0x11,0x42,0xc,0xd,0x16,0x42,0x0,0x7,0x7,0xc,0x42,0xb,0xf,0x12,0xe,0x7,0xf,0x7,0xc,0x16,0x7,0x6]

private func forMargin(name num: UInt8) -> UInt8 {
    return num ^ 98
}

/*: "icon_home_boy" :*/
fileprivate let str_mainErrorText:String = "icon_array basic let let"

/*: "icon_home_girl" :*/
fileprivate let str_stateData:String = "ICON"
fileprivate let str_labData:String = "e_gircontent background"
fileprivate let str_lastServerFirstText:String = "tap"

/*: "   " :*/
fileprivate let str_shareText:String = "   "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenListCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/10.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomOnlineListCell: UITableViewCell {
class HiddenListCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: createCellUI()
        counteractionUi()
        //: layoutSubViewsConstraints()
        pastGroupPlayer()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_hiLocalValue.map{forMargin(name: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 60/2
        btn.layer.cornerRadius = 60 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLB: UILabel = {
    lazy var nameLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Medium, fontSize: 18)
        label.font = .loadEnable(type: .Medium, fontSize: 18)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: return label
        return label
        //: }()
    }()

    //: lazy var signLB: UILabel = {
    lazy var signLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 15)
        label.font = .loadEnable(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .bringHomeColor()
        //: return label
        return label
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .loadEnable(type: .Medium, fontSize: 10)

        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatRoomOnlineListCell {
extension HiddenListCell {
    //: func setOnlineListCell(model: TalkingChatRoomMemberModel, type: TitleType) {
    func listAdd(model: TotalensityMemberModel, type: PrizeTextProtocol) {
        //: IconBtn.setUrlImage(urlStr: model.headPic)
        IconBtn.net(urlStr: model.headPic)
        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
        //: signLB.text = model.signature
        signLB.text = model.signature

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.nearTap(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearTap(name: (String(str_mainErrorText.prefix(5)) + "home_boy")), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.nearTap(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearTap(name: (str_stateData.lowercased() + "_hom" + String(str_labData.prefix(5)) + str_lastServerFirstText.replacingOccurrences(of: "tap", with: "l"))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age), for: .normal)
        sexBtn.setTitle("   " + String(model.age), for: .normal)

        //: switch type {
        switch type {
        //: case .normal:
        case .normal:
            //: nameLB.snp.remakeConstraints { make in
            nameLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                //: make.top.equalTo(self).offset(16)
                make.top.equalTo(self).offset(16)
                //: make.height.equalTo(21)
                make.height.equalTo(21)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
            //: signLB.isHidden = false
            signLB.isHidden = false

        //: case .callNumber:
        case .callNumber:
            //: nameLB.snp.remakeConstraints { make in
            nameLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                //: make.top.equalTo(self).offset(26)
                make.top.equalTo(self).offset(26)
                //: make.height.equalTo(21)
                make.height.equalTo(21)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
            //: signLB.isHidden = true
            signLB.isHidden = true
        }
    }
}

// MARK: - UI

//: extension TalkingChatRoomOnlineListCell {
extension HiddenListCell {
    //: func createCellUI() {
    func counteractionUi() {
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(nameLB)
        self.contentView.addSubview(nameLB)
        //: self.contentView.addSubview(signLB)
        self.contentView.addSubview(signLB)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
    }

    //: func layoutSubViewsConstraints() {
    func pastGroupPlayer() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.top.equalTo(self).offset(16)
            make.top.equalTo(self).offset(16)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
            make.trailing.lessThanOrEqualToSuperview().offset(-50)
        }

        //: signLB.snp.makeConstraints { make in
        signLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.trailing.equalTo(self).offset(-10)
            make.trailing.equalTo(self).offset(-10)
        }

        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(3)
            make.leading.equalTo(nameLB.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
        }
    }
}
