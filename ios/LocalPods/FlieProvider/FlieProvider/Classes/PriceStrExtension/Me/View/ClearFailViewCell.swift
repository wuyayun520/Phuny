
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelErrorData:[UInt8] = [0xda,0xdf,0xda,0xe5,0x99,0xd4,0xe0,0xd5,0xd6,0xe3,0xab,0x9a,0x91,0xd9,0xd2,0xe4,0x91,0xdf,0xe0,0xe5,0x91,0xd3,0xd6,0xd6,0xdf,0x91,0xda,0xde,0xe1,0xdd,0xd6,0xde,0xd6,0xdf,0xe5,0xd6,0xd5]

fileprivate func sharedMakeTask(button num: UInt8) -> UInt8 {
    let value = Int(num) - 113
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_me_edit" :*/
fileprivate let str_messageText:String = "return view top push imagebtn_m"
fileprivate let str_countReloadData:[Character] = ["e","_","e","d","i","t"]

/*: "icon_me_lw" :*/
fileprivate let str_coverText:[Character] = ["i","c","o","n","_","m"]
fileprivate let str_callContent:[Character] = ["e","_","l","w"]

/*: " Reward" :*/
fileprivate let str_leadingName:[Character] = [" "]
fileprivate let str_makeVideoName:[Character] = ["R","e","w","a","r","d"]

/*: "FF506D" :*/
fileprivate let str_sectionValue:[Character] = ["F","F","5","0","6","D"]

/*: "Purchase" :*/
fileprivate let str_topData:String = "Purchasemethod network"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearFailViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingUserCenterCell: UITableViewCell {
class ClearFailViewCell: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: selectionStyle = .none
        selectionStyle = .none

        //: setupSubviews()
        indexSubviews()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelErrorData.map{sharedMakeTask(button: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var iconImag: UIImageView = {
    private lazy var iconImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.nearTap(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.nearTap(name: (String(str_messageText.suffix(5)) + String(str_countReloadData))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var taskCenterBtn: UIButton = {
    private lazy var taskCenterBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "icon_me_lw"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_coverText) + String(str_callContent))), for: .normal)
        //: btn.setTitle(" Reward".localized, for: .normal)
        btn.setTitle(" Reward".localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "FF506D"), for: .normal)
        btn.setTitleColor(UIColor(hex: "FF506D"), for: .normal)
        //: btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 12)
        btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 12)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var purchaseBtn: UIButton = {
    private lazy var purchaseBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Purchase", for: .normal)
        btn.setTitle((String(str_topData.prefix(8))), for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.labelSumervalMedium(), for: .normal)
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.labelSumervalMedium().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.cornerRadius = 12
        btn.layer.cornerRadius = 12
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 12)
        btn.titleLabel?.font = UIFont.exceptEqual(fontSize: 12)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserCenterCell {
extension ClearFailViewCell {
    //: func setViewData(title: String, icon: String, row: Int, isLast: Bool) {
    func occurrence(title: String, icon: String, row: Int, isLast: Bool) {
        //: titleBLB.text = title.localized
        titleBLB.text = title.localized
        //: iconImag.image = UIImage.nearTap(name: icon)
        iconImag.image = UIImage.nearTap(name: icon)
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: editImag.isHidden = false
        editImag.isHidden = false
        //: taskCenterBtn.isHidden = true
        taskCenterBtn.isHidden = true
        //: purchaseBtn.isHidden = true
        purchaseBtn.isHidden = true
        //: setupSubViewsConstraint()
        roundGift()
    }

    //: func setTaskCenterBtn() {
    func atBtn() {
        //: taskCenterBtn.isHidden = false
        taskCenterBtn.isHidden = false
    }

    //: func setpurchaseBtn() {
    func changeBtn() {
        //: purchaseBtn.isHidden = false
        purchaseBtn.isHidden = false
        //: editImag.isHidden = true
        editImag.isHidden = true
    }
}

// MARK: - Layout

//: extension TalkingUserCenterCell {
extension ClearFailViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func indexSubviews() {
        //: self.contentView.addSubview(backView)
        self.contentView.addSubview(backView)
        //: backView.addSubview(iconImag)
        backView.addSubview(iconImag)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(taskCenterBtn)
        backView.addSubview(taskCenterBtn)
        //: backView.addSubview(purchaseBtn)
        backView.addSubview(purchaseBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func roundGift() {
        //: let backView_h = 58.0
        let backView_h = 58.0
        //: backView.snp.remakeConstraints { make in
        backView.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.height.equalTo(backView_h)
            make.height.equalTo(backView_h)
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }

        //: iconImag.snp.remakeConstraints { make in
        iconImag.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(12)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.width.height.equalTo(25)
            make.width.height.equalTo(25)
        }

        //: titleBLB.snp.remakeConstraints { make in
        titleBLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(7)
            make.leading.equalTo(iconImag.snp.trailing).offset(7)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }

        //: editImag.snp.remakeConstraints { make in
        editImag.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalToSuperview().offset(-12)
            make.trailing.equalToSuperview().offset(-12)
            //: make.width.equalTo(8)
            make.width.equalTo(8)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: taskCenterBtn.snp.remakeConstraints { make in
        taskCenterBtn.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalTo(editImag.snp.leading).offset(-13)
            make.trailing.equalTo(editImag.snp.leading).offset(-13)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: purchaseBtn.snp.makeConstraints { make in
        purchaseBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.size.equalTo(CGSize(width: 70, height: 24))
            make.size.equalTo(CGSize(width: 70, height: 24))
        }

        //: backView.frame = CGRect(x: 15, y: 0, width: ScreenWidth-30, height: backView_h)
        backView.frame = CGRect(x: 15, y: 0, width: consLet_errorDeviceHeightData - 30, height: backView_h)
        //: backView.layer.mask = nil
        backView.layer.mask = nil

        //: if index == 0 && islast {
        if index == 0, islast {
            //: backView.Corner(width: backView.frame.size.width,
            backView.toColorRadii(width: backView.frame.size.width,
                                  //: height: backView.frame.size.height,
                                  height: backView.frame.size.height,
                                  //: corners: .allCorners,
                                  corners: .allCorners,
                                  //: cornerRadii: .init(width: 16, height: 16))
                                  cornerRadii: .init(width: 16, height: 16))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width,
            backView.toColorRadii(width: backView.frame.size.width,
                                  //: height: backView.frame.size.height,
                                  height: backView.frame.size.height,
                                  //: corners: [.topLeft, .topRight],
                                  corners: [.topLeft, .topRight],
                                  //: cornerRadii: .init(width: 16, height: 16))
                                  cornerRadii: .init(width: 16, height: 16))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width,
            backView.toColorRadii(width: backView.frame.size.width,
                                  //: height: backView.frame.size.height,
                                  height: backView.frame.size.height,
                                  //: corners: [.bottomLeft, .bottomRight],
                                  corners: [.bottomLeft, .bottomRight],
                                  //: cornerRadii: .init(width: 16, height: 16))
                                  cornerRadii: .init(width: 16, height: 16))
        }
    }
}
