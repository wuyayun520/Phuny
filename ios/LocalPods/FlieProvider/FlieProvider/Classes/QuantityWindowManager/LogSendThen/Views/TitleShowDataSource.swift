
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewAppData:[UInt8] = [0xd0,0xd5,0xd0,0xdb,0x8f,0xca,0xd6,0xcb,0xcc,0xd9,0xa1,0x90,0x87,0xcf,0xc8,0xda,0x87,0xd5,0xd6,0xdb,0x87,0xc9,0xcc,0xcc,0xd5,0x87,0xd0,0xd4,0xd7,0xd3,0xcc,0xd4,0xcc,0xd5,0xdb,0xcc,0xcb]

fileprivate func indexTo(value num: UInt8) -> UInt8 {
    let value = Int(num) - 103
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_match_shadow" :*/
fileprivate let str_frameData:[Character] = ["i","m","g"]
fileprivate let str_videoMakeName:String = "true let_mat"
fileprivate let str_becomeValue:String = "buttondow"

/*: "icon_home_girl" :*/
fileprivate let str_modelInsideTitle:[Character] = ["i","c","o","n","_","h","o","m","e","_","g","i","r","l"]

/*: "icon_home_v" :*/
fileprivate let str_centerData:String = "pathon"
fileprivate let str_inputName:String = "_home_vself voice normal progress"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_successTitle:String = "btselected"
fileprivate let str_makeValue:[Character] = ["_","d","y","n","a","m","i","c","_","s","t","o","p","_","n","o","r"]

/*: "#2DF2FF" :*/
fileprivate let str_topData:String = "#2DF2FFa text to"

/*: "· :*/
fileprivate let str_frameTitle:[Character] = ["·"]

/*: "img_home_shadow" :*/
fileprivate let str_viewMoreText:[Character] = ["i","m","g","_","h","o"]
fileprivate let str_emptyValue:[Character] = ["m","e","_","s","h","a","d","o","w"]

/*: "icon_home_boy" :*/
fileprivate let str_roundName:[Character] = ["i","c"]
fileprivate let str_indexData:[Character] = ["o","n","_","h","o","m","e","_","b","o","y"]

/*: "CountView" :*/
fileprivate let str_clickData:String = "TUserDself false extra equal"
fileprivate let str_shareTitle:String = "center neareaderI"

/*: "#FFFFFF" :*/
fileprivate let str_imageText:String = "player session to interaction#FFFFFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleShowDataSource.swift
//  AbroadTalking
//
//  Created by young on 2022/11/15.
//

//: import UIKit
import UIKit

//: import JXPageControl
import JXPageControl

//: import JXBanner
import JXBanner

//: class TalkingMatchResultPicturesView: UIView {
class TitleShowDataSource: UIView {
    /// 视频速配总秒数（以0.1秒为单位，动画更流畅）
    //: let MatchResultProgress_Timer = 590
    let MatchResultProgress_Timer = 590

    //: var matchPlayVideoBlock: ((_ videorUrl: String) -> Void)?
    var matchPlayVideoBlock: ((_ videorUrl: String) -> Void)?
    //: var matchBackBlock: (() -> Void)?
    var matchBackBlock: (() -> Void)?

    /// 数据模型
    //: private var model = TalkingMatchResultModel()
    private var model = RoomResultModel()
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer? // 倒计时

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        column()
        //: setupSubViewsConstraint()
        corroborateList()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewAppData.map{indexTo(value: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroyTimer()
        sizePush()
    }

    // MARK: - Lazy Load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let view = JXBanner.init(frame: .zero)
        let view = JXBanner(frame: .zero)
        //: view.dataSource = self
        view.dataSource = self
        //: view.delegate = self
        view.delegate = self
        //: view.placeholderImgView.image = UIImage.placeImgBanner()
        view.placeholderImgView.image = UIImage.pillow()
        //: view.placeholderImgView.contentMode = .scaleAspectFill
        view.placeholderImgView.contentMode = .scaleAspectFill
        //: return view
        return view
        //: }()
    }()

    //: lazy var gradientShadowImageView: UIImageView = {
    lazy var gradientShadowImageView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.image = UIImage.nearTap(name: "img_match_shadow")
        imageView.image = UIImage.nearTap(name: (String(str_frameData) + String(str_videoMakeName.suffix(4)) + "ch_s" + str_becomeValue.replacingOccurrences(of: "button", with: "ha")))
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var sexImgV: UIImageView = {
    private lazy var sexImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_home_girl")
        img.image = UIImage.nearTap(name: (String(str_modelInsideTitle)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var authImgV: UIImageView = {
    private lazy var authImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_home_v")
        img.image = UIImage.nearTap(name: (str_centerData.replacingOccurrences(of: "path", with: "ic") + String(str_inputName.prefix(7))))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 11)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 11)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var playImageView: UIImageView = {
    lazy var playImageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.nearTap(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.nearTap(name: (str_successTitle.replacingOccurrences(of: "selected", with: "n") + String(str_makeValue))))
        //: imag.isHidden = true
        imag.isHidden = true
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var userImg: UIImageView = {
    lazy var userImg: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.layer.cornerRadius = 52/2
        imag.layer.cornerRadius = 52 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var progressView: CircleCountdownView = {
    private lazy var progressView: PellucidityThen = {
        //: let frame = CGRect(x: 15, y: self.frame.height-47-58, width: 58, height: 58)
        let frame = CGRect(x: 15, y: self.frame.height - 47 - 58, width: 58, height: 58)
        //: let v = CircleCountdownView(frame: frame)
        let v = PellucidityThen(frame: frame)
//        v.roundBgColor = UIColor.white
        //: v.progressColor = UIColor.init(hex: "#2DF2FF")!
        v.progressColor = UIColor(hex: "#2DF2FF")!
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultPicturesView {
extension TitleShowDataSource {
    /// 更新视图UI
    /// - Parameter model: 数据模型
    //: func updatePicturesView(model: TalkingMatchResultModel) {
    func stain(model: RoomResultModel) {
        //: self.model = model
        self.model = model

        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: authImgV.isHidden = model.isTPAuth == true ? false:true
        authImgV.isHidden = model.isTPAuth == true ? false : true
        //: ageLab.text = "·\(model.age)"
        ageLab.text = "·\(model.age)"
        //: userImg.setUrlImage(urlStr: model.headPic, placeImg: UIImage.nearTap(name: "img_home_shadow"))
        userImg.cling(urlStr: model.headPic, placeImg: UIImage.nearTap(name: (String(str_viewMoreText) + String(str_emptyValue))))
        //: if model.sex == Gender.male.rawValue {
        if model.sex == ColorExpressionConvertible.male.rawValue {
            //: sexImgV.image = UIImage.nearTap(name: "icon_home_boy")
            sexImgV.image = UIImage.nearTap(name: (String(str_roundName) + String(str_indexData)))
            //: } else {
        } else {
            //: sexImgV.image = UIImage.nearTap(name: "icon_home_girl")
            sexImgV.image = UIImage.nearTap(name: (String(str_modelInsideTitle)))
        }

        //: if authImgV.isHidden {
        if authImgV.isHidden {
            //: sexImgV.snp.updateConstraints { make in
            sexImgV.snp.updateConstraints { make in
                //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
                make.leading.equalTo(nameLab.snp.trailing).offset(4)
            }
        }

        //: bannerView.reloadView()
        bannerView.reloadView()

        //: var time = MatchResultProgress_Timer
        var time = MatchResultProgress_Timer
        //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] timer in
        self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 0.1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard time > 0 else {
            guard time > 0 else { // 结束倒计时，刷新视图
                //: if self.matchBackBlock != nil {
                if self.matchBackBlock != nil {
                    //: self.matchBackBlock!()
                    self.matchBackBlock!()
                }
                //: self.destroyTimer()
                self.sizePush()
                //: return
                return
            }
            //: self.progressView.updateProgress(totalTime: self.MatchResultProgress_Timer, currTime: time)
            self.progressView.listTime(totalTime: self.MatchResultProgress_Timer, currTime: time)
            //: time -= 1
            time -= 1
            //: }, repeats: true)
        }, repeats: true)
        //: self.countdownTimer?.fire()
        self.countdownTimer?.fire()
        //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
        RunLoop.current.add(self.countdownTimer!, forMode: .common)
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func sizePush() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }
}

// MARK: - JXBannerDataSource

//: extension TalkingMatchResultPicturesView: JXBannerDataSource {
extension TitleShowDataSource: JXBannerDataSource {
    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.model.photos.count
        return self.model.photos.count
    }

    //: func jxBanner(_ banner: JXBannerType, params: JXBannerParams) -> JXBannerParams {
    func jxBanner(_: JXBannerType, params: JXBannerParams) -> JXBannerParams {
        //: return params.isAutoPlay(false)
        return params.isAutoPlay(false)
    }

    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: TUserDetailHeaderItemCell.self, reuseIdentifier: "TUserDetailHeaderItemCell")
        return JXBannerCellRegister(type: CountView.self, reuseIdentifier: (String(str_clickData.prefix(6)) + "etailH" + String(str_shareTitle.suffix(6)) + "temCell"))
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let bannerCell = cell as! TUserDetailHeaderItemCell
        let bannerCell = cell as! CountView
        //: let str = self.model.photos[index]
        let str = self.model.photos[index]

        //: if index == 0 && self.model.videoUrl.count > 1 {
        if index == 0 && self.model.videoUrl.count > 1 { // 视频
            //: bannerCell.setVideoView()
            bannerCell.gestureModel()
            //: bannerCell.configModel(videoUrl: self.model.videoUrl, imgUrl: self.model.cover)
            bannerCell.rowDismiss(videoUrl: self.model.videoUrl, imgUrl: self.model.cover)
            /// 自动播放完视频后滑动到下一个
//                bannerCell.setupPlayer()
//                bannerCell.playFinishBlock = { [weak self] in
//                    guard let self = self else { return }
//
//                    if self.model.photos.count > 1 {
//                        self.bannerView.scrollToIndex(1, animated: true)
//                    }
//                }

            //: } else {
        } else { // 图片
            //: bannerCell.setImageView()
            bannerCell.choppingBlock()
            //: bannerCell.bgImgView.setUrlImage(urlStr: str, placeImg: UIImage.placeSquareBigImgBanner())
            bannerCell.bgImgView.cling(urlStr: str, placeImg: UIImage.visualImageBanner())
        }
        //: bannerCell.layer.masksToBounds = true
        bannerCell.layer.masksToBounds = true
        //: return bannerCell
        return bannerCell
    }

    //: func jxBanner(pageControl banner: JXBannerType, numberOfPages: Int, coverView: UIView, builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
    func jxBanner(pageControl _: JXBannerType, numberOfPages _: Int, coverView: UIView, builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
        //: let pageControl = JXPageControlJump()
        let pageControl = JXPageControlJump()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!.withAlphaComponent(1.0)
        pageControl.activeColor = UIColor(hex: "#FFFFFF")!.withAlphaComponent(1.0)
        //: pageControl.inactiveColor = UIColor(hex: "#FFFFFF")!.withAlphaComponent(0.6)
        pageControl.inactiveColor = UIColor(hex: "#FFFFFF")!.withAlphaComponent(0.6)
        //: pageControl.activeSize = CGSize(width: 11, height: 7)
        pageControl.activeSize = CGSize(width: 11, height: 7)
        //: pageControl.inactiveSize = CGSize(width: 7, height: 7)
        pageControl.inactiveSize = CGSize(width: 7, height: 7)
        //: pageControl.columnSpacing = 2
        pageControl.columnSpacing = 2
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { (maker) in
            pageControl.snp.makeConstraints { maker in
                //: maker.leading.trailing.equalTo(coverView)
                maker.leading.trailing.equalTo(coverView)
                //: maker.top.equalTo(coverView.snp.top).offset(12)
                maker.top.equalTo(coverView.snp.top).offset(12)
                //: maker.height.equalTo(12)
                maker.height.equalTo(12)
            }
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return builder
        return builder
    }
}

// MARK: - JXBannerDelegate

//: extension TalkingMatchResultPicturesView: JXBannerDelegate {
extension TitleShowDataSource: JXBannerDelegate {
    //: public func jxBanner(_ banner: JXBannerType, didSelectItemAt index: Int) {
    public func jxBanner(_: JXBannerType, didSelectItemAt index: Int) {
        //: if index == 0 && self.model.videoUrl.count > 0 {
        if index == 0 && self.model.videoUrl.count > 0 {
            //: if matchPlayVideoBlock != nil {
            if matchPlayVideoBlock != nil {
                //: matchPlayVideoBlock!(model.videoUrl)
                matchPlayVideoBlock!(model.videoUrl)
            }
        }
    }

    //: func jxBanner(_ banner: JXBannerType, center index: Int) {
    func jxBanner(_: JXBannerType, center _: Int) {}
}

// MARK: - Layout

//: extension TalkingMatchResultPicturesView {
extension TitleShowDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func column() {
        //: self.layer.cornerRadius = 10
        self.layer.cornerRadius = 10
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true

        //: self.addSubview(bannerView)
        self.addSubview(bannerView)
        //: self.addSubview(gradientShadowImageView)
        self.addSubview(gradientShadowImageView)
        //: self.addSubview(nameLab)
        self.addSubview(nameLab)
        //: self.addSubview(authImgV)
        self.addSubview(authImgV)
        //: self.addSubview(sexImgV)
        self.addSubview(sexImgV)
        //: sexImgV.addSubview(ageLab)
        sexImgV.addSubview(ageLab)
        //: self.addSubview(progressView)
        self.addSubview(progressView)
        //: self.addSubview(userImg)
        self.addSubview(userImg)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func corroborateList() {
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientShadowImageView.snp.makeConstraints { make in
        gradientShadowImageView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(174)
            make.height.equalTo(174)
        }

        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-100)
            make.trailing.lessThanOrEqualToSuperview().offset(-100)
        }
        //: authImgV.snp.makeConstraints { make in
        authImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
            make.leading.equalTo(nameLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: sexImgV.snp.makeConstraints { make in
        sexImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(25)
            make.leading.equalTo(nameLab.snp.trailing).offset(25)
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.size.equalTo(CGSize(width: 37, height: 18))
            make.size.equalTo(CGSize(width: 37, height: 18))
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: progressView.snp.makeConstraints { make in
        progressView.snp.makeConstraints { make in
            //: make.bottom.equalTo(nameLab.snp.top).offset(-12)
            make.bottom.equalTo(nameLab.snp.top).offset(-12)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }
        //: userImg.snp.makeConstraints { make in
        userImg.snp.makeConstraints { make in
            //: make.bottom.equalTo(nameLab.snp.top).offset(-15)
            make.bottom.equalTo(nameLab.snp.top).offset(-15)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.width.height.equalTo(52)
            make.width.height.equalTo(52)
        }
    }
}
