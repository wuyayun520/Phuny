
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_purchaseValue:[UInt8] = [0xd8,0xdf,0xd8,0xc5,0x99,0xd2,0xde,0xd5,0xd4,0xc3,0x8b,0x98,0x91,0xd9,0xd0,0xc2,0x91,0xdf,0xde,0xc5,0x91,0xd3,0xd4,0xd4,0xdf,0x91,0xd8,0xdc,0xc1,0xdd,0xd4,0xdc,0xd4,0xdf,0xc5,0xd4,0xd5]

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_makeContent:String = "view voice viewMF:Li"
fileprivate let str_managerValue:String = "tWelMsas pop female return"
fileprivate let str_appColorName:[Character] = ["g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_equalName:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","P","r","i","z","e","M"]
fileprivate let str_familyTitle:String = "sseed"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_shareName:String = "MF:Lmale var model in corner"
fileprivate let str_toAtContent:String = "make min model modify nottAtte"
fileprivate let str_visualValue:String = "model truentionMsg"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_giftContent:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t"]
fileprivate let str_logName:String = "WelMsgtarget color user visual make"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_eventViewName:[Character] = ["M","F",":","P","a","r","t","y","C","h"]
fileprivate let str_dataTimeText:String = "will"
fileprivate let str_currentModelName:String = "enable cell data heighttPriz"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_titleData:String = "MF:Partname value top main image"
fileprivate let str_iconViewAddText:[Character] = ["y","C","h","a","t","A","t"]
fileprivate let str_sharedName:[Character] = ["t","e","n","t","i","o","n","M","s","g"]

/*: _ :*/
fileprivate let str_modeContent:[Character] = ["_"]

/*: "UITableViewCell" :*/
fileprivate let str_giftTitle:[Character] = ["U","I","T","a","b","l","e","V","i","e"]
fileprivate let str_errorValue:String = "wCellconstraint list button background"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StoreVersionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class StoreVersionReactiveCompatible: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = StoreHandyJSON()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(consLet_viewValue + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(consLet_viewValue)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_purchaseValue.map{$0^177}, encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension StoreVersionReactiveCompatible {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func speech(tableView: UITableView, msg: StoreHandyJSON, indexPath _: IndexPath) -> StoreVersionReactiveCompatible {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: StoreVersionReactiveCompatible?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(str_makeContent.suffix(5)) + "veCha" + String(str_managerValue.prefix(6)) + String(str_appColorName)) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(str_equalName) + str_familyTitle.replacingOccurrences(of: "seed", with: "g")) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(str_shareName.prefix(4)) + "iveCha" + String(str_toAtContent.suffix(5)) + String(str_visualValue.suffix(8))) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(str_giftContent) + String(str_logName.prefix(6))) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(str_eventViewName) + str_dataTimeText.replacingOccurrences(of: "will", with: "a") + String(str_currentModelName.suffix(5)) + "eMsg") ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(str_titleData.prefix(7)) + String(str_iconViewAddText) + String(str_sharedName))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(CompartmentView.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(CompartmentView.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CompartmentView
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = CompartmentView(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_giftTitle) + String(str_errorValue.prefix(5)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = StoreVersionReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! StoreVersionReactiveCompatible
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
