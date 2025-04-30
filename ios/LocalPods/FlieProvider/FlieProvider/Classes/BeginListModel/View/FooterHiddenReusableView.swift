
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalText:[UInt8] = [0x96,0x91,0x96,0x8b,0xd7,0x9c,0x90,0x9b,0x9a,0x8d,0xc5,0xd6,0xdf,0x97,0x9e,0x8c,0xdf,0x91,0x90,0x8b,0xdf,0x9d,0x9a,0x9a,0x91,0xdf,0x96,0x92,0x8f,0x93,0x9a,0x92,0x9a,0x91,0x8b,0x9a,0x9b]

private func minimumVoice(view num: UInt8) -> UInt8 {
    return num ^ 255
}

/*: "#F0F0F0" :*/
fileprivate let str_micIndexValue:[Character] = ["#","F","0","F","0","F","0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let str_countErrorData:String = "icon_fadd equal"
fileprivate let str_modeImageMaxName:String = "ents_tap head model mutual"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let str_colorData:[UInt8] = [0xce,0xe5,0xe4,0x68,0xa,0x13,0xfe,0xaa,0xfa,0xe5,0xf9,0xfe,0xaa,0xe9,0xe5,0xe4,0xfe,0xef,0xe4,0xfe,0xaa,0xfe,0xe2,0xeb,0xfe,0xaa,0xe3,0xe4,0xee,0xff,0xe9,0xef,0xf9,0xaa,0xe5,0xfe,0xe2,0xef,0xf8,0xf9,0xaa,0xfe,0xe5,0xaa,0xf9,0xef,0xe4,0xee,0xaa,0xed,0xe3,0xec,0xfe,0xf9,0xaa,0xe5,0xf8,0xaa,0xe5,0xfe,0xe2,0xef,0xf8,0xaa,0xe7,0xe5,0xe4,0xef,0xf3,0xa7,0xf8,0xef,0xe6,0xeb,0xfe,0xef,0xee,0xaa,0xe9,0xe3,0xe4,0xfe,0xef,0xe4,0xfe,0xa4]

private func ricePaddy(value num: UInt8) -> UInt8 {
    return num ^ 138
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FooterHiddenReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class FooterHiddenReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalText.map{minimumVoice(view: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        context()
        //: setupSubViewsConstraint()
        socialEventConstraint()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: "#F0F0F0")
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearTap(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.nearTap(name: (String(str_countErrorData.prefix(6)) + "bmom" + String(str_modeImageMaxName.prefix(5)) + "notice")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: str_colorData.map{ricePaddy(value: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.loadEnable(type: .Regular, fontSize: 13)
        lab.font = UIFont.loadEnable(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.frontColor()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension FooterHiddenReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func context() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func socialEventConstraint() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: consLet_errorDeviceHeightData - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: consLet_errorDeviceHeightData - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
