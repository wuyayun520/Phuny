
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_requestAddData:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

private func flowDataCell(video num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "icon_ziliao_id_default" :*/
fileprivate let str_errorValue:String = "ICON"
fileprivate let str_imageClipValue:String = "o_id_import manager handle"
fileprivate let str_appData:[Character] = ["u","l","t"]

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let str_toData:String = "view false mastericon_z"
fileprivate let str_videoName:String = "o_xiview corner of make property"
fileprivate let str_withValue:String = "o_defaumodel message regular"
fileprivate let str_toValue:[Character] = ["l","t"]

/*: "icon_ziliao_qianming_default" :*/
fileprivate let str_makeDomainContent:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","q","i","a","n","m","i","n","g","_","d","e"]
fileprivate let str_pathValue:[Character] = ["f","a","u","l","t"]

/*: "btn_me_copy" :*/
fileprivate let str_labelOpenlineAsData:[Character] = ["b","t","n","_","m","e","_","c","o","p","y"]

/*: "icon_data_man" :*/
fileprivate let str_topData:String = "source app roomicon_d"
fileprivate let str_screenValue:String = "sound"

/*: "icon_data_position" :*/
fileprivate let str_postTitle:String = "icon_dsize in in gift model"
fileprivate let str_bottomTitle:String = "posstatus"

/*: "UID Copied" :*/
fileprivate let str_pathShowData:[Character] = ["U"]
fileprivate let str_wrapData:String = "ID Ctime false else height"

/*: "icon_data_woman" :*/
fileprivate let str_topTitle:[UInt8] = [0x9e,0x94,0x98,0x99,0xa8,0x93,0x96,0x83,0x96,0xa8,0x80,0x98,0x9a,0x96,0x99]

/*: "  :*/
fileprivate let str_partyTargetTitle:[Character] = [" "]

/*: "666666" :*/
fileprivate let str_lessAllAcceptText:[Character] = ["6","6","6","6","6","6"]

/*: "No personal signature was completed" :*/
fileprivate let str_listName:[UInt8] = [0x64,0x65,0x74,0x65,0x6c,0x70,0x6d,0x6f,0x63,0x20,0x73,0x61,0x77,0x20,0x65,0x72,0x75,0x74,0x61,0x6e,0x67,0x69,0x73,0x20,0x6c,0x61,0x6e,0x6f,0x73,0x72,0x65,0x70,0x20,0x6f,0x4e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionProfileCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class VersionProfileCell: UITableViewCell {
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
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.editWill()
        //: self.setupSubViewsConstraint()
        self.cornerConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_requestAddData.map{flowDataCell(video: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearTap(name: "icon_ziliao_id_default")
        imgV.image = UIImage.nearTap(name: (str_errorValue.lowercased() + "_zilia" + String(str_imageClipValue.prefix(5)) + "defa" + String(str_appData)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearTap(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.nearTap(name: (String(str_toData.suffix(6)) + "ilia" + String(str_videoName.prefix(4)) + "ngzu" + String(str_withValue.prefix(7)) + String(str_toValue)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearTap(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.nearTap(name: (String(str_makeDomainContent) + String(str_pathValue)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 15)
        lb.font = .loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .frontColor()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 15)
        lb.font = .loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .frontColor()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 15)
        lb.font = .loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .frontColor()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_labelOpenlineAsData))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(totalerest), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearTap(name: "icon_data_man")
        imgV.image = UIImage.nearTap(name: (String(str_topData.suffix(6)) + "ata_ma" + str_screenValue.replacingOccurrences(of: "sound", with: "n")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 15)
        lb.font = .loadEnable(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .frontColor()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton(type: .custom)
        let btn = LabelPositionReactiveCompatible(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.nearTap(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_postTitle.prefix(6)) + "ata_" + str_bottomTitle.replacingOccurrences(of: "status", with: "i") + "tion")), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.frontColor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 15)
        btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension VersionProfileCell {
    //: @objc func clickCopyButtonAction() {
    @objc func totalerest() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        DeviceFailThen.picToast((String(str_pathShowData) + String(str_wrapData.prefix(4)) + "opied").localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension VersionProfileCell {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func doingEqual(userModel: MonthLabelHandyJSON) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == ColorExpressionConvertible.female.rawValue) ? String(bytes: str_topTitle.map{$0^247}, encoding: .utf8)! : (String(str_topData.suffix(6)) + "ata_ma" + str_screenValue.replacingOccurrences(of: "sound", with: "n"))
        //: sexIcon.image = UIImage.nearTap(name: sexImgStr)
        sexIcon.image = UIImage.nearTap(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.loadEnable(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: str_listName.reversed(), encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: sexIcon.snp.remakeConstraints { make in
            sexIcon.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.size.equalTo(uidImgView)
                make.leading.size.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension VersionProfileCell {
    //: private func setupSubviews() {
    private func editWill() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
    }

    //: private func setupSubViewsConstraint() {
    private func cornerConstraint() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(10)
            make.top.equalTo(locationButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
