
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeValue:[UInt8] = [0x33,0x38,0x33,0x3e,0xf2,0x2d,0x39,0x2e,0x2f,0x3c,0x4,0xf3,0xea,0x32,0x2b,0x3d,0xea,0x38,0x39,0x3e,0xea,0x2c,0x2f,0x2f,0x38,0xea,0x33,0x37,0x3a,0x36,0x2f,0x37,0x2f,0x38,0x3e,0x2f,0x2e]

fileprivate func cropLog(white num: UInt8) -> UInt8 {
    let value = Int(num) - 202
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "extra" :*/
fileprivate let str_makeData:String = "screentra"

/*: "msgInfo" :*/
fileprivate let str_yesterdayData:String = "remove sendmsgInfo"

/*: "icon_talk_left_voive_3" :*/
fileprivate let str_appTitle:String = "ito"
fileprivate let str_pointData:[Character] = ["o","n","_","t","a","l","k","_","l","e","f","t","_","v","o","i","v","e","_","3"]

/*: "icon_talk_right_voive_3" :*/
fileprivate let str_nearTitle:[Character] = ["i","c","o","n","_","t","a","l","k","_","r","i","g","h","t","_","v","o","i","v"]
fileprivate let str_modelData:[Character] = ["e","_","3"]

/*: "%ld″" :*/
fileprivate let str_indexCookieData:String = "name let for as bubble%ld″"

/*: "audioLength" :*/
fileprivate let str_labUseValue:String = "menu user transformaudioLen"
fileprivate let str_resultData:String = "GTH"

/*: "isPlayingStatus" :*/
fileprivate let str_liveData:String = "icon letisPl"
fileprivate let str_screenName:String = "view if state error varStatu"
fileprivate let str_sharedTitle:String = "frame"

/*: "activityShowStatus" :*/
fileprivate let str_fileValue:String = "as gesture be addactivityS"
fileprivate let str_progressValue:[Character] = ["h","o","w","S","t","a","t","u","s"]

/*: "0″" :*/
fileprivate let str_resumeData:[Character] = ["0","″"]

/*: "FF506D" :*/
fileprivate let str_directionData:String = "FF50model"

/*: "icon_talk_left_voive_1" :*/
fileprivate let str_nameContent:String = "icon_tread in share jump message"
fileprivate let str_ofData:String = "view"
fileprivate let str_femaleTitle:String = "lk_lelet call view"
fileprivate let str_imageText:String = "guard color viewve_1"

/*: "icon_talk_left_voive_2" :*/
fileprivate let str_goingData:String = "recordon"
fileprivate let str_pointLightTitle:String = "k_left_to style path successfully"
fileprivate let str_textValue:[Character] = ["v","o","i","v","e","_","2"]

/*: "icon_talk_right_voive_1" :*/
fileprivate let str_countText:[Character] = ["i","c","o","n","_","t","a","l","k","_","r","i","g"]
fileprivate let str_timeData:String = "true label match nameht_voi"

/*: "icon_talk_right_voive_2" :*/
fileprivate let str_playerName:String = "ICON"
fileprivate let str_currentValue:String = "rpathght"
fileprivate let str_toUserTitle:[Character] = ["2"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StableRoomThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatAudioMsgCell: TalkingChatBaseMsgCell {
class StableRoomThen: ChatView {
    //: var audioData: ClearCellData?
    var audioData: ClearCellData?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()

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

        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: designCellView()
        active()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeValue.map{cropLog(white: $0)}, encoding: .utf8)!)
    }

    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: audioData = data as? ClearCellData
        audioData = data as? ClearCellData
        //: guard let newData = audioData else { return }
        guard let newData = audioData else { return }
        //: if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
        if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
            //: let extraDic = JSON(parseJSON: extra)
            let extraDic = JSON(parseJSON: extra)
            //: let conentDic = extraDic["extra"]
            let conentDic = extraDic["extra"]
            //: let msgInfo = conentDic["msgInfo"]
            let msgInfo = conentDic["msgInfo"]
            //: let voiceModel = newData.voiceModel
            let voiceModel = newData.voiceModel

            //: let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
            let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)

            //: if newData.direction == .MsgDirectionIncoming {
            if newData.direction == .MsgDirectionIncoming {
                //: self.lenLB.textColor = UIColor.appTitleColor()
                self.lenLB.textColor = UIColor.appNameVisualProperty()
                //: self.voiceImageV.image = UIImage.nearTap(name: "icon_talk_left_voive_3")
                self.voiceImageV.image = UIImage.nearTap(name: (str_appTitle.replacingOccurrences(of: "to", with: "c") + String(str_pointData)))
                //: self.voiceImageV.animationImages = leftVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = anyNigh()
                //: } else {
            } else {
                //: self.lenLB.textColor = .white
                self.lenLB.textColor = .white
                //: self.voiceImageV.image = UIImage.nearTap(name: "icon_talk_right_voive_3")
                self.voiceImageV.image = UIImage.nearTap(name: (String(str_nearTitle) + String(str_modelData)))
                //: self.voiceImageV.animationImages = rightVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = thenColor()
            }
            //: if isVoiceStyle {
            if isVoiceStyle {
                //: self.lenLB.text = String.init(format: "%ld″", msgInfo["audioLength"].intValue)
                self.lenLB.text = String(format: "%ld″", msgInfo[(String(str_labUseValue.suffix(8)) + str_resultData.lowercased())].intValue)
                //: newData.voiceModel.audioLength = msgInfo["audioLength"].intValue
                newData.voiceModel.audioLength = msgInfo[(String(str_labUseValue.suffix(8)) + str_resultData.lowercased())].intValue

                //: voiceModel.rx.observeWeakly(Int.self, "isPlayingStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(str_liveData.suffix(4)) + "aying" + String(str_screenName.suffix(5)) + str_sharedTitle.replacingOccurrences(of: "frame", with: "s"))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                            //: self.voiceImageV.startAnimating()
                            self.voiceImageV.startAnimating()
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: } else {
                        } else {
                            //: self.voiceImageV.stopAnimating()
                            self.voiceImageV.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: voiceModel.rx.observeWeakly(Int.self, "activityShowStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(str_fileValue.suffix(9)) + String(str_progressValue))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: self.voiceShowView.startAnimating()
                            self.voiceShowView.startAnimating()
                            //: } else {
                        } else {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: } else {
            } else {
                //: newData.voiceModel.audioLength = -1
                newData.voiceModel.audioLength = -1
                //: self.voiceShowView.stopAnimating()
                self.voiceShowView.stopAnimating()
                //: self.voiceTrackPoint.isHidden = true
                self.voiceTrackPoint.isHidden = true
            }

            //: self.voiceImageV.isHidden = !isVoiceStyle
            self.voiceImageV.isHidden = !isVoiceStyle
        }
    }

    // MARK: - Lazy load

    //: lazy var voiceBackView: UIView = {
    lazy var voiceBackView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    // 时长
    //: lazy var lenLB: UILabel = {
    lazy var lenLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.appNameVisualProperty()
        //: label.font = UIFont.exceptEqual(fontSize: 17)
        label.font = UIFont.exceptEqual(fontSize: 17)
        //: label.text = "0″"
        label.text = "0″"
        //: return label
        return label
        //: }()
    }()

    // 声波动画
    //: lazy var voiceImageV: UIImageView = {
    lazy var voiceImageV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: imag.animationDuration = 1
        imag.animationDuration = 1
        //: return imag
        return imag
        //: }()
    }()

    // 未读红点
    //: lazy var voiceTrackPoint: UIImageView = {
    lazy var voiceTrackPoint: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = UIColor.init(hex: "FF506D")
        imag.backgroundColor = UIColor(hex: "FF506D")
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.layer.cornerRadius = 9/2
        imag.layer.cornerRadius = 9 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    // 转圈
    //: lazy var voiceShowView: UIActivityIndicatorView = {
    lazy var voiceShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.style = .medium
            view.style = .medium
            //: }else {
        } else {
            //: view.style = .gray
            view.style = .gray
        }
        //: view.hidesWhenStopped = true
        view.hidesWhenStopped = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatAudioMsgCell {
extension StableRoomThen {
    //: func leftVoiceAnimImagToCoverColor() -> [UIImage] {
    func anyNigh() -> [UIImage] {
        //: return [UIImage.nearTap(name: "icon_talk_left_voive_1"), UIImage.nearTap(name: "icon_talk_left_voive_2"), UIImage.nearTap(name: "icon_talk_left_voive_3")]
        return [UIImage.nearTap(name: (String(str_nameContent.prefix(6)) + str_ofData.replacingOccurrences(of: "view", with: "a") + String(str_femaleTitle.prefix(5)) + "ft_voi" + String(str_imageText.suffix(4)))), UIImage.nearTap(name: (str_goingData.replacingOccurrences(of: "record", with: "ic") + "_tal" + String(str_pointLightTitle.prefix(7)) + String(str_textValue))), UIImage.nearTap(name: (str_appTitle.replacingOccurrences(of: "to", with: "c") + String(str_pointData)))]
    }

    //: func rightVoiceAnimImagToCoverColor() -> [UIImage] {
    func thenColor() -> [UIImage] {
        //: return [UIImage.nearTap(name: "icon_talk_right_voive_1"), UIImage.nearTap(name: "icon_talk_right_voive_2"), UIImage.nearTap(name: "icon_talk_right_voive_3")]
        return [UIImage.nearTap(name: (String(str_countText) + String(str_timeData.suffix(6)) + "ve_1")), UIImage.nearTap(name: (str_playerName.lowercased() + "_talk_" + str_currentValue.replacingOccurrences(of: "path", with: "i") + "_voive_" + String(str_toUserTitle))), UIImage.nearTap(name: (String(str_nearTitle) + String(str_modelData)))]
    }
}

// MARK: - UI

//: extension TalkingChatAudioMsgCell {
extension StableRoomThen {
    //: func designCellView() {
    func active() {
        //: self.container.addSubview(voiceBackView)
        self.container.addSubview(voiceBackView)
        //: voiceBackView.addSubview(lenLB)
        voiceBackView.addSubview(lenLB)
        // 语音模块
        //: voiceBackView.addSubview(voiceImageV)
        voiceBackView.addSubview(voiceImageV)
        //: voiceBackView.addSubview(voiceTrackPoint)
        voiceBackView.addSubview(voiceTrackPoint)
        //: voiceBackView.addSubview(voiceShowView)
        voiceBackView.addSubview(voiceShowView)
        //: voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
        voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let newData = self.audioData else { return }
        guard let newData = self.audioData else { return }
        //: let voiceModel = newData.voiceModel
        let voiceModel = newData.voiceModel
        //: let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90
        let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90

        //: voiceBackView.snp.remakeConstraints { (make) in
        voiceBackView.snp.remakeConstraints { make in
            //: make.leading.top.height.equalToSuperview()
            make.leading.top.height.equalToSuperview()
            //: make.width.equalTo(audioWidth)
            make.width.equalTo(audioWidth)
        }

        //: if newData.direction == .MsgDirectionIncoming {
        if newData.direction == .MsgDirectionIncoming {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(16)
                make.leading.equalTo(16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: voiceTrackPoint.snp.remakeConstraints { (make) in
            voiceTrackPoint.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(9)
                make.width.height.equalTo(9)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }

            //: } else {
        } else {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-16)
                make.trailing.equalTo(-16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: lenLB.textAlignment = LanguageManager.shared.direction == .rightToLeft ? .left:.right
            lenLB.textAlignment = ServerLanguageManager.shared.direction == .rightToLeft ? .left : .right
            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }
            //: voiceTrackPoint.isHidden = true
            voiceTrackPoint.isHidden = true
        }
    }
}
