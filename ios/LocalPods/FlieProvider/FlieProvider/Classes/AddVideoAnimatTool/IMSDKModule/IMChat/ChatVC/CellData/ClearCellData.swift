
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toName:[UInt8] = [0x2,0x5,0x2,0x1f,0x43,0x8,0x4,0xf,0xe,0x19,0x51,0x42,0x4b,0x3,0xa,0x18,0x4b,0x5,0x4,0x1f,0x4b,0x9,0xe,0xe,0x5,0x4b,0x2,0x6,0x1b,0x7,0xe,0x6,0xe,0x5,0x1f,0xe,0xf]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class ClearCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ClearCellData: MakeCellData {
    //: public override var msgModel: LockModel {
    override public var msgModel: LockModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toName.map{$0^107}, encoding: .utf8)!)
    }

    //: public override func contentSize() ->CGSize {
    override public func contentSize() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: StartModelType = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = StartModelType()
        //: return model
        return model
        //: }()
    }()
}
