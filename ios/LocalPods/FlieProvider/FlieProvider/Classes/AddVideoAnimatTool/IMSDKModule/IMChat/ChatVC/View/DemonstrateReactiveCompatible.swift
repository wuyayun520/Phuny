
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalName:[UInt8] = [0x3,0x8,0x3,0xe,0xc2,0xfd,0x9,0xfe,0xff,0xc,0xd4,0xc3,0xba,0x2,0xfb,0xd,0xba,0x8,0x9,0xe,0xba,0xfc,0xff,0xff,0x8,0xba,0x3,0x7,0xa,0x6,0xff,0x7,0xff,0x8,0xe,0xff,0xfe]

fileprivate func destroySize(data num: UInt8) -> UInt8 {
    let value = Int(num) + 102
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_chat_start" :*/
fileprivate let str_sectionText:[Character] = ["i","c","o","n","_","c","h","a","t"]
fileprivate let str_roomContent:[Character] = ["_","s","t","a","r","t"]

/*: "#EBEBEB" :*/
fileprivate let str_extraContent:String = "lab"
fileprivate let str_phoneText:[Character] = ["E","B","E","B","E","B"]

/*: "icon_talk_reply_voive" :*/
fileprivate let str_commentValue:String = "view equal viewicon_"
fileprivate let str_liveGenderText:String = "_replin if self jail"
fileprivate let str_videoName:[Character] = ["y","_","v","o","i","v","e"]

/*: "#DCDCDC" :*/
fileprivate let str_makeMagnitudeEndName:[Character] = ["#","D","C","D","C"]
fileprivate let str_sizeValue:String = "dc"

/*: "text" :*/
fileprivate let str_equalRowTitle:String = "TEXT"

/*: ": " :*/
fileprivate let str_indexData:String = ":succeed"

/*: "gift" :*/
fileprivate let str_norText:String = "subft"

/*: "Sent " :*/
fileprivate let str_tipModelText:[Character] = ["S","e","n","t"," "]

/*: " x :*/
fileprivate let str_equalValue:String = " xview bottom info in"

/*: "audio" :*/
fileprivate let str_priceValue:[Character] = ["a","u","d","i","o"]

/*: ″" :*/
fileprivate let str_rankName:String = "cover"

/*: "img" :*/
fileprivate let str_appMomentButtonValue:String = "showg"

/*: "video" :*/
fileprivate let str_deviceName:String = "vkinddeo"

/*: "map" :*/
fileprivate let str_activityName:[Character] = ["m","a","p"]

/*: ": [Location]" :*/
fileprivate let str_sizeData:String = "frame will background as: [Locati"
fileprivate let str_backgroundValue:String = "on]title count task"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DemonstrateReactiveCompatible.swift
//  FlieProvider
//
//  Created by Hemming on 2024/7/26.
//

//: import UIKit
import UIKit

//: class TalkingMsgQuoteView: UIButton {
class DemonstrateReactiveCompatible: UIButton {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        leaveSwitchiceSubviews()
        //: setupSubViewsConstraint()
        slipUpConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalName.map{destroySize(data: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
         // Drawing code
     }
     */
    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var nameLab: UILabel = {
    lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.exceptEqual(fontSize: 12)
        lab.font = UIFont.exceptEqual(fontSize: 12)
        //: lab.clipsToBounds = true
        lab.clipsToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var imgView: UIImageView = {
    lazy var imgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.layer.cornerRadius = 5
        img.layer.cornerRadius = 5
        //: img.clipsToBounds = true
        img.clipsToBounds = true
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: lazy var playView: UIImageView = {
    lazy var playView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.nearTap(name: "icon_chat_start")
        img.image = UIImage.nearTap(name: (String(str_sectionText) + String(str_roomContent)))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var audioView: UIView = {
    lazy var audioView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#EBEBEB")
        v.backgroundColor = UIColor(hex: "#EBEBEB")
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.clipsToBounds = true
        v.clipsToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: lazy var audioImg: UIImageView = {
    lazy var audioImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_talk_reply_voive")
        img.image = UIImage.nearTap(name: (String(str_commentValue.suffix(5)) + "talk" + String(str_liveGenderText.prefix(5)) + String(str_videoName)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var audioLab: UILabel = {
    lazy var audioLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.exceptEqual(fontSize: 12)
        lab.font = UIFont.exceptEqual(fontSize: 12)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .bringHomeColor()
        //: return lab
        return lab
        //: }()
    }()

    //: var direction : TMsgDirection = .MsgDirectionIncoming {
    var direction: TMsgDirection = .MsgDirectionIncoming {
        //: didSet {
        didSet {
            //: if direction == .MsgDirectionIncoming {
            if direction == .MsgDirectionIncoming {
                //: self.lineView.backgroundColor = UIColor.appValueDetailColor()
                self.lineView.backgroundColor = UIColor.bringHomeColor()
                //: self.nameLab.textColor = UIColor.appValueDetailColor()
                self.nameLab.textColor = UIColor.bringHomeColor()
                //: }else{
            } else {
                //: self.lineView.backgroundColor = UIColor(hex: "#DCDCDC")
                self.lineView.backgroundColor = UIColor(hex: "#DCDCDC")
                //: self.nameLab.textColor = UIColor(hex: "#DCDCDC")
                self.nameLab.textColor = UIColor(hex: "#DCDCDC")
            }
        }
    }

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: DeviceJsonModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: self.imgView.isHidden = true
            self.imgView.isHidden = true
            //: self.playView.isHidden = true
            self.playView.isHidden = true
            //: self.audioView.isHidden = true
            self.audioView.isHidden = true
            //: var spaceRight = 4
            var spaceRight = 4
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == "text" {
                //: self.nameLab.text = quoteModel.sendName + ": " +  quoteModel.renderData.content
                self.nameLab.text = quoteModel.sendName + ": " + quoteModel.renderData.content
                //: }else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == "gift" {
                //: self.nameLab.text = quoteModel.sendName + ": " + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.nameLab.text = quoteModel.sendName + ": " + "Sent ".localized + quoteModel.renderData.giftLocal() + " x\(quoteModel.renderData.giftNum)"
                //: }else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == "audio" {
                //: self.nameLab.text = quoteModel.sendName + ": "
                self.nameLab.text = quoteModel.sendName + ": "
                //: self.audioView.isHidden = false
                self.audioView.isHidden = false
                //: self.audioLab.text = "\(quoteModel.renderData.duration)″"
                self.audioLab.text = "\(quoteModel.renderData.duration)″"
                //: spaceRight = 52
                spaceRight = 52

                //: }else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == "img" {
                //: self.nameLab.text = quoteModel.sendName + ": "
                self.nameLab.text = quoteModel.sendName + ": "
                //: self.imgView.isHidden = false
                self.imgView.isHidden = false
                //: self.playView.isHidden = true
                self.playView.isHidden = true

                //: var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
                var filePath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
                //: filePath = (filePath as NSString).appendingPathComponent(imageFileName)
                filePath = (filePath as NSString).appendingPathComponent(consLet_callTitle)
                //: filePath = (filePath as NSString).appendingPathComponent((quoteModel.renderData.previewUrl as NSString).lastPathComponent)
                filePath = (filePath as NSString).appendingPathComponent((quoteModel.renderData.previewUrl as NSString).lastPathComponent)
                //: let isExists = FileManager.default.fileExists(atPath: filePath)
                let isExists = FileManager.default.fileExists(atPath: filePath)

                //: if quoteModel.renderData.previewUrl.count > 0 && isExists {
                if quoteModel.renderData.previewUrl.count > 0 && isExists {
                    //: DispatchQueue.global().async {
                    DispatchQueue.global().async {
                        //: let imageData = NSData.init(contentsOfFile: filePath)
                        let imageData = NSData(contentsOfFile: filePath)
                        //: DispatchQueue.main.async {
                        DispatchQueue.main.async {
                            //: guard imageData != nil else {
                            guard imageData != nil else {
                                //: return
                                return
                            }
                            //: let image = UIImage.init(data: imageData! as Data)
                            let image = UIImage(data: imageData! as Data)
                            //: self.imgView.image = image
                            self.imgView.image = image
                        }
                    }
                    //: } else {
                } else {
                    //: self.imgView.setUrlImage(urlStr: quoteModel.renderData.previewUrl)
                    self.imgView.underPause(urlStr: quoteModel.renderData.previewUrl)
                }
                //: spaceRight = 34
                spaceRight = 34
                //: }else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == "video" {
                //: self.nameLab.text = quoteModel.sendName + ": "
                self.nameLab.text = quoteModel.sendName + ": "
                //: self.imgView.isHidden = false
                self.imgView.isHidden = false
                //: self.playView.isHidden = false
                self.playView.isHidden = false
                //: self.imgView.setUrlImage(urlStr: quoteModel.renderData.coverUrl)
                self.imgView.underPause(urlStr: quoteModel.renderData.coverUrl)
                //: spaceRight = 34
                spaceRight = 34
                //: }else if quoteModel.renderType == "map" {
            } else if quoteModel.renderType == "map" {
                //: self.nameLab.text = quoteModel.sendName + ": [Location]"
                self.nameLab.text = quoteModel.sendName + (String(str_sizeData.suffix(9)) + String(str_backgroundValue.prefix(3)))
            }
            //: self.nameLab.snp.updateConstraints { make in
            self.nameLab.snp.updateConstraints { make in
                //: make.trailing.lessThanOrEqualTo(-spaceRight)
                make.trailing.lessThanOrEqualTo(-spaceRight)
            }
        }
    }
}

//: extension TalkingMsgQuoteView{
extension DemonstrateReactiveCompatible {}

// MARK: - Layout

//: extension TalkingMsgQuoteView {
extension DemonstrateReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func leaveSwitchiceSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(nameLab)
        self.addSubview(nameLab)

        //: self.addSubview(imgView)
        self.addSubview(imgView)
        //: self.addSubview(playView)
        self.addSubview(playView)

        //: self.addSubview(audioView)
        self.addSubview(audioView)
        //: audioView.addSubview(audioImg)
        audioView.addSubview(audioImg)
        //: audioView.addSubview(audioLab)
        audioView.addSubview(audioLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func slipUpConstraint() {
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing).offset(4)
            make.leading.equalTo(lineView.snp.trailing).offset(4)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
            //: make.centerY.equalTo(lineView)
            make.centerY.equalTo(lineView)
            //: make.trailing.lessThanOrEqualTo(0)
            make.trailing.lessThanOrEqualTo(0)
        }

        //: imgView.snp.makeConstraints { make in
        imgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
            make.leading.equalTo(nameLab.snp.trailing).offset(4)
            //: make.height.width.equalTo(30)
            make.height.width.equalTo(30)
            //: make.top.equalTo(1)
            make.top.equalTo(1)
        }
        //: playView.snp.makeConstraints { make in
        playView.snp.makeConstraints { make in
            //: make.height.width.equalTo(18)
            make.height.width.equalTo(18)
            //: make.center.equalTo(imgView)
            make.center.equalTo(imgView)
        }

        //: audioView.snp.makeConstraints { make in
        audioView.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
            make.leading.equalTo(nameLab.snp.trailing).offset(4)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.width.equalTo(48)
            make.width.equalTo(48)
            //: make.top.equalTo(1)
            make.top.equalTo(1)
        }
        //: audioImg.snp.makeConstraints { make in
        audioImg.snp.makeConstraints { make in
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(13)
            make.height.equalTo(13)
            //: make.width.equalTo(9)
            make.width.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: audioLab.snp.makeConstraints { make in
        audioLab.snp.makeConstraints { make in
            //: make.leading.equalTo(audioImg.snp.trailing).offset(6)
            make.leading.equalTo(audioImg.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
