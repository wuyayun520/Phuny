
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_collectionText:[UInt8] = [0xd8,0xdf,0xd8,0xc5,0x99,0xd2,0xde,0xd5,0xd4,0xc3,0x8b,0x98,0x91,0xd9,0xd0,0xc2,0x91,0xdf,0xde,0xc5,0x91,0xd3,0xd4,0xd4,0xdf,0x91,0xd8,0xdc,0xc1,0xdd,0xd4,0xdc,0xd4,0xdf,0xc5,0xd4,0xd5]

private func dataNo(you num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "Video Cover" :*/
fileprivate let str_norData:String = "Videlet make report view model"

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let str_labCellName:[UInt8] = [0x9b,0xbe,0xbe,0xb3,0xb4,0xbd,0xfa,0xbb,0xfa,0xac,0xb3,0xbe,0xbf,0xb5,0xfa,0xb9,0xb5,0xac,0xbf,0xa8,0xfa,0xae,0xb5,0xfa,0xa9,0xb2,0xb5,0xad,0xfa,0xae,0xb2,0xbf,0xfa,0xb9,0xb2,0xbb,0xa8,0xb7,0xfa,0xb9,0xbb,0xb4,0xfa,0xbd,0xbf,0xae,0xfa,0xb7,0xb5,0xa8,0xbf,0xfa,0xbd,0xb5,0xb5,0xbe,0xfa,0xbc,0xbf,0xbf,0xb6,0xb3,0xb4,0xbd,0xa9,0xf4]

private func putUpHidden(fade num: UInt8) -> UInt8 {
    return num ^ 218
}

/*: "img_me_edit_video_default" :*/
fileprivate let str_redText:String = "for title make appimg_m"
fileprivate let str_gamePathData:String = "party elset_vid"
fileprivate let str_giftViewValue:String = "AULT"

/*: "btn_me_edit_photo_change" :*/
fileprivate let str_cellData:String = "btn_metable to date"
fileprivate let str_equalData:[Character] = ["p","h","o","t"]
fileprivate let str_listCountTitle:[Character] = ["o","_","c","h","a","n","g","e"]

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_toData:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","s","t","o"]
fileprivate let str_coinLengthData:String = "p_norenable height top"

/*: "#FF506D" :*/
fileprivate let str_addName:[Character] = ["#","F","F","5","0","6"]
fileprivate let str_insertValue:String = "disabled"

/*: "Reviewing" :*/
fileprivate let str_labData:String = "Revistring cell shared make"

/*: "Shoot video at least 5 seconds" :*/
fileprivate let str_addWriteName:[Character] = ["S","h","o","o","t"," ","v","i"]
fileprivate let str_labelContent:String = "deo atincome info load"
fileprivate let str_requestName:String = " 5 sedit make let lab var"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingJumpCompartmentView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class TalkingJumpCompartmentView: UITableViewCell {
    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        betise()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_collectionText.map{dataNo(you: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        changeGreet()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: lb.text = "Video Cover".localized
        lb.text = (String(str_norData.prefix(4)) + "o Cover").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.bringHomeColor()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: str_labCellName.map{putUpHidden(fade: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.nearTap(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_redText.suffix(5)) + "e_edi" + String(str_gamePathData.suffix(5)) + "eo_def" + str_giftViewValue.lowercased())), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isochronal), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_cellData.prefix(6)) + "_edit_" + String(str_equalData) + String(str_listCountTitle))), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(performHandle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.nearTap(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.nearTap(name: (String(str_toData) + String(str_coinLengthData.prefix(5))))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Medium, fontSize: 12)
        lb.font = UIFont.loadEnable(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: "#FF506D")
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_labData.prefix(4)) + "ewing").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension TalkingJumpCompartmentView {
    //: func upDateCellView(videoPlayPath: String) {
    func addOperate(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func pathBirdSeyeViewSetCompartmentInsetList(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.net(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func bindStatus(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension TalkingJumpCompartmentView {
    //: @objc private func changeBtnClick() {
    @objc private func performHandle() {
        //: if !IndexStyleAppManager.share.loginUserMode.isNaUser,
        if !IndexStyleAppManager.share.loginUserMode.isNaUser,
           //: IndexStyleAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           IndexStyleAppManager.share.loginUserMode.isTPAuth != QualityNameLiteral.isSuccessed.rawValue,
           //: IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            QuantityWindowManager.shared.sectionIntervalimate()
            //: return
            return
        }
        //: seleteVideoTool()
        textGift()
    }

    //: @objc private func iconbtnclick() {
    @objc private func isochronal() {
        //: if !IndexStyleAppManager.share.loginUserMode.isNaUser,
        if !IndexStyleAppManager.share.loginUserMode.isNaUser,
           //: IndexStyleAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           IndexStyleAppManager.share.loginUserMode.isTPAuth != QualityNameLiteral.isSuccessed.rawValue,
           //: IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            QuantityWindowManager.shared.sectionIntervalimate()
            //: return
            return
        }

        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            textGift()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = JewishCalendarMonthViewController(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.userRead()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func textGift() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        KeyPermissionTool.albumTheme(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = MightHaveBeenThen.sendLocal(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.userRead()?.present(vc, animated: true)
                //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
                vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                                //: assets: PHAsset?)  in
                                                                assets: PHAsset?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                        MightHaveBeenThen.makeCompletion(asset: assets) { filePath in

                            //: guard filePath != nil else { return }
                            guard filePath != nil else { return }
                            //: let asset = AVURLAsset.init(url: filePath!)
                            let asset = AVURLAsset(url: filePath!)
                            //: let time = asset.duration
                            let time = asset.duration
                            //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.sumeractionView(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                    self.noblesseExtra(showMsg: (String(str_addWriteName) + String(str_labelContent.prefix(6)) + " least" + String(str_requestName.prefix(4)) + "econds").localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func sumeractionView(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = HiddenWhiteReactiveCompatible(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: ProgressHUD.dismiss()
        DeviceFailThen.theAdd()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.userRead()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func drop() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension TalkingJumpCompartmentView {
    /// 添加视图
    //: private func setupSubviews() {
    private func betise() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func changeGreet() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
