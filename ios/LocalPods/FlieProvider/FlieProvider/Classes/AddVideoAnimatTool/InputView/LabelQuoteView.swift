
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelData:[UInt8] = [0xc2,0xc5,0xc2,0xdf,0x83,0xc8,0xc4,0xcf,0xce,0xd9,0x91,0x82,0x8b,0xc3,0xca,0xd8,0x8b,0xc5,0xc4,0xdf,0x8b,0xc9,0xce,0xce,0xc5,0x8b,0xc2,0xc6,0xdb,0xc7,0xce,0xc6,0xce,0xc5,0xdf,0xce,0xcf]

private func coreLevel(first num: UInt8) -> UInt8 {
    return num ^ 171
}

/*: "#DCDCD" :*/
fileprivate let str_aspectText:String = "#DCDCDaspect style equal self"

/*: "Reply" :*/
fileprivate let str_underValue:String = "Replypath make let price"

/*: "btn_delete" :*/
fileprivate let str_viewTitle:String = "title"
fileprivate let str_headToValue:String = "white connection true styletn_delete"

/*: "text" :*/
fileprivate let str_numberText:String = "renderexrender"

/*: "gift" :*/
fileprivate let str_imageName:String = "genableft"

/*: "Sent " :*/
fileprivate let str_scaleValue:String = "Sent let self tip voice"

/*: " x :*/
fileprivate let str_makeValue:String = "as else hidden to x"

/*: "audio" :*/
fileprivate let str_modelRequestData:[Character] = ["a","u","d","i","o"]

/*: "[Audio]" :*/
fileprivate let str_toValue:String = "[Audiodata to"
fileprivate let str_contentText:String = "title"

/*: "img" :*/
fileprivate let str_mainData:String = "imfatal"

/*: "[Image]" :*/
fileprivate let str_managerTitle:String = "[Image]all to inside image"

/*: "video" :*/
fileprivate let str_makeData:[Character] = ["v","i","d","e","o"]

/*: ": [" :*/
fileprivate let str_toHeadText:[Character] = [":"," ","["]

/*: "Video" :*/
fileprivate let str_sizeName:[Character] = ["V","i","d","e","o"]

/*: "map" :*/
fileprivate let str_makeText:[Character] = ["m","a","p"]

/*: "[Location]" :*/
fileprivate let str_saveName:[Character] = ["[","L","o","c","a"]
fileprivate let str_equalAvailableData:String = "tion]write if"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelQuoteView.swift
//  FlieProvider
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class LabelQuoteView: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        buttonPlay()
        //: setupSubViewsConstraint()
        constraintAction()
        //: bindInteraction()
        remoteReciprocationSumeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelData.map{coreLevel(first: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: "#DCDCD")
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.exceptEqual(fontSize: 14)
        lab.font = UIFont.exceptEqual(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .frontColor()
        //: lab.text = "Reply".localized
        lab.text = "Reply".localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.exceptEqual(fontSize: 14)
        lab.font = UIFont.exceptEqual(fontSize: 14)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .bringHomeColor()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (str_viewTitle.replacingOccurrences(of: "title", with: "b") + String(str_headToValue.suffix(9)))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: DeviceJsonModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == "text" {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == "gift" {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftLocal() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == "audio" {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == "img" {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == "video" {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                //: }else if quoteModel.renderType == "map" {
            } else if quoteModel.renderType == "map" {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Location]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_saveName) + String(str_equalAvailableData.prefix(5))).localized
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension LabelQuoteView {
    /// 添加视图
    //: private func setupSubviews() {
    private func buttonPlay() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintAction() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func remoteReciprocationSumeraction() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
