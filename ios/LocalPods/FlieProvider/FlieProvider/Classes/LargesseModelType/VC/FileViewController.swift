
//: Declare String Begin

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let str_toDeviceValue:[UInt8] = [0x3,0x3c,0x31,0x30,0x3a,0x75,0x36,0x34,0x39,0x39,0x26,0x75,0x22,0x3c,0x39,0x39,0x75,0x34,0x39,0x39,0x75,0x20,0x26,0x30,0x75,0x21,0x3d,0x30,0x75,0x36,0x20,0x27,0x27,0x30,0x3b,0x21,0x75,0x17,0x30,0x34,0x20,0x21,0x3c,0x33,0x2c,0x75,0x6,0x30,0x21,0x21,0x3c,0x3b,0x32,0x26]

/*: "Cancel" :*/
fileprivate let str_dataName:String = "Cancelitem self size up let"

/*: "OK" :*/
fileprivate let str_callName:[Character] = ["O","K"]

/*: "Done" :*/
fileprivate let str_popSexValue:String = "in model app viewDone"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class FileViewController: ServiceRecognizerDelegate {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.startRunning()
        }
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.stopRunning()
        }
        //: popGesture(isOpen: true)
        pryUpwardTitle(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        pryUpwardTitle(isOpen: false)
        //: setupSubviews()
        sizeImage()
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: STFilterView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kDeviceSafeBottomHeight+50), width: ScreenWidth, height: 258+kDeviceSafeBottomHeight+50))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: consLet_sessionName - (258 + consLet_halfTitle + 50), width: consLet_errorDeviceHeightData, height: 258 + consLet_halfTitle + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension FileViewController {
    //: @objc func backClick() {
    @objc func userClick() {
        //: let config = ShowAlertConfig()
        let config = ResourceAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.loadEnable(type: .Medium, fontSize: 18)
        config.textFont = UIFont.loadEnable(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        EqualAlertShow.pathFinish(message: String(bytes: str_toDeviceValue.map{$0^85}, encoding: .utf8)!.localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            EqualAlertShow.postBegin()
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension FileViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func sizeImage() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle("Done".localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(userClick), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
