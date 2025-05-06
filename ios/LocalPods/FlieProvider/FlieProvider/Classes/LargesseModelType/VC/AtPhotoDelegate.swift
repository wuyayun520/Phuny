
//: Declare String Begin

/*: "nil" :*/
fileprivate let str_arrayData:String = "niblock"

/*: "Edit profiles" :*/
fileprivate let str_makeTitle:[Character] = ["E","d","i","t"," ","p","r"]
fileprivate let str_matchValue:String = "sharefiles"

/*: "Done" :*/
fileprivate let str_purchaseName:[Character] = ["D","o","n","e"]

/*: "#999999" :*/
fileprivate let str_topName:String = "#999999"

/*: "uid" :*/
fileprivate let str_renderData:String = "uito"

/*: "EditHalfFieldDelegate" :*/
fileprivate let str_popEmptyText:String = "Talkimanager var"
fileprivate let str_valueTitle:[Character] = ["n","g","E","d","i","t","N"]
fileprivate let str_effectValue:String = "ameCellimage normal"

/*: "GiftViewDelegate" :*/
fileprivate let str_arrayValue:String = "Talkintrue make stop bottom"
fileprivate let str_backValue:String = "ignCellfrom on title in view"

/*: "Save the change?" :*/
fileprivate let str_styleData:String = "Saveapp return equal remove"
fileprivate let str_statusName:String = "nge?self manager self"

/*: "Cancel" :*/
fileprivate let str_currentData:String = "Cancelscreen list"

/*: "Save" :*/
fileprivate let str_makeText:String = "view close indexSave"

/*: "nickname" :*/
fileprivate let str_topValue:[Character] = ["n","i","c","k","n","a","m"]
fileprivate let str_elementName:String = "title"

/*: "birthday" :*/
fileprivate let str_failModelValue:[Character] = ["b","i","r","t","h","d","a","y"]

/*: "desc" :*/
fileprivate let str_changeTitle:String = "dshowc"

/*: "Modify the success" :*/
fileprivate let str_sectionName:[Character] = ["M","o","d","i","f","y"," ","t","h","e"," ","s","u","c"]
fileprivate let str_imageRefreshValue:[Character] = ["c","e","s","s"]

/*: "pic" :*/
fileprivate let str_viewText:String = "applicationic"

/*: "[ :*/
fileprivate let str_makeInsideValue:String = "margin"

/*: ]" :*/
fileprivate let str_gestureTapText:String = "]"

/*: "pids" :*/
fileprivate let str_menuValue:String = "equalids"

/*: "aboutMe" :*/
fileprivate let str_viewValue:[Character] = ["a","b","o","u","t"]
fileprivate let str_sizeValue:String = "Meselected view add"

/*: "interest" :*/
fileprivate let str_hideValue:String = "quote"
fileprivate let str_minimizeData:String = "ttextrtextst"

/*: "tagIds" :*/
fileprivate let str_cameraTitle:String = "tagIdvideo instance after"
fileprivate let str_sizeData:[Character] = ["s"]

/*: "category" :*/
fileprivate let str_normalName:[Character] = ["c","a","t","e","g"]
fileprivate let str_modelAddName:[Character] = ["o","r","y"]

/*: "An error occurred, please try again" :*/
fileprivate let str_edgeGestureValue:[UInt8] = [0x36,0x63,0x15,0x5a,0x67,0x67,0x64,0x67,0x15,0x64,0x58,0x58,0x6a,0x67,0x67,0x5a,0x59,0x21,0x15,0x65,0x61,0x5a,0x56,0x68,0x5a,0x15,0x69,0x67,0x6e,0x15,0x56,0x5c,0x56,0x5e,0x63]

fileprivate func itemAppVertical(text num: UInt8) -> UInt8 {
    let value = Int(num) + 11
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "imgUrl" :*/
fileprivate let str_makeValue:[Character] = ["i"]
fileprivate let str_viewModelValue:[Character] = ["m","g","U","r","l"]

/*: "videoUrl" :*/
fileprivate let str_intimateText:[Character] = ["v","i","d","e","o","U","r"]
fileprivate let str_backgroundContent:[Character] = ["l"]

/*: "Video cover submitted successfully" :*/
fileprivate let str_playerTitle:[UInt8] = [0xb7,0x88,0x85,0x84,0x8e,0xc1,0x82,0x8e,0x97,0x84,0x93,0xc1,0x92,0x94,0x83,0x8c,0x88,0x95,0x95,0x84,0x85,0xc1,0x92,0x94,0x82,0x82,0x84,0x92,0x92,0x87,0x94,0x8d,0x8d,0x98]

private func addRecord(title num: UInt8) -> UInt8 {
    return num ^ 225
}

/*: "TalkingJumpCompartmentView" :*/
fileprivate let str_listTitle:String = "Talkimodel back container name status"
fileprivate let str_toTitle:String = "Videocollect gap error"

/*: "video_url" :*/
fileprivate let str_countTitle:[Character] = ["v","i","d","e","o","_"]
fileprivate let str_buttonValue:String = "resultrl"

/*: "img_url" :*/
fileprivate let str_barName:String = "import size managerimg_url"

/*: "status" :*/
fileprivate let str_nameValue:String = "STATUS"

/*: "PresentationViewCell" :*/
fileprivate let str_locationEqualValue:[Character] = ["T","a","l","k","i","n","g","E","d","i","t","P","h","o","t","o"]
fileprivate let str_halfValue:String = "Cellapp app clear layer"

/*: "GlamoriseViewCell" :*/
fileprivate let str_cellTextData:String = "data view heightTalk"
fileprivate let str_roomPushName:String = "mode videoingEdi"
fileprivate let str_buttonData:String = "thdashared"

/*: "FailStoreMeCell" :*/
fileprivate let str_videoIndexName:[Character] = ["T","a","l","k"]
fileprivate let str_taskData:String = "flexible type titleingEdi"
fileprivate let str_popTitle:String = "tMeCelli cell"

/*: "UITableViewCell" :*/
fileprivate let str_normalViewTitle:String = "UITablabel line to let model"
fileprivate let str_labName:String = "if name textwCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtPhotoDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingEditProfilesVC: TalkingBaseViewController {
class AtPhotoDelegate: ServiceRecognizerDelegate {
    //: var seleteAboutme: [UserSeleteTagModel] = []
    var seleteAboutme: [ErrorEquatable] = []
    //: var seleteInters: [UserSeleteTagModel] = []
    var seleteInters: [ErrorEquatable] = []

    //: var isdeleteAboutme = false
    var isdeleteAboutme = false
    //: var isdeleteInters = false
    var isdeleteInters = false

    //: var isTips = false
    var isTips = false

    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [PositionHandyJSON] = []
    //: var seletePhotoArray: [UIImage] = []
    var seletePhotoArray: [UIImage] = []
    //: var DeletePhotoArray: [String] = []
    var DeletePhotoArray: [String] = []

    //: var nameStr: String = ""
    var nameStr: String = ""
    //: var birthday: String = ""
    var birthday: String = ""
    //: var signStr: String = "nil"
    var signStr: String = "nil"

    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private var videoStatus = -3
    private var videoStatus = -3 // 视频审核状态：0待审核 1审核通过 -1审核拒绝 -3未上传
    //: private var isChangeVideo = false
    private var isChangeVideo = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = false
        self.hideNavi = false
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: self.title = "Edit profiles".localized
        self.title = (String(str_makeTitle) + str_matchValue.replacingOccurrences(of: "share", with: "o")).localized

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle("Done".localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#999999"), for: .normal)
        btn.setTitleColor(UIColor(hex: "#999999"), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(instanceClick), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: seleteAboutme = IndexStyleAppManager.share.loginUserMode.aboutMe!
        seleteAboutme = IndexStyleAppManager.share.loginUserMode.aboutMe!
        //: seleteInters = IndexStyleAppManager.share.loginUserMode.interest!
        seleteInters = IndexStyleAppManager.share.loginUserMode.interest!
        //: designView()
        buildMentallyBar()
        //: GetGallery()
        happenWithGalleryGift()
        //: getVideoInfo()
        pullUp()

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(smallNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: deinit {
    deinit {
        //: ProgressHUD.dismiss()
        DeviceFailThen.theAdd()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Laod data

//: extension TalkingEditProfilesVC {
extension AtPhotoDelegate {
    //: func GetGallery() {
    func happenWithGalleryGift() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = IndexStyleAppManager.share.loginUserMode.userID
        dict["uid"] = IndexStyleAppManager.share.loginUserMode.userID
        //: TalkingMeRequestTool.req_GalleryByUid(params: dict) { succeed, result, errorModel in
        KeyReactiveCompatible.galleryLabByParams(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count>0 {
                if array.count > 0 {
                    //: self.PhotoArray.removeAll()
                    self.PhotoArray.removeAll()
                }
                //: if let datas = Array<TalkingUserInfoGalleryModel>.deserialize(from: array as? Array) {
                if let datas = Array<PositionHandyJSON>.deserialize(from: array as? Array) {
                    //: self.PhotoArray.append(contentsOf: (datas as? [TalkingUserInfoGalleryModel])!)
                    self.PhotoArray.append(contentsOf: (datas as? [PositionHandyJSON])!)
                }
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: override func naviPopback() {
    override func toPopback() {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == "TalkingEditNameCell" {
            if i.reuseIdentifier == (String(str_popEmptyText.prefix(5)) + String(str_valueTitle) + String(str_effectValue.prefix(7))) {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: EditHalfFieldDelegate = i as! EditHalfFieldDelegate
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == "TalkingEditSignCell" {
            if i.reuseIdentifier == (String(str_arrayValue.prefix(6)) + "gEditS" + String(str_backValue.prefix(7))) {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: GiftViewDelegate = i as! GiftViewDelegate
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }
        //: if (nameStr.count > 0&&IndexStyleAppManager.share.loginUserMode.nickname != nameStr)||( birthday.count > 0&&IndexStyleAppManager.share.loginUserMode.birthday != self.birthday)||(signStr != "nil" && IndexStyleAppManager.share.loginUserMode.signature != signStr)||self.seletePhotoArray.count>0||self.DeletePhotoArray.count>0||isdeleteAboutme||isdeleteInters || isChangeVideo {
        if (nameStr.count > 0 && IndexStyleAppManager.share.loginUserMode.nickname != nameStr) || (birthday.count > 0 && IndexStyleAppManager.share.loginUserMode.birthday != self.birthday) || (signStr != "nil" && IndexStyleAppManager.share.loginUserMode.signature != signStr) || self.seletePhotoArray.count > 0 || self.DeletePhotoArray.count > 0 || isdeleteAboutme || isdeleteInters || isChangeVideo {
            //: let config = ShowAlertConfig()
            let config = ResourceAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: { [weak self] in
            EqualAlertShow.pathFinish(message: (String(str_styleData.prefix(4)) + " the cha" + String(str_statusName.prefix(4))).localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                EqualAlertShow.postBegin()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)

                //: }, rightBlock: { [weak self] in
            }, rightBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                EqualAlertShow.postBegin()
                //: self.uploadTool(isBack: true)
                self.freshBecome(isBack: true)
                //: }, config: config)
            }, config: config)
            //: } else {
        } else {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    //: @objc func doneBtnClick() {
    @objc func instanceClick() {
        //: uploadTool(isBack: false)
        freshBecome(isBack: false)
    }

    //: func uploadTool(isBack: Bool) {
    func freshBecome(isBack: Bool) {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == "TalkingEditNameCell" {
            if i.reuseIdentifier == (String(str_popEmptyText.prefix(5)) + String(str_valueTitle) + String(str_effectValue.prefix(7))) {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: EditHalfFieldDelegate = i as! EditHalfFieldDelegate
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == "TalkingEditSignCell" {
            if i.reuseIdentifier == (String(str_arrayValue.prefix(6)) + "gEditS" + String(str_backValue.prefix(7))) {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: GiftViewDelegate = i as! GiftViewDelegate
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()

        //: if nameStr.count > 0 && IndexStyleAppManager.share.loginUserMode.nickname != nameStr {
        if nameStr.count > 0, IndexStyleAppManager.share.loginUserMode.nickname != nameStr {
            //: dict["nickname"] = nameStr
            dict[(String(str_topValue) + str_elementName.replacingOccurrences(of: "title", with: "e"))] = nameStr
        }
        //: if birthday.count > 0 && IndexStyleAppManager.share.loginUserMode.birthday != birthday {
        if birthday.count > 0, IndexStyleAppManager.share.loginUserMode.birthday != birthday {
            //: dict["birthday"] = birthday
            dict[(String(str_failModelValue))] = birthday
        }
        //: if signStr != "nil" && IndexStyleAppManager.share.loginUserMode.signature != signStr {
        if signStr != "nil", IndexStyleAppManager.share.loginUserMode.signature != signStr {
            //: dict["desc"] = signStr
            dict["desc"] = signStr
        }

        //: photoAndTagTool(BackT: isBack, isTips: dict.count == 0)
        gift(BackT: isBack, isTips: dict.count == 0)

        //: if VideoIconPath.count>1 && videoPath.count>1 && isChangeVideo == true && IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if VideoIconPath.count > 1, videoPath.count > 1, isChangeVideo == true, IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue {
            //: uploadVideo()
            imageBlock()
        }

        //: if dict.count == 0 {
        if dict.count == 0 {
            //: return
            return
        }

        //: ProgressHUD.show()
        DeviceFailThen.callMake()

        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        KeyReactiveCompatible.appearInfoModifyIndividualKeyEqual(params: dict) { [weak self] succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                self.scaleMsg(showMsg: (String(str_sectionName) + String(str_imageRefreshValue)).localized)

                //: if self.nameStr.count > 0 {
                if self.nameStr.count > 0 {
                    //: IndexStyleAppManager.share.loginUserMode.nickname = self.nameStr
                    IndexStyleAppManager.share.loginUserMode.nickname = self.nameStr
                }
                //: if self.birthday.count > 0 {
                if self.birthday.count > 0 {
                    //: IndexStyleAppManager.share.loginUserMode.birthday = self.birthday
                    IndexStyleAppManager.share.loginUserMode.birthday = self.birthday
                }
                //: IndexStyleAppManager.share.loginUserMode.signature = self.signStr
                IndexStyleAppManager.share.loginUserMode.signature = self.signStr

                //: if isBack {
                if isBack {
                    //: self.navigationController?.popViewController(animated: true)
                    self.navigationController?.popViewController(animated: true)
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                    self.noblesseExtra(showMsg: errorModel!.errorMsg)
                }
            }
        }
    }

    //: func photoAndTagTool(BackT: Bool, isTips: Bool) {
    func gift(BackT: Bool, isTips: Bool) {
        //: self.isTips = isTips
        self.isTips = isTips
        //: if self.DeletePhotoArray.count>0 {
        if self.DeletePhotoArray.count > 0 {
            // 先删再加
            //: deletePhoto()
            showPhoto()
            //: } else {
        } else {
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: uploadPhoto()
                linemenPhoto()
            }
        }

        //: if isdeleteAboutme {
        if isdeleteAboutme {
            //: deleteTag(type: 1)
            ownerFront(type: 1)
        }
        //: if isdeleteInters {
        if isdeleteInters {
            //: deleteTag(type: 2)
            ownerFront(type: 2)
        }
        //: if BackT {
        if BackT {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    /// 上传相册
    //: func uploadPhoto() {
    func linemenPhoto() {
        //: for i in 0..<seletePhotoArray.count {
        for i in 0 ..< seletePhotoArray.count {
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: let resultData: NSData = seletePhotoArray[i].compressedImageData()! as NSData
            let resultData: NSData = seletePhotoArray[i].number()! as NSData
            //: dict["pic"] = resultData
            dict["pic"] = resultData
            //: ProgressHUD.show()
            DeviceFailThen.callMake()
            //: TalkingMeRequestTool.req_UploadPic(params: dict) { [weak self] succeed, result, errorModel in
            KeyReactiveCompatible.uploadOrCompletion(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if succeed {
                if succeed {
                    //: if  self.isTips {
                    if self.isTips {
                        //: self.isTips = false
                        self.isTips = false
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                        self.scaleMsg(showMsg: (String(str_sectionName) + String(str_imageRefreshValue)).localized)
                    }
                    //: self.seletePhotoArray.removeAll()
                    self.seletePhotoArray.removeAll()
                    //: self.GetGallery()
                    self.happenWithGalleryGift()
                }
            }
        }
    }

    /// 删除相册
    //: func deletePhoto() {
    func showPhoto() {
        //: var str = DeletePhotoArray.joined(separator: ",")
        var str = DeletePhotoArray.joined(separator: ",")
        //: str = "[\(str)]"
        str = "[\(str)]"
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["pids"] = str
        dict["pids"] = str
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_DeletePic(params: dict) { [weak self] succeed, result, errorModel in
        KeyReactiveCompatible.effect(params: dict) { [weak self] succeed, _, _ in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: self.uploadPhoto()
                self.linemenPhoto()
                //: } else {
            } else {
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
            }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.scaleMsg(showMsg: (String(str_sectionName) + String(str_imageRefreshValue)).localized)
                }

                //: self.DeletePhotoArray.removeAll()
                self.DeletePhotoArray.removeAll()
                //: self.GetGallery()
                self.happenWithGalleryGift()
            }
        }
    }

    /// 修改tag
    //: func deleteTag(type: Int) {
    func ownerFront(type: Int) {
        //: var array: [UserSeleteTagModel] = []
        var array: [ErrorEquatable] = []
        //: var category = ""
        var category = ""
        //: if type==1 {
        if type == 1 {
            //: array=seleteAboutme
            array = seleteAboutme
            //: category="aboutMe"
            category = "aboutMe"
            //: } else {
        } else {
            //: array=seleteInters
            array = seleteInters
            //: category="interest"
            category = (str_hideValue.replacingOccurrences(of: "quote", with: "in") + str_minimizeData.replacingOccurrences(of: "text", with: "e"))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<array.count {
        for i in 0 ..< array.count {
            //: let model = array[i]
            let model = array[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<array.count-1 {
            if i < array.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict["tagIds"] = str
        //: dict["category"] = category
        dict[(String(str_normalName) + String(str_modelAddName))] = category
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [weak self] succeed, result, errorModel in
        KeyReactiveCompatible.atWindow(params: dict) { [weak self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.scaleMsg(showMsg: (String(str_sectionName) + String(str_imageRefreshValue)).localized)
                }
                //: if type==1 {
                if type == 1 {
                    //: self.isdeleteAboutme = false
                    self.isdeleteAboutme = false
                    //: IndexStyleAppManager.share.loginUserMode.aboutMe = self.seleteAboutme
                    IndexStyleAppManager.share.loginUserMode.aboutMe = self.seleteAboutme
                    //: } else {
                } else {
                    //: self.isdeleteInters = false
                    self.isdeleteInters = false
                    //: IndexStyleAppManager.share.loginUserMode.interest = self.seleteInters
                    IndexStyleAppManager.share.loginUserMode.interest = self.seleteInters
                }
            }
        }
    }

    /// 上传视频
    //: func uploadVideo() {
    func imageBlock() {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        EqualAutomaticallyVideoManager.shared.black(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                self.noblesseExtra(showMsg: String(bytes: str_edgeGestureValue.map{itemAppVertical(text: $0)}, encoding: .utf8)!.localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict["imgUrl"] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(String(str_intimateText) + String(str_backgroundContent))] = videoUrl

            //: TalkingMeRequestTool.uploadVideoUserEdit(params: dict) { [weak self] succeed, result, errorModel in
            KeyReactiveCompatible.off(params: dict) { [weak self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                DeviceFailThen.theAdd()
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: guard succeed else {
                guard succeed else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                    self.noblesseExtra(showMsg: String(bytes: str_edgeGestureValue.map{itemAppVertical(text: $0)}, encoding: .utf8)!.localized)
                    //: return
                    return
                }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
                //: self.videoStatus = 0
                self.videoStatus = 0
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video cover submitted successfully".localized)
                self.scaleMsg(showMsg: String(bytes: str_playerTitle.map{addRecord(title: $0)}, encoding: .utf8)!.localized)
                //: for i in self.MainTable.visibleCells {
                for i in self.MainTable.visibleCells {
                    //: if i.reuseIdentifier == "TalkingEditVideoCell" {
                    if i.reuseIdentifier == (String(str_listTitle.prefix(5)) + "ngEdit" + String(str_toTitle.prefix(5)) + "Cell") {
                        //: let videocell: TalkingEditVideoCell = i as! TalkingEditVideoCell
                        let videocell: TalkingJumpCompartmentView = i as! TalkingJumpCompartmentView
                        //: videocell.upDateCellView(videoPlayPath: dict["videoUrl"] as! String)
                        videocell.addOperate(videoPlayPath: dict[(String(str_intimateText) + String(str_backgroundContent))] as! String)
                        //: videocell.setVideoStatusLB(status: self.videoStatus)
                        videocell.bindStatus(status: self.videoStatus)
                    }
                }
            }
        }
    }

    //: func getVideoInfo() {
    func pullUp() {
        //: TalkingMeRequestTool.getUploadVideoInfo { [weak self] succeed, result, errorModel in
        KeyReactiveCompatible.indicator { [weak self] succeed, result, _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {return}
                guard let dict = result as? [String: Any] else { return }
                //: self.videoPath = dict["video_url"] as! String
                self.videoPath = dict[(String(str_countTitle) + str_buttonValue.replacingOccurrences(of: "result", with: "u"))] as! String
                //: self.VideoIconPath = dict["img_url"] as! String
                self.VideoIconPath = dict["img_url"] as! String
                //: self.videoStatus = dict["status"] as? Int ?? -3
                self.videoStatus = dict["status"] as? Int ?? -3
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditProfilesVC {
extension AtPhotoDelegate {
    //: @objc func keyboardShowBeHidden(notification: NSNotification) {
    @objc func smallNotification(notification: NSNotification) {
        //: let info = notification.userInfo
        let info = notification.userInfo
        //: let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height
        let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height

        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == "TalkingEditNameCell" {
            if i.reuseIdentifier == (String(str_popEmptyText.prefix(5)) + String(str_valueTitle) + String(str_effectValue.prefix(7))) {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: EditHalfFieldDelegate = i as! EditHalfFieldDelegate
                //: if namecell.nameTF.isFirstResponder {
                if namecell.nameTF.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
            //: if i.reuseIdentifier == "TalkingEditSignCell" {
            if i.reuseIdentifier == (String(str_arrayValue.prefix(6)) + "gEditS" + String(str_backValue.prefix(7))) {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: GiftViewDelegate = i as! GiftViewDelegate
                //: if namecell.textView.isFirstResponder {
                if namecell.textView.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingEditProfilesVC: UITableViewDelegate, UITableViewDataSource {
extension AtPhotoDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 7
        return 7
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if IndexStyleAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if IndexStyleAppManager.share.loginUserMode.sex == ColorExpressionConvertible.female.rawValue {
                //: return 226
                return 226
            }
            //: return 0
            return 0

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((consLet_errorDeviceHeightData - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12+26+15
            let cellheiht = Y + 12 + 26 + 15
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: return 107+15
            return 107 + 15
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: return 64
            return 64
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: return 176
            return 176
            //: } else if indexPath.section == 5 || indexPath.section == 6 {
        } else if indexPath.section == 5 || indexPath.section == 6 {
            //: if indexPath.section == 5 && seleteAboutme.count>0 {
            if indexPath.section == 5 && seleteAboutme.count > 0 {
                //: return self.computeCellheight(type: 1)+64
                return self.gauge(type: 1) + 64
                //: } else if indexPath.section == 6 && seleteInters.count>0 {
            } else if indexPath.section == 6 && seleteInters.count > 0 {
                //: return self.computeCellheight(type: 2)+64
                return self.gauge(type: 2) + 64
            }
            //: return 64
            return 64
        }
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditVideoCell"
            let identifier = (String(str_listTitle.prefix(5)) + "ngEdit" + String(str_toTitle.prefix(5)) + "Cell")
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditVideoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingJumpCompartmentView
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditVideoCell(style: .default, reuseIdentifier: identifier)
                cell = TalkingJumpCompartmentView(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setVideoStatusLB(status: self.videoStatus)
            cell?.bindStatus(status: self.videoStatus)
            //: if VideoIconPath.count>1 && videoPath.count>1 {
            if VideoIconPath.count > 1 && videoPath.count > 1 {
                //: cell?.setCellView(iconPath: VideoIconPath)
                cell?.pathBirdSeyeViewSetCompartmentInsetList(iconPath: VideoIconPath)
                //: cell?.upDateCellView(videoPlayPath: videoPath)
                cell?.addOperate(videoPlayPath: videoPath)
            }
            //: cell?.seleteBlock = { [weak self] imagPath, VideoPath in
            cell?.seleteBlock = { [weak self] imagPath, VideoPath in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = imagPath
                self.VideoIconPath = imagPath
                //: self.videoPath = VideoPath
                self.videoPath = VideoPath
                //: self.isChangeVideo = true
                self.isChangeVideo = true
            }
            //: cell?.deleteBlock = { [weak self] in
            cell?.deleteBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
            }
            //: return cell!
            return cell!

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(str_locationEqualValue) + String(str_halfValue.prefix(4)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PresentationViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = PresentationViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.photographStart(selete: PhotoArray)
                //: } else {
            } else {
                //: cell?.resetPhoto()
                cell?.mini()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let identifier = "TalkingEditNameCell"
            let identifier = (String(str_popEmptyText.prefix(5)) + String(str_valueTitle) + String(str_effectValue.prefix(7)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditNameCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? EditHalfFieldDelegate
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditNameCell(style: .default, reuseIdentifier: identifier)
                cell = EditHalfFieldDelegate(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.nameBlock = { [weak self] name in
            cell?.nameBlock = { [weak self] name in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.nameStr = name
                self.nameStr = name
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: let identifier = "TalkingEditBirthdayCell"
            let identifier = (String(str_cellTextData.suffix(4)) + String(str_roomPushName.suffix(6)) + "tBir" + str_buttonData.replacingOccurrences(of: "shared", with: "y") + "Cell")
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditBirthdayCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? GlamoriseViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditBirthdayCell(style: .default, reuseIdentifier: identifier)
                cell = GlamoriseViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.birthdayBlock = { [weak self] day in
            cell?.birthdayBlock = { [weak self] day in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.birthday = day
                self.birthday = day
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: let identifier = "TalkingEditSignCell"
            let identifier = (String(str_arrayValue.prefix(6)) + "gEditS" + String(str_backValue.prefix(7)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditSignCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? GiftViewDelegate
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditSignCell(style: .default, reuseIdentifier: identifier)
                cell = GiftViewDelegate(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.signBlock = { [weak self] sign in
            cell?.signBlock = { [weak self] sign in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.signStr = sign
                self.signStr = sign
            }

            //: return cell!
            return cell!
            //: } else if indexPath.section == 5 || indexPath.section == 6 {
        } else if indexPath.section == 5 || indexPath.section == 6 {
            //: let identifier = "TalkingEditAboutMeCell"
            let identifier = (String(str_videoIndexName) + String(str_taskData.suffix(6)) + "tAbou" + String(str_popTitle.prefix(7)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditAboutMeCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? FailStoreMeCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditAboutMeCell(style: .default, reuseIdentifier: identifier)
                cell = FailStoreMeCell(style: .default, reuseIdentifier: identifier)
            }
            //: if indexPath.section == 5 {
            if indexPath.section == 5 {
                //: cell!.tagtype = .AboutMe
                cell!.tagtype = .AboutMe
                //: } else {
            } else {
                //: cell!.tagtype = .Interests
                cell!.tagtype = .Interests
            }
            //: cell?.setTitle()
            cell?.marshal()
            //: if seleteAboutme.count>0 && indexPath.section == 5 {
            if seleteAboutme.count > 0 && indexPath.section == 5 {
                //: cell?.setMessage(seleteAboutme)
                cell?.nameMessage(seleteAboutme)
            }
            //: if seleteInters.count>0 && indexPath.section == 6 {
            if seleteInters.count > 0 && indexPath.section == 6 {
                //: cell?.setMessage(seleteInters)
                cell?.nameMessage(seleteInters)
            }
            //: cell?.editBtnBlock = { [weak self] in
            cell?.editBtnBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: let vc = TalkingEditTagVC.init()
                let vc = MerelyViewDelegate()
                //: vc.delegate = self
                vc.delegate = self
                //: if indexPath.section == 5 {
                if indexPath.section == 5 {
                    //: vc.tagtype = .AboutMe
                    vc.tagtype = .AboutMe
                    //: } else {
                } else {
                    //: vc.tagtype = .Interests
                    vc.tagtype = .Interests
                }
                //: self.navigationController!.pushViewController(vc, animated: true)
                self.navigationController!.pushViewController(vc, animated: true)
            }
            //: cell?.deleteBlock = { [weak self] tag in
            cell?.deleteBlock = { [weak self] tag in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if indexPath.section == 5 {
                if indexPath.section == 5 {
                    //: if  self.seleteAboutme.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteAboutme.contains(where: { $0.selectedTo(compareTo: tag) }) {
                        //: self.seleteAboutme.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteAboutme.removeAll(where: { $0.selectedTo(compareTo: tag) })
                        //: self.isdeleteAboutme = true
                        self.isdeleteAboutme = true
                    }
                    //: } else {
                } else {
                    //: if  self.seleteInters.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteInters.contains(where: { $0.selectedTo(compareTo: tag) }) {
                        //: self.seleteInters.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteInters.removeAll(where: { $0.selectedTo(compareTo: tag) })
                        //: self.isdeleteInters = true
                        self.isdeleteInters = true
                    }
                }
            }
            //: return cell!
            return cell!
            //: } else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_normalViewTitle.prefix(5)) + "leVie" + String(str_labName.suffix(5)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
                cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func computeCellheight(type: Int) -> CGFloat {
    func gauge(type: Int) -> CGFloat {
        //: let itemSpacing = CGFloat(8)
        let itemSpacing = CGFloat(8)
        //: var contentWidthInRow = CGFloat(0)
        var contentWidthInRow = CGFloat(0)
        //: var array = Array<UserSeleteTagModel>()
        var array = [ErrorEquatable]()
        //: if type == 1 {
        if type == 1 {
            //: array = self.seleteAboutme
            array = self.seleteAboutme
            //: } else {
        } else {
            //: array = self.seleteInters
            array = self.seleteInters
        }
        //: var contentHeightInRow = CGFloat(30)
        var contentHeightInRow = CGFloat(30)

        //: for item in array {
        for item in array {
            //: var tag_name = ""
            var tag_name = ""
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.ar.rawValue {
                //: tag_name = item.tag_name_ar
                tag_name = item.tag_name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.es.rawValue {
                //: tag_name = item.tag_name_es
                tag_name = item.tag_name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if TalkingBenderTotalensityRequestThen.share.interfaceLang == NameTransformable.pt.rawValue {
                //: tag_name = item.tag_name_pt
                tag_name = item.tag_name_pt
            }
            //: if tag_name.count <= 0 {
            if tag_name.count <= 0 {
                //: tag_name = item.tag_name
                tag_name = item.tag_name
            }
            //: let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.loadEnable(type: .Regular, fontSize: 15)], context: nil)
            let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.loadEnable(type: .Regular, fontSize: 15)], context: nil)
            //: let tagWidth = rect.width + 30
            let tagWidth = rect.width + 30
            //: if contentWidthInRow + tagWidth + itemSpacing > ScreenWidth-54 {
            if contentWidthInRow + tagWidth + itemSpacing > consLet_errorDeviceHeightData - 54 {
                // 需要换行
                //: contentHeightInRow += (10 + 30)
                contentHeightInRow += (10 + 30)
                //: contentWidthInRow = itemSpacing
                contentWidthInRow = itemSpacing
                //: } else {
            } else {
                //: contentWidthInRow += (tagWidth+itemSpacing)
                contentWidthInRow += (tagWidth + itemSpacing)
            }
        }
        //: if array.count == 10 {
        if array.count == 10 {
            //: contentHeightInRow += 40
            contentHeightInRow += 40
        }
        //: return contentHeightInRow + 12
        return contentHeightInRow + 12
    }
}

// MARK: - ObserverThen

//: extension TalkingEditProfilesVC: EditTagDelegate {
extension AtPhotoDelegate: ObserverThen {
    //: func freshSeleteTag() {
    func big() {
        //: seleteAboutme =  IndexStyleAppManager.share.loginUserMode.aboutMe!
        seleteAboutme = IndexStyleAppManager.share.loginUserMode.aboutMe!
        //: seleteInters =  IndexStyleAppManager.share.loginUserMode.interest!
        seleteInters = IndexStyleAppManager.share.loginUserMode.interest!
        //: self.MainTable .reloadData()
        self.MainTable.reloadData()
    }
}

// MARK: - StorePhotoDelegate

//: extension TalkingEditProfilesVC: EditPhotoDelegate {
extension AtPhotoDelegate: StorePhotoDelegate {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func compartmentModel(_ icon: [UIImage]) {
        //: for i in icon {
        for i in icon {
            //: self.seletePhotoArray.append(i)
            self.seletePhotoArray.append(i)
            //: var model = TalkingUserInfoGalleryModel.init()
            var model = PositionHandyJSON()
            //: model.imagePic = i
            model.imagePic = i
            //: model.isLocal = true
            model.isLocal = true
            //: PhotoArray.append(model)
            PhotoArray.append(model)
        }
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func viewVideoEqual(_ icon: UIImage) {
        //: if  seletePhotoArray.contains(where: {$0 == icon}) {
        if seletePhotoArray.contains(where: { $0 == icon }) {
            //: seletePhotoArray.removeAll(where: {$0 == icon})
            seletePhotoArray.removeAll(where: { $0 == icon })
        }
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if icon == PhotoArray[i].imagePic {
            if icon == PhotoArray[i].imagePic {
                //: seleteIndex =  i
                seleteIndex = i
                //: break
                break
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func menuMatch(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
                //: self.DeletePhotoArray.append(iconUid)
                self.DeletePhotoArray.append(iconUid)
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }
}

// MARK: - UI

//: extension TalkingEditProfilesVC {
extension AtPhotoDelegate {
    //: private func designView() {
    private func buildMentallyBar() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingEditVideoCell.self, forCellReuseIdentifier: "TalkingEditVideoCell")
        MainTable.register(TalkingJumpCompartmentView.self, forCellReuseIdentifier: (String(str_listTitle.prefix(5)) + "ngEdit" + String(str_toTitle.prefix(5)) + "Cell"))
        //: MainTable.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        MainTable.register(PresentationViewCell.self, forCellReuseIdentifier: (String(str_locationEqualValue) + String(str_halfValue.prefix(4))))
        //: MainTable.register(TalkingEditNameCell.self, forCellReuseIdentifier: "TalkingEditNameCell")
        MainTable.register(EditHalfFieldDelegate.self, forCellReuseIdentifier: (String(str_popEmptyText.prefix(5)) + String(str_valueTitle) + String(str_effectValue.prefix(7))))
        //: MainTable.register(TalkingEditBirthdayCell.self, forCellReuseIdentifier: "TalkingEditBirthdayCell")
        MainTable.register(GlamoriseViewCell.self, forCellReuseIdentifier: (String(str_cellTextData.suffix(4)) + String(str_roomPushName.suffix(6)) + "tBir" + str_buttonData.replacingOccurrences(of: "shared", with: "y") + "Cell"))
        //: MainTable.register(TalkingEditSignCell.self, forCellReuseIdentifier: "TalkingEditSignCell")
        MainTable.register(GiftViewDelegate.self, forCellReuseIdentifier: (String(str_arrayValue.prefix(6)) + "gEditS" + String(str_backValue.prefix(7))))
        //: MainTable.register(TalkingEditAboutMeCell.self, forCellReuseIdentifier: "TalkingEditAboutMeCell")
        MainTable.register(FailStoreMeCell.self, forCellReuseIdentifier: (String(str_videoIndexName) + String(str_taskData.suffix(6)) + "tAbou" + String(str_popTitle.prefix(7))))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
            //: make.top.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(20)
        }
    }
}
