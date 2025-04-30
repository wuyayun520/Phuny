
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_picTapIfName:[UInt8] = [0xe1,0xe6,0xe1,0xec,0xa0,0xdb,0xe7,0xdc,0xdd,0xea,0xb2,0xa1,0x98,0xe0,0xd9,0xeb,0x98,0xe6,0xe7,0xec,0x98,0xda,0xdd,0xdd,0xe6,0x98,0xe1,0xe5,0xe8,0xe4,0xdd,0xe5,0xdd,0xe6,0xec,0xdd,0xdc]

fileprivate func restoreSucceed(view num: UInt8) -> UInt8 {
    let value = Int(num) - 120
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "About me" :*/
fileprivate let str_assetTitle:[Character] = ["A","b","o","u","t"," ","m"]
fileprivate let str_visibleValue:[Character] = ["e"]

/*: "My interests" :*/
fileprivate let str_deviceText:String = "My inteimage intimate"
fileprivate let str_tableLabelValue:[Character] = ["r","e","s","t","s"]

/*: "#7166F9" :*/
fileprivate let str_cellTimeName:String = "#7"
fileprivate let str_trackValue:String = "model make166F9"

/*: "#EAE8FE" :*/
fileprivate let str_videoText:[Character] = ["#","E","A","E","8"]
fileprivate let str_intimateData:String = "actual"

/*: "#4D94FF" :*/
fileprivate let str_towardText:String = "#4D94Fvar leave"
fileprivate let str_observerName:String = "cell"

/*: "#DBEAFF" :*/
fileprivate let str_styleName:String = "#DBEAFFvalue user main manager else"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelFlowLayout.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailTagCell: UITableViewCell {
class ModelFlowLayout: UITableViewCell {
    //: var titleArray: [String] = []
    var titleArray: [String] = []
    //: var tagAreaHeight: CGFloat = 0
    var tagAreaHeight: CGFloat = 0
    //: var cellType: TUserDetailCellType = TUserDetailCellType.aboutMeType
    var cellType: TitleCaseIterable = .aboutMeType
    //: var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?
    var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        agree()
        //: setupSubViewsConstraint()
        cell()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_picTapIfName.map{restoreSucceed(view: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .loadEnable(type: .Medium, fontSize: 17)
        lb.font = .loadEnable(type: .Medium, fontSize: 17)
        //: lb.textColor = .appTitleColor()
        lb.textColor = .appNameVisualProperty()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: TalkingTagCollectionFlowLayout = TalkingTagCollectionFlowLayout()
        let layout = FileFlowLayout()
        //: layout.delegate = self
        layout.delegate = self

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.isScrollEnabled = false
        collect.isScrollEnabled = false
        //: collect.register(TalkingUserDetailTagItemCell.self, forCellWithReuseIdentifier: TalkingUserDetailTagItemCell.className())
        collect.register(SawLogViewCell.self, forCellWithReuseIdentifier: SawLogViewCell.className())
        //: return collect
        return collect
        //: }()
    }()
}

// MARK: - update

//: extension TalkingUserDetailTagCell {
extension ModelFlowLayout {
    //: func configTagCellWithDataModel(type: TUserDetailCellType, userModel: TalkingUserInfoModel) {
    func totaleraction(type: TitleCaseIterable, userModel: MonthLabelHandyJSON) {
        //: cellType = type
        cellType = type
        //: if type == .aboutMeType {
        if type == .aboutMeType {
            //: titleLab.text = "About me".localized
            titleLab.text = "About me".localized
            //: titleArray = userModel.aboutMe
            titleArray = userModel.aboutMe

            //: } else if type == .intersetsType {
        } else if type == .intersetsType {
            //: titleLab.text = "My interests".localized
            titleLab.text = (String(str_deviceText.prefix(7)) + String(str_tableLabelValue)).localized
            //: titleArray = userModel.interest
            titleArray = userModel.interest
        }

        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingUserDetailTagCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension ModelFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //: return CGSize(width: labelWidth(titleArray[indexPath.item], 20), height: 30)
        return CGSize(width: first(titleArray[indexPath.item], 20), height: 30)
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.titleArray.count
        return self.titleArray.count
    }

    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingUserDetailTagItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingUserDetailTagItemCell.className(), for: indexPath) as! TalkingUserDetailTagItemCell
        let cell: SawLogViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: SawLogViewCell.className(), for: indexPath) as! SawLogViewCell
        //: cell.tagLabel.text = titleArray[indexPath.row]
        cell.tagLabel.text = titleArray[indexPath.row]
        //: if cellType == .aboutMeType {
        if cellType == .aboutMeType {
            //: cell.tagLabel.textColor = UIColor(hex: "#7166F9")
            cell.tagLabel.textColor = UIColor(hex: "#7166F9")
            //: cell.bgView.backgroundColor = UIColor(hex: "#EAE8FE")
            cell.bgView.backgroundColor = UIColor(hex: "#EAE8FE")

            //: } else if cellType == .intersetsType  {
        } else if cellType == .intersetsType {
            //: cell.tagLabel.textColor = UIColor(hex: "#4D94FF")
            cell.tagLabel.textColor = UIColor(hex: "#4D94FF")
            //: cell.bgView.backgroundColor = UIColor(hex: "#DBEAFF")
            cell.bgView.backgroundColor = UIColor(hex: "#DBEAFF")
        }
        //: return cell
        return cell
    }

    //: func labelWidth(_ text: String, _ height: CGFloat) -> CGFloat {
    func first(_ text: String, _ height: CGFloat) -> CGFloat {
        //: let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        //: let font = UIFont.systemFont(ofSize: 15)
        let font = UIFont.systemFont(ofSize: 15)
        //: let attributes = [NSAttributedString.Key.font: font]
        let attributes = [NSAttributedString.Key.font: font]
        //: let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        //: return labelSize.width + 20
        return labelSize.width + 20
    }
}

// MARK: - ServiceObjectProtocol

//: extension TalkingUserDetailTagCell: TalkingTagCollectionFlowLayoutDelegate {
extension ModelFlowLayout: ServiceObjectProtocol {
    //: func getCollectuonViewHeight(layoutH: CGFloat) {
    func keyOn(layoutH: CGFloat) {
        //: guard self.tagAreaHeight != layoutH else {
        guard self.tagAreaHeight != layoutH else {
            //: return
            return
        }
        //: self.tagAreaHeight = layoutH
        self.tagAreaHeight = layoutH
        //: if self.collectionLayoutSubviewBlock != nil {
        if self.collectionLayoutSubviewBlock != nil {
            //: self.collectionLayoutSubviewBlock!(layoutH)
            self.collectionLayoutSubviewBlock!(layoutH)
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailTagCell {
extension ModelFlowLayout {
    //: private func setupSubviews() {
    private func agree() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(collectionView)
        contentView.addSubview(collectionView)
    }

    //: private func setupSubViewsConstraint() {
    private func cell() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(15)
            make.top.equalTo(titleLab.snp.bottom).offset(15)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
