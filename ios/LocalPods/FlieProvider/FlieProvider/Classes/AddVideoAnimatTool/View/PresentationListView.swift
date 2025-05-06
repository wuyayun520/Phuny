
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_countPointTitle:[UInt8] = [0x25,0x22,0x25,0x38,0x64,0x2f,0x23,0x28,0x29,0x3e,0x76,0x65,0x6c,0x24,0x2d,0x3f,0x6c,0x22,0x23,0x38,0x6c,0x2e,0x29,0x29,0x22,0x6c,0x25,0x21,0x3c,0x20,0x29,0x21,0x29,0x22,0x38,0x29,0x28]

private func executeCorner(button num: UInt8) -> UInt8 {
    return num ^ 76
}

/*: "bg_message_top" :*/
fileprivate let str_colorTitle:[Character] = ["b","g","_","m","e","s","s","a","g","e","_","t","o","p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentationListView.swift
//  FlieProvider
//
//  Created by DouXiu on 2025/2/17.
//

//: import UIKit
import UIKit

//: class ILikeListView: UIView {
class PresentationListView: UIView {
    /// 数据
    //: private lazy var dataArr = [ILikeListModel]()
    private lazy var dataArr = [LikeHandyJSON]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: layer.masksToBounds = true
        layer.masksToBounds = true
        //: setupSubviews()
        viewShareInfo()
        //: setupSubViewsConstraint()
        starContent()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_countPointTitle.map{executeCorner(button: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView()
        let colorV = UIImageView()
        //: colorV.image = UIImage.nearTap(name: "bg_message_top")
        colorV.image = UIImage.nearTap(name: (String(str_colorTitle)))
        //: colorV.contentMode = .scaleAspectFill
        colorV.contentMode = .scaleAspectFill
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: layout.itemSize = CGSize(width: 70, height: 90)
        layout.itemSize = CGSize(width: 70, height: 90)
        //: layout.minimumLineSpacing = 8
        layout.minimumLineSpacing = 8
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)

        //: let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.register(ILikeListViewItemCell.self, forCellWithReuseIdentifier: ILikeListViewItemCell.className())
        collectionView.register(ExpressEnablelyThen.self, forCellWithReuseIdentifier: ExpressEnablelyThen.className())
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension ILikeListView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension PresentationListView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ILikeListViewItemCell.className(), for: indexPath) as! ILikeListViewItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExpressEnablelyThen.className(), for: indexPath) as! ExpressEnablelyThen
        //: if indexPath.row < dataArr.count {
        if indexPath.row < dataArr.count {
            //: cell.refreshItem(dataArr[indexPath.row])
            cell.fromCountTransaction(dataArr[indexPath.row])
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: PostPushManager.share.func__pushToPriveteChatVC(chatID: model.uid)
        PostPushManager.share.birthday(chatID: model.uid)
    }
}

// MARK: - Event

//: extension ILikeListView {
extension PresentationListView {
    /// 刷新I Like列表
    //: func refreshILikeList(_ models: [ILikeListModel]) {
    func toRoom(_ models: [LikeHandyJSON]) {
        //: dataArr = models
        dataArr = models
        //: layoutIfNeeded()
        layoutIfNeeded()
        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - Layout

//: extension ILikeListView {
extension PresentationListView {
    /// 添加视图
    //: private func setupSubviews() {
    private func viewShareInfo() {
        //: addSubview(colorImageView)
        addSubview(colorImageView)
        //: addSubview(collectionView)
        addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func starContent() {
        //: colorImageView.snp.makeConstraints { make in
        colorImageView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(-StatusBarNavigationBarHeight)
            make.top.equalToSuperview().offset(-consLet_tabValue)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(100 + StatusBarNavigationBarHeight)
            make.height.equalTo(100 + consLet_tabValue)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
