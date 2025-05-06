
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cameraTitle:[UInt8] = [0xad,0xaa,0xad,0xb0,0xec,0xa7,0xab,0xa0,0xa1,0xb6,0xfe,0xed,0xe4,0xac,0xa5,0xb7,0xe4,0xaa,0xab,0xb0,0xe4,0xa6,0xa1,0xa1,0xaa,0xe4,0xad,0xa9,0xb4,0xa8,0xa1,0xa9,0xa1,0xaa,0xb0,0xa1,0xa0]

private func userColor(edit num: UInt8) -> UInt8 {
    return num ^ 196
}

/*: "Nickname" :*/
fileprivate let str_liveValue:[Character] = ["N","i","c"]
fileprivate let str_titleReadText:[Character] = ["k","n","a","m","e"]

/*: "Birthday" :*/
fileprivate let str_insideName:[Character] = ["B","i","r","t","h","d","a","y"]

/*: "F4F4F4" :*/
fileprivate let str_statData:[Character] = ["F","4","F","4","F","4"]

/*: "%.2d" :*/
fileprivate let str_indexText:String = "leading not%.2d"

/*: - :*/
fileprivate let str_bottomData:String = "view"

/*: "area_code_down_icon" :*/
fileprivate let str_errorData:[Character] = ["a","r","e","a","_","c","o","d","e","_","d"]
fileprivate let str_usName:String = "own_iconm aspect"

/*: "BBBBBB" :*/
fileprivate let str_modelName:String = "pathpathpathpathpathpath"

/*: "0/20" :*/
fileprivate let str_errorValue:String = "0/20"

/*: "20/0" :*/
fileprivate let str_iconText:[Character] = ["2","0","/","0"]

/*: "Invitation code" :*/
fileprivate let str_skirtData:[Character] = ["I","n","v","i","t","a"]
fileprivate let str_sharedText:String = "tion codearea size"

/*: "btn_field_delete_icon" :*/
fileprivate let str_cornerCellData:[Character] = ["b","t","n","_","f","i","e","l","d","_","d","e","l","e","t","e","_","i","c","o"]
fileprivate let str_weightAddData:[Character] = ["n"]

/*: "Next" :*/
fileprivate let str_blockGiftValue:[Character] = ["N","e","x","t"]

/*: "#8C7AFF" :*/
fileprivate let str_fillName:[Character] = ["#","8","C","7","A"]
fileprivate let str_emptyStyleName:String = "useruser"

/*: "Skip" :*/
fileprivate let str_removeData:String = "guard pop user retSkip"

/*: "20/ :*/
fileprivate let str_arrayName:String = "actual0/"

/*: /20" :*/
fileprivate let str_giftEqualValue:String = "/2gap"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContextThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: enum EditInfoType {
enum StableInfoType {
    //: case NickName
    case NickName
    //: case Birth
    case Birth
    //: case HeadPic
    case HeadPic
    //: case Finish
    case Finish
    //: case Skip
    case Skip
}

//: class TalkingLoginEditInfoView: UIView {
class ContextThen: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: StableInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: IndexStyleAppManager.share.userFillInfoMode.nickName = IndexStyleAppManager.share.loginUserMode.nickname ?? ""
        IndexStyleAppManager.share.userFillInfoMode.nickName = IndexStyleAppManager.share.loginUserMode.nickname ?? ""
        //: if let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey) {
        if let inviteCode = UserDefaults.standard.string(forKey: consLet_soundData) {
            //: IndexStyleAppManager.share.userFillInfoMode.inviteCode = inviteCode
            IndexStyleAppManager.share.userFillInfoMode.inviteCode = inviteCode
            //: inviteCodeInputView.text = inviteCode
            inviteCodeInputView.text = inviteCode
        }

        //: setupSubviews()
        scaleValue()
        //: setupSubViewsConstraint()
        separate()
        //: bindInteraction()
        advertising()
        // 先执行一下该方法，昵称可能有默认值
        //: nicknameTextChage(nameInputView)
        from(nameInputView)

        //: if (IndexStyleAppManager.share.userFillInfoMode.sex == Gender.female.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.female.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeMale) {
            (IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeMale)
        {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
        }

        //: func__checkFinishBtnState()
        viewShow()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cameraTitle.map{userColor(edit: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var nameTitleLab: UILabel = {
    lazy var nameTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 17)
        label.font = .loadEnable(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Nickname".localized
        label.text = (String(str_liveValue) + String(str_titleReadText)).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthTitleLab: UILabel = {
    lazy var birthTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 17)
        label.font = .loadEnable(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Birthday".localized
        label.text = (String(str_insideName)).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthControl: UIControl = {
    lazy var birthControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: "F4F4F4")
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var birthLabel: UILabel = {
    lazy var birthLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Regular, fontSize: 15)
        label.font = .loadEnable(type: .Regular, fontSize: 15)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: let day = IndexStyleAppManager.share.userFillInfoMode.birthDay
        let day = IndexStyleAppManager.share.userFillInfoMode.birthDay
        //: let month = IndexStyleAppManager.share.userFillInfoMode.birthMonth
        let month = IndexStyleAppManager.share.userFillInfoMode.birthMonth
        //: let year = IndexStyleAppManager.share.userFillInfoMode.birthYear
        let year = IndexStyleAppManager.share.userFillInfoMode.birthYear

        //: label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"

        //: return label
        return label
        //: }()
    }()

    //: lazy var birthDownImgView: UIImageView = {
    lazy var birthDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.nearTap(name: "area_code_down_icon")
        imageView.image = UIImage.nearTap(name: (String(str_errorData) + String(str_usName.prefix(8))))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var nameInputView: UITextField = {
    lazy var nameInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: "F4F4F4")
        //: textField.font = .loadEnable(type: .Regular, fontSize: 15)
        textField.font = .loadEnable(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .appNameVisualProperty()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.loadEnable(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.loadEnable(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(nameCountLab)
        rightView.addSubview(nameCountLab)
        //: textField.addTarget(self, action: #selector(nicknameTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(from(_:)), for: .editingChanged)
        //: textField.text = IndexStyleAppManager.share.userFillInfoMode.nickName
        textField.text = IndexStyleAppManager.share.userFillInfoMode.nickName
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var nameCountLab: UILabel = {
    lazy var nameCountLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        //: label.font = .loadEnable(type: .Regular, fontSize: 15)
        label.font = .loadEnable(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .bringHomeColor()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: label.text = "0/20"
        label.text = "0/20"
        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: label.text = "20/0"
            label.text = "20/0"
        }
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeTitleLab: UILabel = {
    private lazy var inviteCodeTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .loadEnable(type: .Semibold, fontSize: 17)
        label.font = .loadEnable(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .appNameVisualProperty()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Invitation code".localized
        label.text = (String(str_skirtData) + String(str_sharedText.prefix(9))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeCleanBtn: UIButton = {
    private lazy var inviteCodeCleanBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: btn.setImage(UIImage.nearTap(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.nearTap(name: (String(str_cornerCellData) + String(str_weightAddData))), for: .normal)
        //: btn.addTarget(self, action: #selector(inviteCodeCleanButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fill), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var inviteCodeInputView: UITextField = {
    lazy var inviteCodeInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: "F4F4F4")
        //: textField.font = .loadEnable(type: .Regular, fontSize: 15)
        textField.font = .loadEnable(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .appNameVisualProperty()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.loadEnable(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.loadEnable(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(inviteCodeCleanBtn)
        rightView.addSubview(inviteCodeCleanBtn)
        //: textField.addTarget(self, action: #selector(inviteCodeTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(past(_:)), for: .editingChanged)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle("Next".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth - 60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: "#8C7AFF"), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: "Skip".localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLoginEditInfoView {
extension ContextThen {
    /// 更新Next按钮状态
    //: private func func__checkFinishBtnState() {
    private func viewShow() {
        //: if (IndexStyleAppManager.share.userFillInfoMode.sex == Gender.female.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.female.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (IndexStyleAppManager.share.userFillInfoMode.sex == Gender.male.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeMale) {
            (IndexStyleAppManager.share.userFillInfoMode.sex == ColorExpressionConvertible.male.rawValue && !IndexStyleAppManager.share.appConfigMode.skipInputInviteCodeMale)
        { // 全部必填
            //: let nickName = IndexStyleAppManager.share.userFillInfoMode.nickName
            let nickName = IndexStyleAppManager.share.userFillInfoMode.nickName
            //: let inviteCode = IndexStyleAppManager.share.userFillInfoMode.inviteCode
            let inviteCode = IndexStyleAppManager.share.userFillInfoMode.inviteCode
            //: commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    /// 清除邀请码事件
    //: @objc private func inviteCodeCleanButtonEvent() {
    @objc private func fill() {
        //: inviteCodeInputView.text = ""
        inviteCodeInputView.text = ""
        //: IndexStyleAppManager.share.userFillInfoMode.inviteCode = ""
        IndexStyleAppManager.share.userFillInfoMode.inviteCode = ""
        //: func__checkFinishBtnState()
        viewShow()
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingLoginEditInfoView: UITextFieldDelegate {
extension ContextThen: UITextFieldDelegate {
    //: @objc private func nicknameTextChage(_ textField: UITextField) {
    @objc private func from(_: UITextField) {
        //: let verStr: String = nameInputView.text ?? ""
        let verStr: String = nameInputView.text ?? ""
        //: if verStr.count > nameCount {
        if verStr.count > nameCount {
            //: let substring = nameInputView.text?.prefix(nameCount)
            let substring = nameInputView.text?.prefix(nameCount)
            //: nameInputView.text = String(substring ?? "")
            nameInputView.text = String(substring ?? "")
        }

        //: if LanguageManager.shared.direction == .rightToLeft {
        if ServerLanguageManager.shared.direction == .rightToLeft {
            //: nameCountLab.text = "20/\(nameInputView.text!.count)"
            nameCountLab.text = "20/\(nameInputView.text!.count)"
            //: } else {
        } else {
            //: nameCountLab.text = "\(nameInputView.text!.count)/20"
            nameCountLab.text = "\(nameInputView.text!.count)/20"
        }
        //: IndexStyleAppManager.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        IndexStyleAppManager.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        //: func__checkFinishBtnState()
        viewShow()
    }

    //: @objc private func inviteCodeTextChage(_ textField: UITextField) {
    @objc private func past(_: UITextField) {
        //: let verStr: String = inviteCodeInputView.text ?? ""
        let verStr: String = inviteCodeInputView.text ?? ""
        //: if verStr.count > 6 {
        if verStr.count > 6 {
            //: let substring = inviteCodeInputView.text?.prefix(6)
            let substring = inviteCodeInputView.text?.prefix(6)
            //: inviteCodeInputView.text = String(substring ?? "")
            inviteCodeInputView.text = String(substring ?? "")
        }
        //: IndexStyleAppManager.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        IndexStyleAppManager.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        //: func__checkFinishBtnState()
        viewShow()
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
    }
}

// MARK: - StyleFailViewDelegate

//: extension TalkingLoginEditInfoView: DateViewDelegate {
extension ContextThen: StyleFailViewDelegate {
    //: func func__birthControlClickAction() {
    func labelSumeraction() {
        //: nameInputView.resignFirstResponder()
        nameInputView.resignFirstResponder()
        //: inviteCodeInputView.resignFirstResponder()
        inviteCodeInputView.resignFirstResponder()
        //: let myDateView = TalkingDateView()
        let myDateView = HalfReactiveCompatible()
        //: myDateView.delegate = self
        myDateView.delegate = self
        //: let day = IndexStyleAppManager.share.userFillInfoMode.birthDay
        let day = IndexStyleAppManager.share.userFillInfoMode.birthDay
        //: let month = IndexStyleAppManager.share.userFillInfoMode.birthMonth
        let month = IndexStyleAppManager.share.userFillInfoMode.birthMonth
        //: let year = IndexStyleAppManager.share.userFillInfoMode.birthYear
        let year = IndexStyleAppManager.share.userFillInfoMode.birthYear
        //: myDateView.showView()
        myDateView.modelShow()
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            //: myDateView.setDefaultDate(year: year, month: month, day: day)
            myDateView.managerDay(year: year, month: month, day: day)
        }
    }

    //: func pickDateView(year: Int, month: Int, day: Int) {
    func cornerDay(year: Int, month: Int, day: Int) {
        //: birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        //: IndexStyleAppManager.share.userFillInfoMode.birthDay = day
        IndexStyleAppManager.share.userFillInfoMode.birthDay = day
        //: IndexStyleAppManager.share.userFillInfoMode.birthMonth = month
        IndexStyleAppManager.share.userFillInfoMode.birthMonth = month
        //: IndexStyleAppManager.share.userFillInfoMode.birthYear = year
        IndexStyleAppManager.share.userFillInfoMode.birthYear = year
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoView {
extension ContextThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func scaleValue() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(nameTitleLab)
        contentView.addSubview(nameTitleLab)
        //: contentView.addSubview(nameInputView)
        contentView.addSubview(nameInputView)
        //: contentView.addSubview(birthTitleLab)
        contentView.addSubview(birthTitleLab)
        //: contentView.addSubview(birthControl)
        contentView.addSubview(birthControl)
        //: birthControl.addSubview(birthLabel)
        birthControl.addSubview(birthLabel)
        //: birthControl.addSubview(birthDownImgView)
        birthControl.addSubview(birthDownImgView)
//        contentView.addSubview(inviteCodeTitleLab)
//        contentView.addSubview(inviteCodeInputView)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(skipButton)
        contentView.addSubview(skipButton)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func separate() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: nameTitleLab.snp.makeConstraints { make in
        nameTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: nameInputView.snp.makeConstraints { make in
        nameInputView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
            make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
        }
        //: birthTitleLab.snp.makeConstraints { make in
        birthTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(nameInputView.snp.bottom).offset(30)
            make.top.equalTo(nameInputView.snp.bottom).offset(30)
            //: make.leading.height.equalTo(nameTitleLab)
            make.leading.height.equalTo(nameTitleLab)
        }
        //: birthControl.snp.makeConstraints { make in
        birthControl.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
            make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
        }
        //: birthLabel.snp.makeConstraints { make in
        birthLabel.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-40)
            make.trailing.equalToSuperview().offset(-40)
        }
        //: birthDownImgView.snp.makeConstraints { make in
        birthDownImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.width.equalTo(20)
            make.height.width.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-18)
            make.trailing.equalToSuperview().offset(-18)
        }

//        inviteCodeTitleLab.snp.makeConstraints { make in
//            make.top.equalTo(birthControl.snp.bottom).offset(30)
//            make.leading.height.equalTo(nameTitleLab)
//        }
//
//        inviteCodeInputView.snp.makeConstraints { make in
//            make.trailing.equalTo(-30)
//            make.leading.equalTo(30)
//            make.height.equalTo(50)
//            make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
//        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth - 60)
            make.width.equalTo(consLet_errorDeviceHeightData - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthControl.snp.bottom).offset(30)
            make.top.equalTo(birthControl.snp.bottom).offset(30)
        }

        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(20)
            make.top.equalTo(commitButton.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func advertising() {
        //: skipButton.rx.tap
        skipButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Skip)
                    self.btnBlock!(.Skip)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: birthControl.rx.controlEvent(.touchUpInside)
        birthControl.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__birthControlClickAction()
                self.labelSumeraction()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
