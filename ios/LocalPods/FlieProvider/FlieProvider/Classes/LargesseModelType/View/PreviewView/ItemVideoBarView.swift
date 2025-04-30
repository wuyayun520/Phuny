
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewHeadContent:[UInt8] = [0x14,0x13,0x14,0x9,0x55,0x1e,0x12,0x19,0x18,0xf,0x47,0x54,0x5d,0x15,0x1c,0xe,0x5d,0x13,0x12,0x9,0x5d,0x1f,0x18,0x18,0x13,0x5d,0x14,0x10,0xd,0x11,0x18,0x10,0x18,0x13,0x9,0x18,0x19]

private func aspectHistoryRaw(talk num: UInt8) -> UInt8 {
    return num ^ 125
}

/*: "nav_back_black_nor" :*/
fileprivate let str_managerTitle:String = "direction else for innav_back"
fileprivate let str_frameName:[Character] = ["_","b","l"]
fileprivate let str_remoteBlockTitle:[Character] = ["a","c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemVideoBarView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TPreviewNaviBarView: UIView {
class ItemVideoBarView: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.frank()
        //: self.setupSubViewsConstraint()
        self.coin()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewHeadContent.map{aspectHistoryRaw(talk: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(str_managerTitle.suffix(8)) + String(str_frameName) + String(str_remoteBlockTitle)))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(allowBar), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension ItemVideoBarView {
    //: @objc func registerBackAction() {
    @objc func allowBar() {
        //: PostPushManager.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        PostPushManager.share.overDoinglineVc()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func topTo() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func have() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension ItemVideoBarView {
    //: private func setupSubviews() {
    private func frank() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func coin() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(consLet_netViewValue)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: consLet_messageText))
        }
    }
}
