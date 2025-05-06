
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let str_locationData:[Character] = ["I","n","c","r","e","a","s","e"]
fileprivate let str_toData:String = "："

/*: "Decrease：" :*/
fileprivate let str_topText:String = "to selectDecreas"
fileprivate let str_arrayName:String = "input remote self for rendere："

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_succeedName:[UInt8] = [0xfb,0xfc,0xfb,0xe6,0xba,0xf1,0xfd,0xf6,0xf7,0xe0,0xa8,0xbb,0xb2,0xfa,0xf3,0xe1,0xb2,0xfc,0xfd,0xe6,0xb2,0xf0,0xf7,0xf7,0xfc,0xb2,0xfb,0xff,0xe2,0xfe,0xf7,0xff,0xf7,0xfc,0xe6,0xf7,0xf6]

private func financialAid(model num: UInt8) -> UInt8 {
    return num ^ 146
}

/*: "bg_talk_closed_tc" :*/
fileprivate let str_downShareName:[Character] = ["b","g","_","t","a","l","k","_"]
fileprivate let str_listName:String = "cviewose"

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let str_playerModelText:String = "bg_taview room"
fileprivate let str_wantName:String = "d_tc_message let"
fileprivate let str_countContent:[Character] = ["i","n","t","i","m","a","t","e"]

/*: "btn_intimate_close" :*/
fileprivate let str_ofImageLabelText:String = "btn_iin short index equal any"
fileprivate let str_beforeData:[Character] = ["e","_","c","l","o","s","e"]

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let str_voiceData:[UInt8] = [0xbf,0xe1,0xee,0xe1,0xe6,0xdf,0x98,0xdf,0xe1,0xde,0xec,0xeb,0x98,0x5b,0xf8,0xf9,0xe5,0xd9,0xe3,0xe1,0xe6,0xdf,0x98,0xdb,0xd9,0xe4,0xe4,0xeb,0x98,0xd9,0xe6,0xdc,0x98,0xeb,0xdd,0xe6,0xdc,0xe1,0xe6,0xdf,0x98,0xe8,0xd9,0xe1,0xdc,0x98,0xe5,0xdd,0xeb,0xeb,0xd9,0xdf,0xdd,0xeb,0x98,0xdb,0xd9,0xe6,0x98,0xe1,0xe6,0xdb,0xea,0xdd,0xd9,0xeb,0xdd,0x98,0xe1,0xe6,0xec,0xe1,0xe5,0xd9,0xdb,0xf1,0xf6]

fileprivate func sizeSelf(medium num: UInt8) -> UInt8 {
    let value = Int(num) - 120
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let str_sharedValue:[Character] = ["1"," ","c","o","i","n"," ","="," ","1"," ","i","n","t","i"]
fileprivate let str_renderName:[Character] = ["m","a","c","y"]

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let str_commitName:[UInt8] = [0x91,0xbe,0xf8,0xbb,0xb7,0xb1,0xb6,0xab,0xf8,0xb9,0xaa,0xbd,0xf8,0xb6,0xb7,0xac,0xf8,0xbb,0xb7,0xb6,0xab,0xad,0xb5,0xbd,0xbc,0xf8,0xaf,0xb1,0xac,0xb0,0xb1,0xb6,0xf8,0xb9,0xf8,0xbb,0xbd,0xaa,0xac,0xb9,0xb1,0xb6,0xf8,0xa8,0xbd,0xaa,0xb1,0xb7,0xbc,0xf8,0xb7,0xbe,0xf8,0xac,0xb1,0xb5,0xbd,0xf4,0xf8,0xac,0xb0,0xbd,0xf8,0xb1,0xb6,0xac,0xb1,0xb5,0xb9,0xbb,0xa1,0xf8,0xb4,0xbd,0xae,0xbd,0xb4,0xf8,0xaf,0xb1,0xb4,0xb4,0xf8,0xba,0xbd,0xf8,0xaa,0xbd,0xbc,0xad,0xbb,0xbd,0xbc,0xf6]

private func arrayMatch(net num: UInt8) -> UInt8 {
    return num ^ 216
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StepUpView.swift
//  FlieProvider
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class StepUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: BirdSEyeView?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(str_locationData) + str_toData.capitalized).localized, (String(str_topText.suffix(7)) + String(str_arrayName.suffix(2))).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.popSubviews()
        //: self.setupSubViewsConstraint()
        self.makeCell()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_succeedName.map{financialAid(model: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.nearTap(name: "bg_talk_closed_tc")
        imag.image = UIImage.nearTap(name: (String(str_downShareName) + str_listName.replacingOccurrences(of: "view", with: "l") + "d_tc"))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.nearTap(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.nearTap(name: (String(str_playerModelText.prefix(5)) + "lk_close" + String(str_wantName.prefix(5)) + String(str_countContent)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(EqualUpCell.self, forCellReuseIdentifier: EqualUpCell.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearTap(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_ofImageLabelText.prefix(5)) + "ntimat" + String(str_beforeData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(playerGesture), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension StepUpView {
    //: @objc private func closeBtnClick() {
    @objc private func playerGesture() {
        //: dismiss()
        singleWithEqual()
    }

    //: func show() {
    func sizeShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = BirdSEyeView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.straddleView(view: self)
        //: popView?.showInView(view: OverdoReactiveCompatible.getWindow())
        popView?.loadExecute(view: OverdoReactiveCompatible.outMax())
    }

    //: @objc func dismiss() {
    @objc func singleWithEqual() {
        //: popView?.dismissView()
        popView?.roundTime()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension StepUpView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: EqualUpCell.className(), for: indexPath) as! EqualUpCell
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.ladleGroup(msg: String(bytes: str_voiceData.map{sizeSelf(medium: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.ladleGroup(msg: (String(str_sharedValue) + String(str_renderName)).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.ladleGroup(msg: String(bytes: str_commitName.map{arrayMatch(net: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.little(fontSize: 16)
        titleLab.font = UIFont.little(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension StepUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func popSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func makeCell() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
