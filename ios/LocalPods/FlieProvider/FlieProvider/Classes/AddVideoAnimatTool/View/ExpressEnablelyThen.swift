
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_insertContent:[UInt8] = [0x83,0x84,0x83,0x9e,0xc2,0x89,0x85,0x8e,0x8f,0x98,0xd0,0xc3,0xca,0x82,0x8b,0x99,0xca,0x84,0x85,0x9e,0xca,0x88,0x8f,0x8f,0x84,0xca,0x83,0x87,0x9a,0x86,0x8f,0x87,0x8f,0x84,0x9e,0x8f,0x8e]

private func voiceLayer(to num: UInt8) -> UInt8 {
    return num ^ 234
}

/*: "#30D00B" :*/
fileprivate let str_aboveValue:String = "result app#30D00B"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExpressEnablelyThen.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/2/17.
//

//: import UIKit
import UIKit

//: class ILikeListViewItemCell: UICollectionViewCell {
class ExpressEnablelyThen: UICollectionViewCell {
    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_insertContent.map{voiceLayer(to: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        pageFile()
        //: setupSubViewsConstraint()
        inscriptionSize()
    }

    // MARK: - Lazy load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.layer.cornerRadius = 35
        v.layer.cornerRadius = 35
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var onlineStatus: UIView = {
    private lazy var onlineStatus: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#30D00B")
        v.backgroundColor = UIColor(hex: "#30D00B")
        //: v.layer.cornerRadius = 5
        v.layer.cornerRadius = 5
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension ILikeListViewItemCell {
extension ExpressEnablelyThen {
    /// 刷新cell
    //: func refreshItem(_ model: ILikeListModel) {
    func fromCountTransaction(_ model: LikeHandyJSON) {
        //: headImgView.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeHolderImage(sex: model.sex))
        headImgView.cling(urlStr: model.headPic, placeImg: UIImage.numericalQuantityTheme(sex: model.sex))
        //: onlineStatus.isHidden = (model.onlineStatus == 0)
        onlineStatus.isHidden = (model.onlineStatus == 0)
    }
}

// MARK: - Layout

//: extension ILikeListViewItemCell {
extension ExpressEnablelyThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func pageFile() {
        //: contentView.addSubview(headImgView)
        contentView.addSubview(headImgView)
        //: contentView.addSubview(onlineStatus)
        contentView.addSubview(onlineStatus)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func inscriptionSize() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 70))
            make.size.equalTo(CGSize(width: 70, height: 70))
        }

        //: onlineStatus.snp.makeConstraints { make in
        onlineStatus.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            //: make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            //: make.width.height.equalTo(10)
            make.width.height.equalTo(10)
        }
    }
}
