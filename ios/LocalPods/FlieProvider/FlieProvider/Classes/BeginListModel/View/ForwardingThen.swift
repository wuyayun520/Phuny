
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toTitle:[UInt8] = [0xac,0xb1,0xac,0xb7,0x6b,0xa6,0xb2,0xa7,0xa8,0xb5,0x7d,0x6c,0x63,0xab,0xa4,0xb6,0x63,0xb1,0xb2,0xb7,0x63,0xa5,0xa8,0xa8,0xb1,0x63,0xac,0xb0,0xb3,0xaf,0xa8,0xb0,0xa8,0xb1,0xb7,0xa8,0xa7]

fileprivate func skinRange(equal num: UInt8) -> UInt8 {
    let value = Int(num) + 189
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ForwardingThen.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: class TalkingCircleProgressView: UIView {
class ForwardingThen: UIView {
    //: var strokeWidth: CGFloat = 0.0
    var strokeWidth: CGFloat = 0.0
    //: var strokeColor: UIColor?
    var strokeColor: UIColor?
    //: var circleBgColor: UIColor?
    var circleBgColor: UIColor?
    //: private var percent: CGFloat = 0.0
    private var percent: CGFloat = 0.0

    //: deinit {
    deinit {}

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toTitle.map{skinRange(equal: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: override func draw(_ rect: CGRect) {
    override func draw(_ rect: CGRect) {
        //: super.draw(rect)
        super.draw(rect)
        //: if circleBgColor != nil {
        if circleBgColor != nil {
            //: let roundedRect = CGRect(x: strokeWidth * 0.5, y: strokeWidth * 0.5, width: rect.size.width - strokeWidth, height: rect.size.height - strokeWidth)
            let roundedRect = CGRect(x: strokeWidth * 0.5, y: strokeWidth * 0.5, width: rect.size.width - strokeWidth, height: rect.size.height - strokeWidth)
            //: let roundPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: (rect.size.width - strokeWidth) * 0.5)
            let roundPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: (rect.size.width - strokeWidth) * 0.5)
            //: roundPath.lineWidth = strokeWidth
            roundPath.lineWidth = strokeWidth
            //: circleBgColor?.set()
            circleBgColor?.set()
            //: roundPath.stroke()
            roundPath.stroke()
        }

        //: let path = UIBezierPath()
        let path = UIBezierPath()
        //: let startAngle = (-0.5 * .pi)
        let startAngle = (-0.5 * .pi)
        //: let endAngle = startAngle + percent * 2 * .pi
        let endAngle = startAngle + percent * 2 * .pi
        //: path.addArc(withCenter: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
        path.addArc(withCenter: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
                    //: radius: (rect.size.width - strokeWidth) * 0.5,
                    radius: (rect.size.width - strokeWidth) * 0.5,
                    //: startAngle: startAngle,
                    startAngle: startAngle,
                    //: endAngle: endAngle,
                    endAngle: endAngle,
                    //: clockwise: true)
                    clockwise: true)
        //: path.lineWidth = strokeWidth
        path.lineWidth = strokeWidth
        //: strokeColor?.set()
        strokeColor?.set()
        //: path.stroke()
        path.stroke()
    }
}

// MARK: - Event

//: extension TalkingCircleProgressView {
extension ForwardingThen {
    /// 更新进度
    /// - Parameter percent: 进度
    //: func updatePercent(percent: CGFloat) {
    func face(percent: CGFloat) {
        //: self.percent = percent
        self.percent = percent
        //: self.setNeedsDisplay()
        self.setNeedsDisplay()
    }
}
