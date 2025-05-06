
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_report_selected_nor" :*/
fileprivate let str_resultWhiteCellValue:String = "btn_recolor error label the"
fileprivate let str_totalTitle:String = "ected_norto view"

/*: "· %@" :*/
fileprivate let str_userAppData:[Character] = ["·"," ","%","@"]

/*: "btn_report_selected_pre" :*/
fileprivate let str_editValue:String = "btn_reposhow make self list official"
fileprivate let str_modelName:[Character] = ["r","t","_","s","e","l","e","c","t","e","d","_","p","r","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingReportViewCell: UITableViewCell {
class LabelViewCell: UITableViewCell {
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
        self.clickSubviews()
        //: self.setupSubViewsConstraint()
        self.sumerval()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelText.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.appNameVisualProperty()
        //: $0.font = .loadEnable(type: .Medium, fontSize: 16)
        $0.font = .loadEnable(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.nearTap(name: "btn_report_selected_nor")
        $0.image = UIImage.nearTap(name: (String(str_resultWhiteCellValue.prefix(6)) + "port_sel" + String(str_totalTitle.prefix(9))))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension LabelViewCell {
    //: func updateReportCell(model: TalkingReportModel) {
    func compartment(model: ViewIndexReactiveCompatible) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.nearTap(name: "btn_report_selected_nor")
        var image = UIImage.nearTap(name: (String(str_resultWhiteCellValue.prefix(6)) + "port_sel" + String(str_totalTitle.prefix(9))))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.nearTap(name: "btn_report_selected_pre").withTintColor(UIColor.appThemeColor())
            image = UIImage.nearTap(name: (String(str_editValue.prefix(8)) + String(str_modelName))).withTintColor(UIColor.labelSumervalMedium())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension LabelViewCell {
    //: private func setupSubviews() {
    private func clickSubviews() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func sumerval() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
