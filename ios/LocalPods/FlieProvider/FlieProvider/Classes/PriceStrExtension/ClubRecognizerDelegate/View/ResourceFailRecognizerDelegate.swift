
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_fillText:[UInt8] = [0xe8,0xef,0xe8,0xf5,0xa9,0xe2,0xee,0xe5,0xe4,0xf3,0xbb,0xa8,0xa1,0xe9,0xe0,0xf2,0xa1,0xef,0xee,0xf5,0xa1,0xe3,0xe4,0xe4,0xef,0xa1,0xe8,0xec,0xf1,0xed,0xe4,0xec,0xe4,0xef,0xf5,0xe4,0xe5]

private func playerMode(equal num: UInt8) -> UInt8 {
    return num ^ 129
}

/*: "img_match_shadow" :*/
fileprivate let str_cellData:[Character] = ["i","m","g","_","m","a","t","c","h","_","s","h","a","d","o","w"]

/*: "icon_home_v" :*/
fileprivate let str_scaleIconData:String = "icon_homself add view"
fileprivate let str_sexName:String = "source quit player premium modele_v"

/*: "icon_home_position" :*/
fileprivate let str_pathValue:[Character] = ["i","c","o","n","_","h","o","m","e","_","p","o","s"]
fileprivate let str_hideData:String = "enabletenableon"

/*: ",  :*/
fileprivate let str_sizeValue:[Character] = [","," "]

/*: "#2DF2FF" :*/
fileprivate let str_toText:String = "card"
fileprivate let str_partyValue:String = "let little nor extension2DF2FF"

/*: "Live" :*/
fileprivate let str_succeedName:String = "Liveperformance name size index"

/*: "#48FF1E" :*/
fileprivate let str_colorText:String = "#48FFleading icon size"
fileprivate let str_styleValue:[Character] = ["1","E"]

/*: "Online" :*/
fileprivate let str_viewLeadingName:[Character] = ["O","n","l","i","n","e"]

/*: "miles" :*/
fileprivate let str_saveName:String = "mitooes"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResourceFailRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/18.
//

//: import UIKit
import UIKit

//: class TalkingClubCardItemCell: TalkingClubCardViewCell {
class ResourceFailRecognizerDelegate: SequenceErrorViewCell {
    //: var selePhotoIndex = 0
    var selePhotoIndex = 0

    //: required override init(reuseIdentifier: String) {
    override required init(reuseIdentifier: String) {
        //: super.init(reuseIdentifier: reuseIdentifier)
        super.init(reuseIdentifier: reuseIdentifier)
        //: self.reuseIdentifier = reuseIdentifier
        self.reuseIdentifier = reuseIdentifier
        //: setItemView()
        subItem()
        //: setItemViewFrame()
        setThroughEyeglassesButton()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fillText.map{playerMode(equal: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var containerView: UIView = {
    private lazy var containerView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius =  12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var gradientShadowImageView: UIImageView = {
    private lazy var gradientShadowImageView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.image = UIImage.nearTap(name: "img_match_shadow")
        imageView.image = UIImage.nearTap(name: (String(str_cellData)))
        //: imageView.isUserInteractionEnabled = true
        imageView.isUserInteractionEnabled = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var userImageBtn: UIImageView = {
    private lazy var userImageBtn: UIImageView = {
        //: let btn = UIImageView()
        let btn = UIImageView()
        //: btn.contentMode = .scaleAspectFill
        btn.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = true
        btn.isUserInteractionEnabled = true
        //: let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(userImageBtnClick))
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(moveImageUser))
        //: btn.addGestureRecognizer(tapGestureRecognizer)
        btn.addGestureRecognizer(tapGestureRecognizer)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var statusImgV: TalkingButton = {
    private lazy var statusImgV: LabelPositionReactiveCompatible = {
        //: let img = TalkingButton()
        let img = LabelPositionReactiveCompatible()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.just(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.little(fontSize: 12)
        img.titleLabel?.font = UIFont.little(fontSize: 12)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        lab.font = UIFont.loadEnable(type: .Medium, fontSize: 20)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var attestationImgV: UIImageView = {
    private lazy var attestationImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearTap(name: "icon_home_v")
        img.image = UIImage.nearTap(name: (String(str_scaleIconData.prefix(8)) + String(str_sexName.suffix(3))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var locationBtn: TalkingButton = {
    private lazy var locationBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = LabelPositionReactiveCompatible()
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.setImage(UIImage.nearTap(name: "icon_home_position"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_pathValue) + str_hideData.replacingOccurrences(of: "enable", with: "i"))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 15)
        btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 15)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = ServerLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingClubCardItemCell {
extension ResourceFailRecognizerDelegate {
    //: func setCellData(model: SocialUserListModel) {
    func day(model: VideoDeviceHandyJSON) {
        //: self.model = model
        self.model = model
        //: let photosModel = model.photos.first
        let photosModel = model.photos.first
        //: userImageBtn.setUrlImage(urlStr: photosModel?.url ?? "", placeImg: UIImage.placeImgSquare())
        userImageBtn.cling(urlStr: photosModel?.url ?? "", placeImg: UIImage.requestInfo())
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: ageLab.text = ", \(model.age)"
        ageLab.text = ", \(model.age)"
        //: attestationImgV.isHidden = !model.isTPAuth
        attestationImgV.isHidden = !model.isTPAuth

        //: if model.liveStatus {
        if model.liveStatus {
            //: statusImgV.isHidden = false
            statusImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.listen(color: UIColor(hex: "#2DF2FF")!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.circle(), for: .normal)
            statusImgV.setImage(image.image(), for: .normal)
            //: statusImgV.setTitle("Live".localized, for: .normal)
            statusImgV.setTitle("Live".localized, for: .normal)
            //: } else {
        } else {
            //: statusImgV.isHidden = !(model.status == 1)
            statusImgV.isHidden = !(model.status == 1)
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.listen(color: UIColor(hex: "#48FF1E")!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.circle(), for: .normal)
            statusImgV.setImage(image.image(), for: .normal)
            //: statusImgV.setTitle("Online".localized, for: .normal)
            statusImgV.setTitle("Online".localized, for: .normal)
        }
        //: let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.little(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.little(fontSize: 12)], context: nil)
        //: let textlef = statusImgV.isHidden ? 0:20.0
        let textlef = statusImgV.isHidden ? 0 : 20.0
        //: statusImgV.snp.remakeConstraints { make in
        statusImgV.snp.remakeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.bottom.equalTo(nameLab.snp.top).offset(-10)
            make.bottom.equalTo(nameLab.snp.top).offset(-10)
            //: make.width.equalTo(rect.width + textlef)
            make.width.equalTo(rect.width + textlef)
        }
        //: if statusImgV.isHidden {
        if statusImgV.isHidden {
            //: locationBtn.snp.remakeConstraints { make in
            locationBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(14)
                make.leading.equalTo(14)
                //: make.centerY.equalTo(statusImgV)
                make.centerY.equalTo(statusImgV)
                //: make.height.equalTo(14)
                make.height.equalTo(14)
            }
            //: }else {
        } else {
            //: locationBtn.snp.remakeConstraints { make in
            locationBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(statusImgV.snp.trailing).offset(6)
                make.leading.equalTo(statusImgV.snp.trailing).offset(6)
                //: make.centerY.equalTo(statusImgV)
                make.centerY.equalTo(statusImgV)
                //: make.height.equalTo(14)
                make.height.equalTo(14)
            }
        }
        //: locationBtn.isHidden = model.distance.count <= 0
        locationBtn.isHidden = model.distance.count <= 0
        //: locationBtn.setTitle("\(model.distance)" + "miles".localized, for: .normal)
        locationBtn.setTitle("\(model.distance)" + "miles".localized, for: .normal)
    }

    //: @objc private func userImageBtnClick() {
    @objc private func moveImageUser() {
        // 埋点
        //: let uid = self.model?.uid ?? 0
        let uid = self.model?.uid ?? 0
        //: uploadRecord.uploadRecordEvent(eventID: click_home_Cover, toUid: "\(uid)")
        consLet_contentData.postEqual(eventID: consLet_seatData, toUid: "\(uid)")
        //: guard self.model?.photos.count ?? 0 > 1 else {
        guard self.model?.photos.count ?? 0 > 1 else {
            //: return
            return
        }
        //: selePhotoIndex += 1
        selePhotoIndex += 1
        //: if selePhotoIndex >= self.model?.photos.count ?? 0 {
        if selePhotoIndex >= self.model?.photos.count ?? 0 {
            //: selePhotoIndex = 0
            selePhotoIndex = 0
        }
        //: let photosmodel = self.model?.photos[selePhotoIndex]
        let photosmodel = self.model?.photos[selePhotoIndex]
        //: userImageBtn.setUrlImage(urlStr: photosmodel?.url ?? "", placeImg: UIImage.placeImgSquare())
        userImageBtn.cling(urlStr: photosmodel?.url ?? "", placeImg: UIImage.requestInfo())
        //: updateCurrentPageIndicator(index: selePhotoIndex)
        marginOfSafetyIndex(index: selePhotoIndex)
    }
}

//: extension TalkingClubCardItemCell {
extension ResourceFailRecognizerDelegate {
    //: func setItemView() {
    func subItem() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(containerView)
        self.addSubview(containerView)
        //: containerView.addSubview(userImageBtn)
        containerView.addSubview(userImageBtn)
        //: containerView.addSubview(gradientShadowImageView)
        containerView.addSubview(gradientShadowImageView)

        //: gradientShadowImageView.addSubview(statusImgV)
        gradientShadowImageView.addSubview(statusImgV)
        //: gradientShadowImageView.addSubview(nameLab)
        gradientShadowImageView.addSubview(nameLab)
        //: gradientShadowImageView.addSubview(ageLab)
        gradientShadowImageView.addSubview(ageLab)
        //: gradientShadowImageView.addSubview(attestationImgV)
        gradientShadowImageView.addSubview(attestationImgV)
        //: gradientShadowImageView.addSubview(locationBtn)
        gradientShadowImageView.addSubview(locationBtn)
    }

    //: func setItemViewFrame() {
    func setThroughEyeglassesButton() {
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientShadowImageView.snp.makeConstraints { make in
        gradientShadowImageView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(79)
            make.height.equalTo(79)
        }

        //: userImageBtn.snp.makeConstraints { make in
        userImageBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
            //: make.width.lessThanOrEqualTo(100)
            make.width.lessThanOrEqualTo(100)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLab.snp.trailing).offset(2)
            make.leading.equalTo(nameLab.snp.trailing).offset(2)
            //: make.top.height.equalTo(nameLab)
            make.top.height.equalTo(nameLab)
            //: make.width.lessThanOrEqualTo(50)
            make.width.lessThanOrEqualTo(50)
        }

        //: statusImgV.snp.makeConstraints { make in
        statusImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(14)
            make.leading.equalTo(14)
            //: make.bottom.equalTo(nameLab.snp.top).offset(-10)
            make.bottom.equalTo(nameLab.snp.top).offset(-10)
        }

        //: locationBtn.snp.makeConstraints { make in
        locationBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(statusImgV.snp.trailing).offset(6)
            make.leading.equalTo(statusImgV.snp.trailing).offset(6)
            //: make.centerY.equalTo(statusImgV)
            make.centerY.equalTo(statusImgV)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: attestationImgV.snp.makeConstraints { make in
        attestationImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(ageLab)
            make.centerY.equalTo(ageLab)
            //: make.leading.equalTo(ageLab.snp.trailing).offset(6)
            make.leading.equalTo(ageLab.snp.trailing).offset(6)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }
    }
}
