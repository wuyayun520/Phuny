
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_greetName:[UInt8] = [0x55,0x5a,0x55,0x60,0x14,0x4f,0x5b,0x50,0x51,0x5e,0x26,0x15,0xc,0x54,0x4d,0x5f,0xc,0x5a,0x5b,0x60,0xc,0x4e,0x51,0x51,0x5a,0xc,0x55,0x59,0x5c,0x58,0x51,0x59,0x51,0x5a,0x60,0x51,0x50]

fileprivate func midCollection(title num: UInt8) -> UInt8 {
    let value = Int(num) - 236
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_viewValueTitle:String = "btn_dheight if"
fileprivate let str_equalContent:String = "self player remove name modelic_st"
fileprivate let str_statusActionTitle:String = "about"

/*: "btnwOblEh_tdj_oediv_stop" :*/
fileprivate let str_indexName:[Character] = ["b","t","n","w","O","b","l","E"]
fileprivate let str_modelLabResumeData:[Character] = ["h","_","t","d","j","_","o","e","d","i","v","_","s","t","o","p"]

/*: "btnCmjoS7_tdj_oediv_play" :*/
fileprivate let str_windowData:[Character] = ["b","t","n","C","m","j","o","S","7","_","t"]
fileprivate let str_dataTitle:[Character] = ["d","j","_","o","e"]
fileprivate let str_theName:[Character] = ["d","i","v","_","p","l","a","y"]

/*: "%@" :*/
fileprivate let str_sizeStatusGiftName:String = "tap@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResourceThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/7.
//

//: import UIKit
import UIKit

//: enum InteractionViewStatus {
enum ShowViewStatus {
    //: case StartPlay
    case StartPlay
    //: case StopPlay
    case StopPlay
    //: case StartSeek
    case StartSeek
    //: case StopSeek
    case StopSeek
}

//: protocol InteractionViewDelegate: NSObject {
protocol ContextViewDelegate: NSObject {
    //: func func__interactionViewStatus(view: TalkingVideoPlayerInteractionView, status: InteractionViewStatus)
    func finishDismiss(view: ResourceThen, status: ShowViewStatus)

    //: func func__interactionViewSlideValue(view: TalkingVideoPlayerInteractionView, value: CGFloat)
    func contentSlideLab(view: ResourceThen, value: CGFloat)
}

//: class TalkingVideoPlayerInteractionView: UIView {
class ResourceThen: UIView {
    //: open weak var delegate: InteractionViewDelegate?
    open weak var delegate: ContextViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.analogDigitalConverter()
        //: self.setupSubViewsConstraint()
        self.headConstraint()
        //: self.bindInteraction()
        self.deal()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_greetName.map{midCollection(title: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var toolBarView: UIImageView = {
    lazy var toolBarView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var centerPlayButton: UIButton = {
    private lazy var centerPlayButton: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_dynamic_stop_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_viewValueTitle.prefix(5)) + "ynam" + String(str_equalContent.suffix(5)) + "op_no" + str_statusActionTitle.replacingOccurrences(of: "about", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(centerButtonClickAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(videoList(sender:)), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var playButton: UIButton = {
    private lazy var playButton: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btnwOblEh_tdj_oediv_stop"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_indexName) + String(str_modelLabResumeData))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "btnCmjoS7_tdj_oediv_play"), for: .selected)
        btn.setImage(UIImage.nearTap(name: (String(str_windowData) + String(str_dataTitle) + String(str_theName))), for: .selected)
        //: btn.addTarget(self, action: #selector(playButtonClickAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(totalImage(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var durationLb: UILabel = {
    private lazy var durationLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var currentTimeLb: UILabel = {
    private lazy var currentTimeLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var failImageView: UIImageView = {
    private lazy var failImageView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.nearTap(name: "")
        imag.image = UIImage.nearTap(name: "")
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var slider: TalkingVideoPlayerSlider = {
    private lazy var slider: ObserverReactiveCompatible = {
        //: let slid = TalkingVideoPlayerSlider.init(frame: CGRect.init(x: 100, y: 0, width: ScreenWidth-167, height: 40), sliderWidth: 12, sliderColor: UIColor.white, progressHeight: 2, progressBgColor: UIColor.init(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.3), progressPlayedColor: UIColor.white, progressCachedColor: UIColor.clear, isShowCorner: true)
        let slid = ObserverReactiveCompatible(frame: CGRect(x: 100, y: 0, width: consLet_errorDeviceHeightData - 167, height: 40), sliderWidth: 12, sliderColor: UIColor.white, progressHeight: 2, progressBgColor: UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.3), progressPlayedColor: UIColor.white, progressCachedColor: UIColor.clear, isShowCorner: true)
        //: slid.backgroundColor = UIColor.clear
        slid.backgroundColor = UIColor.clear
        //: return slid
        return slid
        //: }()
    }()
}

//: extension TalkingVideoPlayerInteractionView {
extension ResourceThen {
    //: @objc func centerButtonClickAction(sender: UIButton) {
    @objc func videoList(sender: UIButton) {
        //: sender.isHidden = true
        sender.isHidden = true
        //: self.handleStatus(status: .StartPlay)
        self.turnIn(status: .StartPlay)
    }

    //: @objc func playButtonClickAction(sender: UIButton) {
    @objc func totalImage(sender: UIButton) {
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: self.handleStatus(status: sender.isSelected ? .StopPlay:.StartPlay)
        self.turnIn(status: sender.isSelected ? .StopPlay : .StartPlay)
        //: self.centerPlayButton.isHidden = !sender.isSelected
        self.centerPlayButton.isHidden = !sender.isSelected
    }

    //: func handleStatus(status: InteractionViewStatus) {
    func turnIn(status: ShowViewStatus) {
        //: self.delegate?.func__interactionViewStatus(view: self, status: status)
        self.delegate?.finishDismiss(view: self, status: status)
    }

    //: func interactionStatus(status: VideoPlayerStatus) {
    func awardDrunkMoveThroughDignityStatus(status: PositionPlayerStatus) {
        //: switch status {
        switch status {
        //: case .Pausing:
        case .Pausing:
            //: self.playButton.isSelected = true
            self.playButton.isSelected = true
            //: self.centerPlayButton.isHidden = false
            self.centerPlayButton.isHidden = false
        //: break
        //: case .Playing:
        case .Playing:
            //: self.playButton.isSelected = false
            self.playButton.isSelected = false
            //: self.centerPlayButton.isHidden = true
            self.centerPlayButton.isHidden = true
        //: break
        //: case .Failed:
        case .Failed:
            //: self.failImageView.isHidden = false
            self.failImageView.isHidden = false
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: func updateProgress(value: CGFloat) {
    func swaddlingClothesData(value: CGFloat) {
        //: self.slider.slideValue = value
        self.slider.slideValue = value
    }

    //: func updateProgressDurationAndCurrentTime(duration: NSInteger, currentTime: NSInteger) {
    func currentEqual(duration: NSInteger, currentTime: NSInteger) {
        //: self.currentTimeLb.text = String(format: "%@", NSDate.videoTimeFormat(totalTime: currentTime))
        self.currentTimeLb.text = String(format: "%@", NSDate.titleMake(totalTime: currentTime))
        //: self.durationLb.text = String(format: "%@", NSDate.videoTimeFormat(totalTime: duration))
        self.durationLb.text = String(format: "%@", NSDate.titleMake(totalTime: duration))
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = (touches as NSSet).anyObject() as AnyObject
        let touch = (touches as NSSet).anyObject() as AnyObject
        //: var point = touch.location(in: self)
        var point = touch.location(in: self)

        //: point = self.toolBarView.layer.convert(point, from: self.layer)
        point = self.toolBarView.layer.convert(point, from: self.layer)

        //: if self.toolBarView.layer.contains(point) {
        if self.toolBarView.layer.contains(point) {
            //: return
            return
        }

        //: if self.toolBarView.isHidden {
        if self.toolBarView.isHidden {
            //: self.toolBarView.isHidden = false
            self.toolBarView.isHidden = false
            //: }else {
        } else {
            //: self.toolBarView.isHidden = true
            self.toolBarView.isHidden = true
        }
    }
}

//: extension TalkingVideoPlayerInteractionView {
extension ResourceThen {
    // 添加视图
    //: private func setupSubviews() {
    private func analogDigitalConverter() {
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.addSubview(toolBarView)
        self.addSubview(toolBarView)
        //: self.addSubview(centerPlayButton)
        self.addSubview(centerPlayButton)
        //: toolBarView.addSubview(playButton)
        toolBarView.addSubview(playButton)
        //: toolBarView.addSubview(durationLb)
        toolBarView.addSubview(durationLb)
        //: toolBarView.addSubview(currentTimeLb)
        toolBarView.addSubview(currentTimeLb)
        //: self.addSubview(failImageView)
        self.addSubview(failImageView)
        //: toolBarView.addSubview(self.slider)
        toolBarView.addSubview(self.slider)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func headConstraint() {
        //: toolBarView.snp.makeConstraints { make in
        toolBarView.snp.makeConstraints { make in
            //: make.left.right.bottom.equalTo(0)
            make.left.right.bottom.equalTo(0)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }

        //: centerPlayButton.snp.makeConstraints { make in
        centerPlayButton.snp.makeConstraints { make in
            //: make.center.equalTo(self)
            make.center.equalTo(self)
            //: make.size.equalTo(CGSize.init(width: 63, height: 63))
            make.size.equalTo(CGSize(width: 63, height: 63))
        }

        //: playButton.snp.makeConstraints { make in
        playButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(toolBarView)
            make.centerY.equalTo(toolBarView)
            //: make.left.equalTo(10)
            make.left.equalTo(10)
            //: make.size.equalTo(CGSize.init(width: 30, height: 30))
            make.size.equalTo(CGSize(width: 30, height: 30))
        }

        //: durationLb.snp.makeConstraints { make in
        durationLb.snp.makeConstraints { make in
            //: make.centerY.equalTo(toolBarView)
            make.centerY.equalTo(toolBarView)
            //: make.right.equalTo(-20)
            make.right.equalTo(-20)
        }

        //: currentTimeLb.snp.makeConstraints { make in
        currentTimeLb.snp.makeConstraints { make in
            //: make.centerY.equalTo(toolBarView)
            make.centerY.equalTo(toolBarView)
            //: make.left.equalTo(self.playButton.snp.right).offset(8)
            make.left.equalTo(self.playButton.snp.right).offset(8)
        }

        //: failImageView.snp.makeConstraints { make in
        failImageView.snp.makeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func deal() {
        //: self.slider.panBeginBlock = {[weak self]  in
        self.slider.panBeginBlock = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.handleStatus(status: .StartSeek)
            self.turnIn(status: .StartSeek)
        }
        //: self.slider.getValueBlock = {[weak self] value in
        self.slider.getValueBlock = { [weak self] value in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.delegate?.func__interactionViewSlideValue(view: self, value: value)
            self.delegate?.contentSlideLab(view: self, value: value)
        }
        //: self.slider.panEndHandler = {[weak self] value in
        self.slider.panEndHandler = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.handleStatus(status: .StopSeek)
            self.turnIn(status: .StopSeek)
        }
    }
}
