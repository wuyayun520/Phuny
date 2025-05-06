
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_effectContent:[UInt8] = [0xfd,0xfa,0xfd,0xe0,0xbc,0xf7,0xfb,0xf0,0xf1,0xe6,0xae,0xbd,0xb4,0xfc,0xf5,0xe7,0xb4,0xfa,0xfb,0xe0,0xb4,0xf6,0xf1,0xf1,0xfa,0xb4,0xfd,0xf9,0xe4,0xf8,0xf1,0xf9,0xf1,0xfa,0xe0,0xf1,0xf0]

private func districtManager(to num: UInt8) -> UInt8 {
    return num ^ 148
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WineWaiterRoundedCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/15.
//

//: import UIKit
import UIKit

//: import Then
import Then

// MARK: - 圆角cell

//: class TalkingRoundedCell: UITableViewCell {
class WineWaiterRoundedCell: UITableViewCell {
    //: let cellHeight = actualHeight(h: 14)
    let cellHeight = actualHeight(h: 14)

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: self.setupSubviews()
        self.doExecute()
        //: self.setupSubViewsConstraint()
        self.views()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_effectContent.map{districtManager(to: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var roundView = UIView().then {
    lazy var roundView = UIView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 15
        $0.layer.cornerRadius = 15
    }
}

// MARK: Layout

//: extension TalkingRoundedCell {
extension WineWaiterRoundedCell {
    //: private func setupSubviews() {
    private func doExecute() {
        //: contentView.addSubview(roundView)
        contentView.addSubview(roundView)
    }

    //: private func setupSubViewsConstraint() {
    private func views() {
        //: roundView.snp.makeConstraints { make in
        roundView.snp.makeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }
}
