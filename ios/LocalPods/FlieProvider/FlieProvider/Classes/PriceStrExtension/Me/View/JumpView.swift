
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_fromData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_wallet" :*/
fileprivate let str_onlineValue:String = "ictranslation"
fileprivate let str_callVoiceValue:String = "n_memodel data inside type"

/*: "icon_me_dgc" :*/
fileprivate let str_viewData:String = "icon_fatal app up data info"
fileprivate let str_buttonValue:[Character] = ["m"]
fileprivate let str_redLabContent:String = "up maximum freee_dgc"

/*: "icon_me_friends" :*/
fileprivate let str_currentValue:String = "end content image makeicon_"
fileprivate let str_resultName:[Character] = ["r","i","e","n","d","s"]

/*: "xicon_me_posts" :*/
fileprivate let str_statusFrameTitle:String = "xicon_app manager system to"
fileprivate let str_requestName:String = "me_perror mask"

/*: "icon_me_Service" :*/
fileprivate let str_appText:String = "path price in app returnicon_me_"
fileprivate let str_formatDataContent:String = "control image importService"

/*: "icon_me_game" :*/
fileprivate let str_equalManagerName:String = "let user cell point varicon_m"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JumpView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class JumpView: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(MakeDefaultsSerializable, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        changeWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fromData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(ModelTheStatesReactiveCompatible.self, forCellWithReuseIdentifier: ModelTheStatesReactiveCompatible.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension JumpView {
    //: func setViewData() {
    func down() {
        //: if IndexStyleAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if IndexStyleAppManager.share.appStatus == FailHashable.normal.rawValue { // 默认模式
            //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (str_onlineValue.replacingOccurrences(of: "translation", with: "o") + String(str_callVoiceValue.prefix(4)) + "_wallet")),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(str_viewData.prefix(5)) + String(str_buttonValue) + String(str_redLabContent.suffix(5)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(str_currentValue.suffix(5)) + "me_f" + String(str_resultName))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_statusFrameTitle.prefix(6)) + String(str_requestName.prefix(4)) + "osts")),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_appText.suffix(8)) + String(str_formatDataContent.suffix(7))))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(str_viewData.prefix(5)) + String(str_buttonValue) + String(str_redLabContent.suffix(5)))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(str_currentValue.suffix(5)) + "me_f" + String(str_resultName))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (String(str_statusFrameTitle.prefix(6)) + String(str_requestName.prefix(4)) + "osts")),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(str_appText.suffix(8)) + String(str_formatDataContent.suffix(7))))]
            }
            // 游戏入口
            //: if IndexStyleAppManager.share.appUserConfigMode.gameShowBit == 1 ||
            if IndexStyleAppManager.share.appUserConfigMode.gameShowBit == 1 ||
                //: IndexStyleAppManager.share.appUserConfigMode.gameShowBit == 3 {
                IndexStyleAppManager.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Game, "icon_me_game"))
                tupleData.append((.My_Game, (String(str_equalManagerName.suffix(6)) + "e_game")))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(str_viewData.prefix(5)) + String(str_buttonValue) + String(str_redLabContent.suffix(5)))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (String(str_statusFrameTitle.prefix(6)) + String(str_requestName.prefix(4)) + "osts")),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(str_appText.suffix(8)) + String(str_formatDataContent.suffix(7))))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        pastUp()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension JumpView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ModelTheStatesReactiveCompatible.className(), for: indexPath) as! ModelTheStatesReactiveCompatible
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.sendAcross(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: PostPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            PostPushManager.share.scene(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: PostPushManager.share.func__pushToSubscribePageWebVC()
            PostPushManager.share.nearQuitShow()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: PostPushManager.share.func__pushToWebVC(webViewType: .InviteFriends)
            PostPushManager.share.scene(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: IndexStyleAppManager.share.loginUserMode.userID)
            let vc = ClearThen(uid: IndexStyleAppManager.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.userRead()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: PostPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            PostPushManager.share.scene(webViewType: .FAQ)

        //: case .My_Game:
        case .My_Game:
            //: let vc = TalkingGameListViewController()
            let vc = TalkingFlowLayout()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.userRead()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (consLet_errorDeviceHeightData - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension JumpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func changeWith() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func pastUp() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - ModelTheStatesReactiveCompatible

//: class TalkingMeItemCell: UICollectionViewCell {
class ModelTheStatesReactiveCompatible: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fromData.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func sendAcross(_ data: (MakeDefaultsSerializable, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.nearTap(name: data.1)
        icon.image = UIImage.nearTap(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.appNameVisualProperty()
        //: lab.font = .loadEnable(type: .Regular, fontSize: 14)
        lab.font = .loadEnable(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
