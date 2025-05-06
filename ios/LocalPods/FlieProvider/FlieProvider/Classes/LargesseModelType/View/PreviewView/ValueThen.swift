
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modeValue:[UInt8] = [0xeb,0xec,0xeb,0xf6,0xaa,0xe1,0xed,0xe6,0xe7,0xf0,0xb8,0xab,0xa2,0xea,0xe3,0xf1,0xa2,0xec,0xed,0xf6,0xa2,0xe0,0xe7,0xe7,0xec,0xa2,0xeb,0xef,0xf2,0xee,0xe7,0xef,0xe7,0xec,0xf6,0xe7,0xe6]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class ValueThen: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.sizeLoad()
        //: self.setupSubViewsConstraint()
        self.duringPath()
        //: self.bindInteraction()
        self.highWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modeValue.map{$0^130}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension ValueThen {
    //: private func bindInteraction() {
    private func highWith() {}

    //: @objc func registerLikeAction() {
    @objc func iconViewAction() {
        //: self.likeRequest()
        self.tight()
    }

    //: @objc func registerChatAction() {
    @objc func tip() {
        //: self.chatPush()
        self.chatTitle()
    }

    //: @objc func registerCrushAction() {
    @objc func doLog() {
        //: self.crushRequest()
        self.safety()
    }

    //: @objc func registerCommentAction() {
    @objc func untilRecruit() {
        //: self.commentPush()
        self.toTable()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension ValueThen {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func sightModel(model: TheoreticalAccountInfoModel) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func chatTitle() {}

    //: private func commentPush() {
    private func toTable() {}

    //: private func crushRequest() {
    private func safety() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        HiddenRequestManager.seer(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func tight() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        HiddenRequestManager.doMagnitude(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension ValueThen {
    //: private func setupSubviews() {
    private func sizeLoad() {}

    //: private func setupSubViewsConstraint() {
    private func duringPath() {}
}
