
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameText:[UInt8] = [0x27,0x2c,0x27,0x32,0xe6,0x21,0x2d,0x22,0x23,0x30,0xf8,0xe7,0xde,0x26,0x1f,0x31,0xde,0x2c,0x2d,0x32,0xde,0x20,0x23,0x23,0x2c,0xde,0x27,0x2b,0x2e,0x2a,0x23,0x2b,0x23,0x2c,0x32,0x23,0x22]

fileprivate func labIndex(center num: UInt8) -> UInt8 {
    let value = Int(num) + 66
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_changeName:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","s"]
fileprivate let str_valueText:[Character] = ["t","o","p","_","n","o","r"]

/*: "icon_Topping_bg" :*/
fileprivate let str_styleValue:String = "ICON"
fileprivate let str_assetRequestValue:[Character] = ["_","T","o","p","p","i","n","g","_","b","g"]

/*: "#F5F5F5" :*/
fileprivate let str_appearData:String = "center to win#F5F5"
fileprivate let str_addContent:[Character] = ["F","5"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MechanicallyView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

//: class TalkingMomentVideoCell: UIView {
class MechanicallyView: UIView {
    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.stem()
        //: self.setupSubViewsConstraint()
        self.addWith()
        //: self.bindInteraction()
        self.imageTo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameText.map{labIndex(center: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: WoodPlayerManager = {
        //: var  player: TalkingVideoPlayerManager
        var player: WoodPlayerManager
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = WoodPlayerManager.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = WoodPlayerManager()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.setQuantity(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.nearTap(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.nearTap(name: (String(str_changeName) + String(str_valueText))))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.nearTap(name: "icon_Topping_bg")
        img.image = UIImage.nearTap(name: (str_styleValue.lowercased() + String(str_assetRequestValue)))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension MechanicallyView {
    //: @objc func enterBackgroundNotification() {
    @objc func targetNotification() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.voicePause()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func artefact() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.userRead()!.isKind(of: ParadigmViewController.self) {
            //: self.player.resume()
            self.player.magnitudeervalResume()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func sumryTop(model: FailHandyJSON, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.underPause(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func lookSumo() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.seedWithoutForefront(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.setQuantity(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.pathMode(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func employment() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.magnitudeeractionPlay()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.setQuantity(bEnable: true)
    }

    //: func pausePlay() {
    func toFinish() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.voicePause()
        }
    }

    //: func resume() {
    func thanTo() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.setQuantity(bEnable: true)
        //: self.player.resume()
        self.player.magnitudeervalResume()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension MechanicallyView: ContextReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func equalPublish(player _: WoodPlayerManager, status: PositionPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.setQuantity(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.pathMode(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func on(player _: WoodPlayerManager, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func progressPromotionPlayerImage(player _: WoodPlayerManager, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension MechanicallyView {
    // 添加视图
    //: private func setupSubviews() {
    private func stem() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: "#F5F5F5")
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func addWith() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func imageTo() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(targetNotification), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(artefact), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
