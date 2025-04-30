
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_popTitle:[UInt8] = [0xe6,0xe1,0xe6,0xfb,0xa7,0xec,0xe0,0xeb,0xea,0xfd,0xb5,0xa6,0xaf,0xe7,0xee,0xfc,0xaf,0xe1,0xe0,0xfb,0xaf,0xed,0xea,0xea,0xe1,0xaf,0xe6,0xe2,0xff,0xe3,0xea,0xe2,0xea,0xe1,0xfb,0xea,0xeb]

private func cellTable(load num: UInt8) -> UInt8 {
    return num ^ 143
}

/*: "nav_back_black_nor" :*/
fileprivate let str_modelData:String = "leading load asnav_ba"
fileprivate let str_withDataStatusName:String = "NOR"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CheekThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class CheekThen: ServiceRecognizerDelegate {
    //: var toastStr: String = ""
    var toastStr: String = ""

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_popTitle.map{cellTable(load: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.conversationMediumStart()
        //: self.createUIConstraint()
        self.sinceName()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            DeviceFailThen.picToast(toastStr)
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: EventThen = {
        //: let view = TalkingFaceVerificationView()
        let view = EventThen()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_modelData.suffix(6)) + "ck_black_" + str_withDataStatusName.lowercased())), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension CheekThen {
    //: @objc func backBtnClicked() {
    @objc func theProgressClicked() {
        //: self.naviPopback()
        self.toPopback()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension CheekThen {
    //: func createUI() {
    func conversationMediumStart() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(theProgressClicked), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = ValueControllerDelegate()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func sinceName() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + consLet_netViewValue)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
