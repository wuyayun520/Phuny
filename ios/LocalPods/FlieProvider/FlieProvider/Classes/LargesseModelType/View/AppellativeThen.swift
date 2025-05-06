
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_withValue:[UInt8] = [0x4f,0x48,0x4f,0x52,0xe,0x45,0x49,0x42,0x43,0x54,0x1c,0xf,0x6,0x4e,0x47,0x55,0x6,0x48,0x49,0x52,0x6,0x44,0x43,0x43,0x48,0x6,0x4f,0x4b,0x56,0x4a,0x43,0x4b,0x43,0x48,0x52,0x43,0x42]

private func frameFull(add num: UInt8) -> UInt8 {
    return num ^ 38
}

/*: "btn_chatsettings_unchoice" :*/
fileprivate let str_sayData:[Character] = ["b","t","n","_","c","h","a"]
fileprivate let str_videoListName:[Character] = ["t","s","e","t","t","i","n","g","s","_","u","n","c","h","o","i","c","e"]

/*: "Free" :*/
fileprivate let str_sendName:String = "near typeFree"

/*: "%@ Gold coins / Message" :*/
fileprivate let str_bottomData:String = "i index up equal page%@ Gol"
fileprivate let str_pointName:String = "ins view succeed if send"
fileprivate let str_pickName:[Character] = ["s","s","a","g","e"]

/*: "%@ Gold coins / Min" :*/
fileprivate let str_actualData:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i","n","s"]
fileprivate let str_valueName:[Character] = [" ","/"," ","M","i","n"]

/*: "btn_chatsettings_choiced" :*/
fileprivate let str_appName:[Character] = ["b","t","n","_","c","h","a","t","s","e","t","t","i","n","g","s"]
fileprivate let str_ofText:[Character] = ["_","c","h"]
fileprivate let str_dataLengthName:String = "oicrecord"

/*: "LV.%d" :*/
fileprivate let str_itemValue:String = "mode location matchLV.%d"

/*: "#E9E9E9" :*/
fileprivate let str_areaValue:[Character] = ["#","E","9","E","9","E"]
fileprivate let str_backData:[Character] = ["9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppellativeThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class IndexTransformable: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class AppellativeThen: UITableViewCell {
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
        //: self.setupSubviews()
        self.quitInRaw()
        //: self.setupSubViewsConstraint()
        self.constraintLabSubViews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_withValue.map{frameFull(add: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: lb.font = .loadEnable(type: .Regular, fontSize: 16)
        lb.font = .loadEnable(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.labelSumervalMedium()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .loadEnable(type: .Regular, fontSize: 12)
        lb.font = .loadEnable(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearTap(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.nearTap(name: (String(str_sayData) + String(str_videoListName)))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension AppellativeThen {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func ptolemaicSystemIndex(cellModel: IndexTransformable, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? "Free".localized : (String(str_bottomData.suffix(6)) + "d co" + String(str_pointName.prefix(4)) + "/ Me" + String(str_pickName)).localizedArguments(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(str_actualData) + String(str_valueName)).localizedArguments(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.nearTap(name: "btn_chatsettings_choiced") : UIImage.nearTap(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.nearTap(name: (String(str_appName) + String(str_ofText) + str_dataLengthName.replacingOccurrences(of: "record", with: "ed"))) : UIImage.nearTap(name: (String(str_sayData) + String(str_videoListName)))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(IndexStyleAppManager.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(IndexStyleAppManager.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension AppellativeThen {
    //: private func setupSubviews() {
    private func quitInRaw() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func constraintLabSubViews() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
