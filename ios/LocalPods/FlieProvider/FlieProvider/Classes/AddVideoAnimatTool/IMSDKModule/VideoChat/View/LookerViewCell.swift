
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_hiddenValue:[UInt8] = [0xf8,0xff,0xf8,0xe5,0xb9,0xf2,0xfe,0xf5,0xf4,0xe3,0xab,0xb8,0xb1,0xf9,0xf0,0xe2,0xb1,0xff,0xfe,0xe5,0xb1,0xf3,0xf4,0xf4,0xff,0xb1,0xf8,0xfc,0xe1,0xfd,0xf4,0xfc,0xf4,0xff,0xe5,0xf4,0xf5]

private func shadowActual(success num: UInt8) -> UInt8 {
    return num ^ 145
}

/*: "icon_videoCall_translate_nor" :*/
fileprivate let str_cellData:[Character] = ["i","c","o","n","_","v","i","d","e","o","C","a","l","l","_","t","r","a","n","s","l","a","t","e","_","n"]
fileprivate let str_frameText:String = "keyr"

/*: "icon_videoCall_translate_pre" :*/
fileprivate let str_modelName:String = "start data selectedicon_"
fileprivate let str_shareValue:String = "click equal tovideoC"
fileprivate let str_delayText:[Character] = ["l","a","t","e","_","p","r","e"]

/*: "targetText" :*/
fileprivate let str_appearanceValue:String = "targinfo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LookerViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class LookerViewCell: ServerBassCell {
    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: TrademarkModelType {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            sizeStop()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.contentView.addSubview(transBtn)
        self.contentView.addSubview(transBtn)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_hiddenValue.map{shadowActual(success: $0)}, encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_cellData) + str_frameText.replacingOccurrences(of: "key", with: "o"))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_modelName.suffix(5)) + String(str_shareValue.suffix(6)) + "all_trans" + String(str_delayText))), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(reportList), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension LookerViewCell {
    //: func setCell() {
    func sizeStop() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func reportList() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = QuantityCellData()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.recover(model: self.msgModel)
                //: self.setCell()
                self.sizeStop()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: TalkingChatRequestTool.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                ChatMakeReactiveCompatible.equalFor(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(str_appearanceValue.replacingOccurrences(of: "info", with: "et") + "Text")].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = QuantityCellData()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.recover(model: self.msgModel)
                        //: self.setCell()
                        self.sizeStop()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = QuantityCellData()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.minimize(model: self.msgModel)
            //: self.setCell()
            self.sizeStop()
        }
    }
}
