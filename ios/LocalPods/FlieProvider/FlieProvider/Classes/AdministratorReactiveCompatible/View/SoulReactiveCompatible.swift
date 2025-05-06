
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_currentName:[UInt8] = [0xcb,0xd0,0xcb,0xd6,0x8a,0xc5,0xd1,0xc6,0xc7,0xd4,0x9c,0x8b,0x82,0xca,0xc3,0xd5,0x82,0xd0,0xd1,0xd6,0x82,0xc4,0xc7,0xc7,0xd0,0x82,0xcb,0xcf,0xd2,0xce,0xc7,0xcf,0xc7,0xd0,0xd6,0xc7,0xc6]

fileprivate func panoramicView(to num: UInt8) -> UInt8 {
    let value = Int(num) + 158
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "More attractive photo more calls" :*/
fileprivate let str_colorServiceValue:[UInt8] = [0x73,0x6c,0x6c,0x61,0x63,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x76,0x69,0x74,0x63,0x61,0x72,0x74,0x74,0x61,0x20,0x65,0x72,0x6f,0x4d]

/*: "Upload any photo you like" :*/
fileprivate let str_effectLabRejectText:String = "current"
fileprivate let str_cellValue:[Character] = ["p","l","o","a","d"," ","a","n","y"," ","p","h","o","t","o"," ","y","o","u"," ","l","i","k","e"]

/*: "F4F4F4" :*/
fileprivate let str_pushValue:String = "style4style4style4"

/*: "btn_add_head_cover_nor" :*/
fileprivate let str_starValue:String = "type user managerbtn_ad"
fileprivate let str_managerText:String = "back status file observe empty_cov"
fileprivate let str_clickName:[Character] = ["e"]
fileprivate let str_hiddenText:[Character] = ["r","_","n","o","r"]

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let str_centerFrameValue:[UInt8] = [0x6c,0x50,0x59,0x5d,0x4f,0x59,0x1c,0x49,0x4c,0x50,0x53,0x5d,0x58,0x1c,0x5d,0x1c,0x5f,0x50,0x59,0x5d,0x4e,0x1c,0x5d,0x52,0x58,0x1c,0x5e,0x59,0x5d,0x49,0x48,0x55,0x5a,0x49,0x50,0x1c,0x4c,0x54,0x53,0x48,0x53,0x1c,0x53,0x5a,0x1c,0x45,0x53,0x49,0x4e,0x4f,0x59,0x50,0x5a]

private func ofLabel(room num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let str_fieldData:[UInt8] = [0x57,0x76,0x39,0x6f,0x70,0x76,0x75,0x7c,0x77,0x7a,0x7c,0x35,0x39,0x69,0x76,0x6b,0x77,0x76,0x7e,0x6b,0x78,0x69,0x71,0x60,0x35,0x39,0x76,0x6b,0x39,0x69,0x76,0x75,0x70,0x6d,0x70,0x7a,0x6a,0x39,0x78,0x75,0x75,0x76,0x6e,0x7c,0x7d]

private func backgroundLayer(color num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "Next" :*/
fileprivate let str_requestData:[Character] = ["N","e","x","t"]

/*: "edit_head_Image_male_ :*/
fileprivate let str_bottomSessionData:String = "rank interval add if phoneedit_h"
fileprivate let str_personName:String = "application letImage"
fileprivate let str_viewName:String = "_"
fileprivate let str_indexName:String = "male_view size register white post"

/*: "edit_head_Image_ :*/
fileprivate let str_rangeValue:String = "gift any titleedit_"
fileprivate let str_showText:String = "mage_kit let"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SoulReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class SoulReactiveCompatible: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: StableInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.milk()
        //: self.setupSubViewsConstraint()
        self.narrowness()
        //: self.bindInteraction()
        self.now()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_currentName.map{panoramicView(to: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 17)
        label.font = .loadEnable(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if IndexStyleAppManager.share.userFillInfoMode.sex == Gender.female.rawValue {
        if IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: str_colorServiceValue.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (str_effectLabRejectText.replacingOccurrences(of: "current", with: "U") + String(str_cellValue)).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: "F4F4F4")
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = IndexStyleAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = IndexStyleAppManager.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.nearTap(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.nearTap(name: (String(str_starValue.suffix(6)) + "d_head" + String(str_managerText.suffix(4)) + String(str_clickName) + String(str_hiddenText))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 15)
        label.font = .loadEnable(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .frontColor()
        //: if IndexStyleAppManager.share.userFillInfoMode.sex == Gender.female.rawValue {
        if IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: str_centerFrameValue.map{ofLabel(room: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: str_fieldData.map{backgroundLayer(color: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle("Next".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension SoulReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func milk() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func narrowness() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (consLet_errorDeviceHeightData - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if IndexStyleAppManager.share.userFillInfoMode.sex == "1" {
            if IndexStyleAppManager.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.nearTap(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.nearTap(name: (String(str_bottomSessionData.suffix(6)) + "ead_" + String(str_personName.suffix(5)) + str_viewName.capitalized + String(str_indexName.prefix(5))) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.nearTap(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.nearTap(name: (String(str_rangeValue.suffix(5)) + "head_I" + String(str_showText.prefix(5))) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func now() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
