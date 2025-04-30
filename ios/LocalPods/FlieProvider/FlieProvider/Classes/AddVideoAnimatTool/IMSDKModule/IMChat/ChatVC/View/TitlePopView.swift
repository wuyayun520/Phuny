
//: Declare String Begin

/*: "TitlePopView deinit" :*/
fileprivate let str_beautyText:String = "status falseQuoteD"
fileprivate let str_viewValue:String = "opVitop pan type use var"
fileprivate let str_toData:String = "einitip"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeTopName:[UInt8] = [0xb0,0xb7,0xb0,0xad,0xf1,0xba,0xb6,0xbd,0xbc,0xab,0xe3,0xf0,0xf9,0xb1,0xb8,0xaa,0xf9,0xb7,0xb6,0xad,0xf9,0xbb,0xbc,0xbc,0xb7,0xf9,0xb0,0xb4,0xa9,0xb5,0xbc,0xb4,0xbc,0xb7,0xad,0xbc,0xbd]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitlePopView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class TitlePopView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(str_beautyText.suffix(6)) + "etailP" + String(str_viewValue.prefix(4)) + "ew d" + str_toData.replacingOccurrences(of: "tip", with: "t")))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.blockWith()
        //: self.setupSubViewsConstraint()
        self.liveConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeTopName.map{$0^217}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        lb.font = UIFont.loadEnable(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.appNameVisualProperty()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension TitlePopView {
    //: func show() {
    func mortalPath() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
    }

    //: @objc func dismiss() {
    @objc func listToKey() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension TitlePopView {
    // 添加视图
    //: private func setupSubviews() {
    private func blockWith() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.primaryColorBarContent()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func liveConstraint() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
