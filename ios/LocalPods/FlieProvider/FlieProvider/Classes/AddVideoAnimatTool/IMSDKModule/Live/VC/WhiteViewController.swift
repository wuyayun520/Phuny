
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_equalValue:String = "selected"
fileprivate let str_liveValue:String = "av_babackground small source height true"
fileprivate let str_dataValue:String = "ack_norto type"

/*: "live_explain" :*/
fileprivate let str_modelValue:[Character] = ["l","i","v","e","_","e","x","p","l","a","i","n"]

/*: "Live" :*/
fileprivate let str_originData:[Character] = ["L","i","v","e"]

/*: "#FAF6FF" :*/
fileprivate let str_dataTitle:[Character] = ["#","F","A","F","6","F","F"]

/*: "icon_live_certification" :*/
fileprivate let str_costTitle:String = "icon_linumber image count like"
fileprivate let str_modelData:String = "make"
fileprivate let str_logName:[Character] = ["e","_","c","e","r","t","i","f","i","c","a","t","i","o","n"]

/*: "Turn on live certification" :*/
fileprivate let str_scaleContent:String = "for else removeTurn o"
fileprivate let str_statusName:[Character] = ["n"," ","l","i","v","e"," ","c","e","r"]
fileprivate let str_actionValue:String = "loadific"

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let str_dataModelValue:[UInt8] = [0x25,0x17,0x1a,0x1a,0xce,0x17,0x1c,0x11,0x20,0x13,0xf,0x21,0x13,0xce,0x22,0x16,0x13,0xce,0x11,0x16,0xf,0x1c,0x11,0x13,0x21,0xce,0x1d,0x14,0xce,0x20,0x13,0x11,0x13,0x17,0x24,0x17,0x1c,0x15,0xce,0x11,0xf,0x1a,0x1a,0x21,0xce,0x22,0x1d,0xce,0x13,0xf,0x20,0x1c,0xce,0x1b,0x1d,0x20,0x13,0xce,0x1e,0x1d,0x17,0x1c,0x22,0x21,0xdc]

fileprivate func chemistryLaboratory(view num: UInt8) -> UInt8 {
    let value = Int(num) - 174
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_live_publicly" :*/
fileprivate let str_gestureData:[Character] = ["i","c","o","n","_","l","i","v"]
fileprivate let str_valueText:String = "e_pumodel play to"

/*: "Your live will be publicly displayed to others" :*/
fileprivate let str_labelLogClearName:[UInt8] = [0xc2,0xf4,0xee,0xe9,0xbb,0xf7,0xf2,0xed,0xfe,0xbb,0xec,0xf2,0xf7,0xf7,0xbb,0xf9,0xfe,0xbb,0xeb,0xee,0xf9,0xf7,0xf2,0xf8,0xf7,0xe2,0xbb,0xff,0xf2,0xe8,0xeb,0xf7,0xfa,0xe2,0xfe,0xff,0xbb,0xef,0xf4,0xbb,0xf4,0xef,0xf3,0xfe,0xe9,0xe8]

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let str_indexToCountData:[UInt8] = [0xdd,0xc0,0xc7,0x94,0xd7,0xdb,0xda,0xc0,0xd1,0xda,0xc0,0x94,0xd9,0xc1,0xc7,0xc0,0x94,0xd7,0xdb,0xd9,0xc4,0xd8,0xcd,0x94,0xc3,0xdd,0xc0,0xdc,0x94,0xd7,0xc1,0xc6,0xc6,0xd1,0xda,0xc0,0x94,0xd8,0xd5,0xc3,0xc7,0x94,0xd5,0xda,0xd0,0x94,0xc6,0xd1,0xd3,0xc1,0xd8,0xd5,0xc0,0xdd,0xdb,0xda,0xc7,0x94,0xd5,0xda,0xd0,0x94,0xc4,0xd8,0xd5,0xc0,0xd2,0xdb,0xc6,0xd9,0x94,0xc6,0xd1,0xc5,0xc1,0xdd,0xc6,0xd1,0xd9,0xd1,0xda,0xc0,0xc7,0x9a]

private func totalRoom(result num: UInt8) -> UInt8 {
    return num ^ 180
}

/*: "icon_live_face" :*/
fileprivate let str_failTitle:String = "content user sure counticon_l"

/*: "Please make sure" :*/
fileprivate let str_viewName:String = "path viewPlease m"
fileprivate let str_pathName:[Character] = ["a","k","e"]
fileprivate let str_requestName:String = "message at sure"

/*: "your face is always in the video frame." :*/
fileprivate let str_whiteName:[UInt8] = [0x9a,0x8c,0x96,0x91,0xc3,0x85,0x82,0x80,0x86,0xc3,0x8a,0x90,0xc3,0x82,0x8f,0x94,0x82,0x9a,0x90,0xc3,0x8a,0x8d,0xc3,0x97,0x8b,0x86,0xc3,0x95,0x8a,0x87,0x86,0x8c,0xc3,0x85,0x91,0x82,0x8e,0x86,0xcd]

/*: "Turn on" :*/
fileprivate let str_stainName:String = "Turn onarray to"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WhiteViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class WhiteViewController: ServiceRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        colorSubviews()
        //: setupSubViewsConstraint()
        renderWill()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearTap(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearTap(name: (str_equalValue.replacingOccurrences(of: "selected", with: "n") + String(str_liveValue.prefix(5)) + "ck_bl" + String(str_dataValue.prefix(7)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(observePage), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearTap(name: "live_explain"))
        let v = UIImageView(image: UIImage.nearTap(name: (String(str_modelValue))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = "Live".localized
        //: lab.textColor = .appThemeColor()
        lab.textColor = .labelSumervalMedium()
        //: lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 18)
        lab.font = UIFont.loadEnable(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: "#FAF6FF")
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearTap(name: "icon_live_certification")
        v.image = UIImage.nearTap(name: (String(str_costTitle.prefix(7)) + str_modelData.replacingOccurrences(of: "make", with: "v") + String(str_logName)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(str_scaleContent.suffix(6)) + String(str_statusName) + str_actionValue.replacingOccurrences(of: "load", with: "t") + "ation").localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.little(fontSize: 16)
        lab.font = UIFont.little(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: str_dataModelValue.map{chemistryLaboratory(view: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .frontColor()
        //: lab.font = UIFont.exceptEqual(fontSize: 14)
        lab.font = UIFont.exceptEqual(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearTap(name: "icon_live_publicly")
        v.image = UIImage.nearTap(name: (String(str_gestureData) + String(str_valueText.prefix(4)) + "blicly"))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: str_labelLogClearName.map{$0^155}, encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.little(fontSize: 16)
        lab.font = UIFont.little(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: str_indexToCountData.map{totalRoom(result: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .frontColor()
        //: lab.font = UIFont.exceptEqual(fontSize: 14)
        lab.font = UIFont.exceptEqual(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearTap(name: "icon_live_face")
        v.image = UIImage.nearTap(name: (String(str_failTitle.suffix(6)) + "ive_face"))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(str_viewName.suffix(8)) + String(str_pathName) + String(str_requestName.suffix(5))).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .appNameVisualProperty()
        //: lab.font = UIFont.little(fontSize: 16)
        lab.font = UIFont.little(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: str_whiteName.map{$0^227}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .frontColor()
        //: lab.font = UIFont.exceptEqual(fontSize: 14)
        lab.font = UIFont.exceptEqual(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.little(fontSize: 17)
        btn.titleLabel?.font = UIFont.little(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle("Turn on".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(listTitle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension WhiteViewController {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func observePage() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func listTitle() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            DecisionMakerReactiveCompatible.barIn().equalLive()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension WhiteViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorSubviews() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func renderWill() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(consLet_messageText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(consLet_netViewValue + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
