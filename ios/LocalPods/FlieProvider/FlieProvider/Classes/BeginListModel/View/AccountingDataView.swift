
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_loadName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_ziliao_nandi_default" :*/
fileprivate let str_productionContent:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","n","a","n","d","i","_"]
fileprivate let str_addData:[Character] = ["d","e","f","a","u","l","t"]

/*: "iv_crush" :*/
fileprivate let str_viewData:String = "true likeiv_cru"
fileprivate let str_buttonData:String = "simage"

/*: "Crush" :*/
fileprivate let str_tapData:String = "Crushapp number button"

/*: "get json error" :*/
fileprivate let str_toValue:String = "get jself data if model color"
fileprivate let str_roomData:String = "etitleor"

/*: "targetUid" :*/
fileprivate let str_hiddenName:[Character] = ["t","a","r","g","e","t","U","i","d"]

/*: "The other party has received your crush" :*/
fileprivate let str_modelValue:[UInt8] = [0x9,0x35,0x38,0x7d,0x32,0x29,0x35,0x38,0x2f,0x7d,0x2d,0x3c,0x2f,0x29,0x24,0x7d,0x35,0x3c,0x2e,0x7d,0x2f,0x38,0x3e,0x38,0x34,0x2b,0x38,0x39,0x7d,0x24,0x32,0x28,0x2f,0x7d,0x3e,0x2f,0x28,0x2e,0x35]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountingDataView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class AccountingDataView: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
//        self.backgroundColor = UIColor.white
//        customUI()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_loadName.reversed(), encoding: .utf8)!)
    }

    //: func customUI() {
    func toUi() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.computeImage(51, 51, 51, 0.8)

        //: guard IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: LabelPositionReactiveCompatible = {
        //: let btn = TalkingButton.init()
        let btn = LabelPositionReactiveCompatible()
        //: btn.setBackgroundImage(UIImage.nearTap(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.nearTap(name: (String(str_productionContent) + String(str_addData))), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.nearTap(name: "iv_crush"), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle("Crush".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.little(fontSize: 18)
        btn.titleLabel?.font = UIFont.little(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moveDataClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension AccountingDataView: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func moveDataClick() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = ResourceEffectTool.default.butterflyEffect(type: .Crush)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_toValue.prefix(5)) + "son " + str_roomData.replacingOccurrences(of: "title", with: "rr")))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(String(str_hiddenName))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        GiftStoreReactiveCompatible.aggregation(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.viewIntervalimate(showMsg: String(bytes: str_modelValue.map{$0^93}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.noblesseExtra(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
