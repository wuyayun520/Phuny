
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_groupValue:[UInt8] = [0xd9,0xde,0xd9,0xe4,0x98,0xd3,0xdf,0xd4,0xd5,0xe2,0xaa,0x99,0x90,0xd8,0xd1,0xe3,0x90,0xde,0xdf,0xe4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xe0,0xdc,0xd5,0xdd,0xd5,0xde,0xe4,0xd5,0xd4]

fileprivate func errorLab(target num: UInt8) -> UInt8 {
    let value = Int(num) - 112
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: FPS" :*/
fileprivate let str_lineAllValue:[Character] = ["F","P","S"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QYFPSView.swift
//  Test
//
//  Created by young on 2023/6/13.
//

//: import UIKit
import UIKit

//: class FPSView: TalkingBaseMiniView {
class SumMiniView: CountStepView {
    //: private var displayLink: CADisplayLink!
    private var displayLink: CADisplayLink!
    //: private var count: Int = 0
    private var count: Int = 0
    //: private var lastTime: TimeInterval = 0
    private var lastTime: TimeInterval = 0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: createUI()
        dataFile()
        //: startDisplayLink()
        endManAdd()
        //: addTapAndPanGestures()
        gestures()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_groupValue.map{errorLab(target: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var fpsLab: UILabel = {
    private lazy var fpsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        lab.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        //: lab.textColor = .green
        lab.textColor = .green
        //: lab.font = .systemFont(ofSize: 12)
        lab.font = .systemFont(ofSize: 12)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 5
        lab.layer.cornerRadius = 5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension FPSView {
extension SumMiniView {
    /// 展示视图
    //: class func showFPS() {
    class func collage() {
        //: let view = FPSView()
        let view = SumMiniView()
        //: view.frame = CGRect(x: ScreenWidth-50, y: 100, width: 50, height: 20)
        view.frame = CGRect(x: consLet_errorDeviceHeightData - 50, y: 100, width: 50, height: 20)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        JewishCalendarMonthThen.shared.containerView?.addSubview(view)
    }

    //: func startDisplayLink() {
    func endManAdd() {
        //: weak var weakSelf = self
        weak var weakSelf = self
        //: displayLink = CADisplayLink(target: weakSelf!, selector: #selector(updateFPS))
        displayLink = CADisplayLink(target: weakSelf!, selector: #selector(imageComponent))
        //: displayLink.add(to: .main, forMode: .common)
        displayLink.add(to: .main, forMode: .common)
    }

    //: @objc private func updateFPS() {
    @objc private func imageComponent() {
        //: guard lastTime > 0 else {
        guard lastTime > 0 else {
            //: lastTime = displayLink.timestamp
            lastTime = displayLink.timestamp
            //: return
            return
        }

        //: count += 1
        count += 1
        //: let delta = displayLink.timestamp - lastTime
        let delta = displayLink.timestamp - lastTime
        //: guard delta >= 1.0 else {
        guard delta >= 1.0 else {
            //: return
            return
        }

        //: lastTime = displayLink.timestamp
        lastTime = displayLink.timestamp
        //: let fps = Double(count) / delta
        let fps = Double(count) / delta
        //: count = 0
        count = 0

        //: fpsLab.text = "\(lround(fps))FPS"
        fpsLab.text = "\(lround(fps))FPS"
    }
}

// MARK: - Layout

//: extension FPSView {
extension SumMiniView {
    //: private func createUI() {
    private func dataFile() {
        //: self.addSubview(fpsLab)
        self.addSubview(fpsLab)
        //: fpsLab.snp.makeConstraints { make in
        fpsLab.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
