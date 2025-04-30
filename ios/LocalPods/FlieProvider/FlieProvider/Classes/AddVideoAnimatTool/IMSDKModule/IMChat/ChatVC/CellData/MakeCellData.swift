
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let str_withValue:[Character] = ["b","g","_","t","a","l","k","_","o"]
fileprivate let str_socialName:String = "thread"

/*: "bg_talk_me" :*/
fileprivate let str_imageData:[Character] = ["b","g","_","t","a","l","k"]
fileprivate let str_addValue:String = "_mebackground color content transform text"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_roundMainOfData:[UInt8] = [0x23,0x24,0x23,0x3e,0x62,0x29,0x25,0x2e,0x2f,0x38,0x70,0x63,0x6a,0x22,0x2b,0x39,0x6a,0x24,0x25,0x3e,0x6a,0x28,0x2f,0x2f,0x24,0x6a,0x23,0x27,0x3a,0x26,0x2f,0x27,0x2f,0x24,0x3e,0x2f,0x2e]

private func callUser(play num: UInt8) -> UInt8 {
    return num ^ 74
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TUIMessageCellData {
@objcMembers public class MakeCellData: TUIMessageCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.appContent(name: (String(str_withValue) + str_socialName.replacingOccurrences(of: "read", with: "er")))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.appContent(name: (String(str_imageData) + String(str_addValue.prefix(3))))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_roundMainOfData.map{callUser(play: $0)}, encoding: .utf8)!)
    }
}
