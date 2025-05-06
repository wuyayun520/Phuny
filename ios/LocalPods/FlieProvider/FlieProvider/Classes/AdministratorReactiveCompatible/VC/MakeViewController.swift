
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_viewData:String = "view data userPerso"
fileprivate let str_frameWantContent:String = "nnormalormat"
fileprivate let str_greenName:String = "ION"

/*: _ :*/
fileprivate let str_transactionName:String = "path"

/*: "male" :*/
fileprivate let str_indexContent:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let str_listTitle:String = "fecontrolale"

/*: "sex" :*/
fileprivate let str_contentName:[Character] = ["s","e","x"]

/*: "nickname" :*/
fileprivate let str_lineContent:String = "niindexname"

/*: "birthday" :*/
fileprivate let str_toFrameValue:String = "birthtitle"
fileprivate let str_tableTitle:String = "aerror"

/*: "%.2d" :*/
fileprivate let str_viewTitle:String = "normal add user clear%.2d"

/*: - :*/
fileprivate let str_modelExecuteName:[Character] = ["-"]

/*: "User :*/
fileprivate let str_resultEffectTitle:String = "Userlet to"

/*: "invite_code" :*/
fileprivate let str_managerName:[UInt8] = [0x8c,0x8b,0x93,0x8c,0x91,0x80,0xba,0x86,0x8a,0x81,0x80]

private func mTheory(empty num: UInt8) -> UInt8 {
    return num ^ 229
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class MakeViewController: ServiceRecognizerDelegate {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        pryUpwardTitle(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: IndexStyleAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            IndexStyleAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: IndexStyleAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            IndexStyleAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(str_viewData.suffix(5)) + "nal i" + str_frameWantContent.replacingOccurrences(of: "normal", with: "f") + str_greenName.lowercased()).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        sub()
        //: setupSubViewsConstraint()
        stop()
        //: bindInteraction()
        quantityerplay()
        //: addTapGestureRecognizer()
        currentView()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: ContextThen = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = ContextThen()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension MakeViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func toPopback() {
        //: super.naviPopback()
        super.toPopback()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(consLet_countValue)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        consLet_contentData.postEqual(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func doAlienation() {
        //: if IndexStyleAppManager.share.userFillInfoMode.nickName.count <= 0 {
        if IndexStyleAppManager.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            kindness()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = IndexStyleAppManager.share.userFillInfoMode.sex
        params["sex"] = IndexStyleAppManager.share.userFillInfoMode.sex
        //: params["nickname"] = IndexStyleAppManager.share.userFillInfoMode.nickName
        params[(str_lineContent.replacingOccurrences(of: "index", with: "ck"))] = IndexStyleAppManager.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", IndexStyleAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", IndexStyleAppManager.share.userFillInfoMode.birthDay))-\(IndexStyleAppManager.share.userFillInfoMode.birthYear)"
        params[(str_toFrameValue.replacingOccurrences(of: "title", with: "d") + str_tableTitle.replacingOccurrences(of: "error", with: "y"))] = "\(String(format: "%.2d", IndexStyleAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", IndexStyleAppManager.share.userFillInfoMode.birthDay))-\(IndexStyleAppManager.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = StepViewController()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        userRead()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func numberervalImage() {
        //: getRandomNickname()
        kindness()
        //: IndexStyleAppManager.share.userFillInfoMode.setBirth()
        IndexStyleAppManager.share.userFillInfoMode.rateBirth()
        //: IndexStyleAppManager.share.userFillInfoMode.inviteCode = ""
        IndexStyleAppManager.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        doAlienation()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func kindness() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: IndexStyleAppManager.share.userFillInfoMode.nickName = "User\(randCode)"
        IndexStyleAppManager.share.userFillInfoMode.nickName = "User\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension MakeViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func sub() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func stop() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func quantityerplay() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: StableInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(consLet_statusTitle)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                consLet_contentData.postEqual(eventID: eventID)

                // 校验验证码
                //: if IndexStyleAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                if IndexStyleAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": IndexStyleAppManager.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: str_managerName.map{mTheory(empty: $0)}, encoding: .utf8)!: IndexStyleAppManager.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    AdministratorReactiveCompatible.noneCheck(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.doAlienation()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.doAlienation()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(consLet_detailValue)_\(IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue ? "male" : "female")"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                consLet_contentData.postEqual(eventID: eventID)
                //: self.func__skipBtnAction()
                self.numberervalImage()
            }
        }
    }
}
