
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_layerMiniStatData:[UInt8] = [0x52,0x55,0x52,0x4f,0x13,0x58,0x54,0x5f,0x5e,0x49,0x1,0x12,0x1b,0x53,0x5a,0x48,0x1b,0x55,0x54,0x4f,0x1b,0x59,0x5e,0x5e,0x55,0x1b,0x52,0x56,0x4b,0x57,0x5e,0x56,0x5e,0x55,0x4f,0x5e,0x5f]

/*: "More" :*/
fileprivate let str_applicationValue:String = "make share add request typeMore"

/*: "icon_details_arrow" :*/
fileprivate let str_titleData:String = "icon_view if control tab"
fileprivate let str_listValue:String = "model player count colorils_a"
fileprivate let str_layerErrorData:[Character] = ["r","r","o","w"]

/*: " (%ld)" :*/
fileprivate let str_eventValue:[Character] = [" ","(","%","l","d",")"]

/*: "Post" :*/
fileprivate let str_pushValue:String = "Postif value"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_sizeContent:String = "center timebtn_d"
fileprivate let str_ofName:String = "send value falsec_st"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StoreView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailPostCell: UITableViewCell {
class StoreView: UITableViewCell {
    //: var userId: String = ""
    var userId: String = ""

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
        self.array()
        //: self.setupSubViewsConstraint()
        self.stageTitleConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_layerMiniStatData.map{$0^59}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .loadEnable(type: .Medium, fontSize: 17)
        lb.font = .loadEnable(type: .Medium, fontSize: 17)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstImgView: UIImageView = {
    lazy var firstImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.layer.cornerRadius = 8
        imgV.layer.cornerRadius = 8
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var secondImgView: UIImageView = {
    lazy var secondImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.layer.cornerRadius = 8
        imgV.layer.cornerRadius = 8
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var thirdImgView: UIImageView = {
    lazy var thirdImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.layer.cornerRadius = 8
        imgV.layer.cornerRadius = 8
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var maskMoreView: UIView = {
    lazy var maskMoreView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .RGBA(0, 0, 0, 0.4)
        view.backgroundColor = .computeImage(0, 0, 0, 0.4)
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var moreButton: TalkingButton = .init().then {
    lazy var moreButton: LabelPositionReactiveCompatible = .init().then {
        //: $0.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 17)
        $0.titleLabel?.font = .loadEnable(type: .Regular, fontSize: 17)
        //: $0.setTitle("More".localized, for: .normal)
        $0.setTitle("More".localized, for: .normal)
        //: $0.setImage(UIImage(named: "icon_details_arrow"), for: .normal)
        $0.setImage(UIImage(named: (String(str_titleData.prefix(5)) + "deta" + String(str_listValue.suffix(5)) + String(str_layerErrorData))), for: .normal)
        //: $0.imageAlignment = .right
        $0.imageAlignment = .right
        //: $0.spaceBetweenTitleAndImage = 4
        $0.spaceBetweenTitleAndImage = 4
        //: $0.alpha = 0.8
        $0.alpha = 0.8
        //: $0.isUserInteractionEnabled = false
        $0.isUserInteractionEnabled = false
    }

    //: lazy var pushBtn: UIButton = {
    lazy var pushBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(postBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(outpost), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Bind && Event

//: extension TalkingUserDetailPostCell {
extension StoreView {
    //: private func bindInteraction() {
    private func counteractionShow() {}
}

// MARK: - update

//: extension TalkingUserDetailPostCell {
extension StoreView {
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func gleam(userModel: MonthLabelHandyJSON) {
        //: userId = userModel.uid
        userId = userModel.uid

        //: firstImgView.isHidden = true
        firstImgView.isHidden = true
        //: secondImgView.isHidden = true
        secondImgView.isHidden = true
        //: thirdImgView.isHidden = true
        thirdImgView.isHidden = true

        //: let str = String(format: " (%ld)", (userModel.momentPic?.count)!)
        let str = String(format: " (%ld)", (userModel.momentPic?.count)!)
        //: var strA = [String]()
        var strA = [String]()
        //: var colorA = [UIColor]()
        var colorA = [UIColor]()
        //: var fontA = [UIFont]()
        var fontA = [UIFont]()
        //: strA = ["Post".localized, str]
        strA = ["Post".localized, str]
        //: colorA = [UIColor.appTitleColor(), UIColor.appValueColor()]
        colorA = [UIColor.appNameVisualProperty(), UIColor.frontColor()]
        //: fontA = [UIFont.little(fontSize: 18), UIFont.little(fontSize: 16)]
        fontA = [UIFont.little(fontSize: 18), UIFont.little(fontSize: 16)]
        //: var attributedString = NSMutableAttributedString.init()
        var attributedString = NSMutableAttributedString()
        //: attributedString = attributedString.mutilpartAttributedStringWith(texts: strA, colors: colorA, fonts: fontA)
        attributedString = attributedString.aggregationFonts(texts: strA, colors: colorA, fonts: fontA)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineSpacing = 2
        paragraphStyle.lineSpacing = 2 // 设置行间距

        //: attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))

        //: titleLab.attributedText = attributedString
        titleLab.attributedText = attributedString

        //: let itemCount = min(3, (userModel.momentPic?.count)!)
        let itemCount = min(3, (userModel.momentPic?.count)!)
        //: moreButton.isHidden = !(userModel.momentPic!.count>3)
        moreButton.isHidden = !(userModel.momentPic!.count > 3)
        //: maskMoreView.isHidden = !(userModel.momentPic!.count>3)
        maskMoreView.isHidden = !(userModel.momentPic!.count > 3)
        //: for index in 0..<itemCount {
        for index in 0 ..< itemCount {
            //: if index == 0 {
            if index == 0 {
                //: let model: TalkingUserInfoMomentItemModel = (userModel.momentPic?.list)![index]
                let model: MagnitudeUpMeasurable = (userModel.momentPic?.list)![index]
                //: firstImgView.isHidden = false
                firstImgView.isHidden = false
                //: firstImgView.tag = 100
                firstImgView.tag = 100
                //: firstImgView.kf.setImage(with: URL(string: model.img_url), placeholder: UIImage.placeImgSquare())
                firstImgView.kf.setImage(with: URL(string: model.img_url), placeholder: UIImage.requestInfo())

                //: if model.moment_type == 2 {
                if model.moment_type == 2 {
                    //: setPlayView(btn: firstImgView)
                    barrelForView(btn: firstImgView)
                }

                //: } else if index == 1 {
            } else if index == 1 {
                //: let model: TalkingUserInfoMomentItemModel = (userModel.momentPic?.list)![index]
                let model: MagnitudeUpMeasurable = (userModel.momentPic?.list)![index]
                //: secondImgView.isHidden = false
                secondImgView.isHidden = false
                //: secondImgView.tag = 101
                secondImgView.tag = 101
                //: secondImgView.kf.setImage(with: URL(string: model.img_url), placeholder: UIImage.placeImgSquare())
                secondImgView.kf.setImage(with: URL(string: model.img_url), placeholder: UIImage.requestInfo())

                //: if model.moment_type == 2 {
                if model.moment_type == 2 {
                    //: setPlayView(btn: secondImgView)
                    barrelForView(btn: secondImgView)
                }
                //: } else {
            } else {
                //: let model: TalkingUserInfoMomentItemModel = (userModel.momentPic?.list)![index]
                let model: MagnitudeUpMeasurable = (userModel.momentPic?.list)![index]
                //: thirdImgView.isHidden = false
                thirdImgView.isHidden = false
                //: thirdImgView.tag = 103
                thirdImgView.tag = 103
                //: thirdImgView.kf.setImage(with: URL(string: model.img_url), placeholder: UIImage.placeImgSquare())
                thirdImgView.kf.setImage(with: URL(string: model.img_url), placeholder: UIImage.requestInfo())

                //: if model.moment_type == 2 {
                if model.moment_type == 2 {
                    //: setPlayView(btn: thirdImgView)
                    barrelForView(btn: thirdImgView)
                }
            }
        }
    }

    //: @objc func postBtnClick() {
    @objc func outpost() {
        //: let vc = TalkingUserMomentVC.init(uid: userId)
        let vc = ClearThen(uid: userId)
        //: self.currentViewController()?.navigationController!.pushViewController(vc, animated: true)
        self.userRead()?.navigationController!.pushViewController(vc, animated: true)
    }

    //: func setPlayView(btn: UIImageView) {
    func barrelForView(btn: UIImageView) {
        //: btn.subviews.map {
        btn.subviews.map {
            //: (view) -> () in
            view in
            //: if view.tag == btn.tag - 100 && view is UIImageView {
            if view.tag == btn.tag - 100, view is UIImageView {
                //: view.removeFromSuperview()
                view.removeFromSuperview()
            }
        }
        //: let  imag = UIImageView.init(image: UIImage.init(named: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage(named: (String(str_sizeContent.suffix(5)) + "ynami" + String(str_ofName.suffix(4)) + "op_nor")))
        //: imag.isUserInteractionEnabled = false
        imag.isUserInteractionEnabled = false
        //: imag.tag = btn.tag - 100
        imag.tag = btn.tag - 100
        //: btn.addSubview(imag)
        btn.addSubview(imag)
        //: imag.snp.makeConstraints { make in
        imag.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailPostCell {
extension StoreView {
    //: private func setupSubviews() {
    private func array() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(firstImgView)
        contentView.addSubview(firstImgView)
        //: contentView.addSubview(secondImgView)
        contentView.addSubview(secondImgView)
        //: contentView.addSubview(thirdImgView)
        contentView.addSubview(thirdImgView)
        //: contentView.addSubview(maskMoreView)
        contentView.addSubview(maskMoreView)
        //: contentView.addSubview(moreButton)
        contentView.addSubview(moreButton)
        //: contentView.addSubview(pushBtn)
        contentView.addSubview(pushBtn)
        //: contentView.insertSubview(pushBtn, at: 99)
        contentView.insertSubview(pushBtn, at: 99)
    }

    //: private func setupSubViewsConstraint() {
    private func stageTitleConstraint() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12))
            make.top.equalTo(actualHeight(h: 12))
        }

        //: let height = (ScreenWidth-actualWidth(w: 15*4)) / 3.0
        let height = (consLet_errorDeviceHeightData - actualWidth(w: 15 * 4)) / 3.0
        //: firstImgView.snp.makeConstraints { make in
        firstImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 16))
            make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 16))
            //: make.width.height.equalTo(height)
            make.width.height.equalTo(height)
        }
        //: secondImgView.snp.makeConstraints { make in
        secondImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(firstImgView.snp.trailing).offset(actualWidth(w: 15))
            make.leading.equalTo(firstImgView.snp.trailing).offset(actualWidth(w: 15))
            //: make.centerY.equalTo(firstImgView.snp.centerY)
            make.centerY.equalTo(firstImgView.snp.centerY)
            //: make.width.height.equalTo(height)
            make.width.height.equalTo(height)
        }
        //: thirdImgView.snp.makeConstraints { make in
        thirdImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(secondImgView.snp.trailing).offset(actualWidth(w: 15))
            make.leading.equalTo(secondImgView.snp.trailing).offset(actualWidth(w: 15))
            //: make.centerY.equalTo(firstImgView.snp.centerY)
            make.centerY.equalTo(firstImgView.snp.centerY)
            //: make.width.height.equalTo(height)
            make.width.height.equalTo(height)
        }
        //: maskMoreView.snp.makeConstraints { make in
        maskMoreView.snp.makeConstraints { make in
            //: make.leading.equalTo(thirdImgView.snp.leading)
            make.leading.equalTo(thirdImgView.snp.leading)
            //: make.top.equalTo(thirdImgView.snp.top)
            make.top.equalTo(thirdImgView.snp.top)
            //: make.width.height.equalTo(height)
            make.width.height.equalTo(height)
        }
        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.leading.equalTo(thirdImgView.snp.leading)
            make.leading.equalTo(thirdImgView.snp.leading)
            //: make.trailing.equalTo(thirdImgView.snp.trailing)
            make.trailing.equalTo(thirdImgView.snp.trailing)
            //: make.centerY.equalTo(thirdImgView)
            make.centerY.equalTo(thirdImgView)
            //: make.height.equalTo(actualHeight(h: 30))
            make.height.equalTo(actualHeight(h: 30))
        }
        //: pushBtn.snp.makeConstraints { make in
        pushBtn.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(contentView)
            make.leading.trailing.bottom.equalTo(contentView)
            //: make.top.equalTo(titleLab)
            make.top.equalTo(titleLab)
        }
    }
}
