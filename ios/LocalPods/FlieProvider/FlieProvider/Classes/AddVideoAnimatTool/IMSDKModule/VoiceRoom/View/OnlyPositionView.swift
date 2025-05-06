
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_liveData:[UInt8] = [0x4f,0x48,0x4f,0x52,0xe,0x45,0x49,0x42,0x43,0x54,0x1c,0xf,0x6,0x4e,0x47,0x55,0x6,0x48,0x49,0x52,0x6,0x44,0x43,0x43,0x48,0x6,0x4f,0x4b,0x56,0x4a,0x43,0x4b,0x43,0x48,0x52,0x43,0x42]

private func economicAid(no num: UInt8) -> UInt8 {
    return num ^ 38
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnlyPositionView.swift
//  FlieProvider
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class OnlyPositionView: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupModel()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_liveData.map{economicAid(no: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension OnlyPositionView {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func createView() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = EqualSendReactiveCompatible.clout().mike()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        for (key, model) in dict {
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? StepThen
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.prompt(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func attack(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = EqualSendReactiveCompatible.clout().attribute(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? StepThen
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.prompt(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func voiceTitle(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = EqualSendReactiveCompatible.clout().attribute(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? StepThen
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.re(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension OnlyPositionView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupModel() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< consLet_errorTitle {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * consLet_errViewName.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if ServerLanguageManager.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = consLet_errorDeviceHeightData - startX - consLet_errViewName.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = StepThen()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * consLet_errViewName.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = consLet_errViewName
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
