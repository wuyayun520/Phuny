
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_atValue:[UInt8] = [0xb6,0xbb,0xb6,0xc1,0x75,0xb0,0xbc,0xb1,0xb2,0xbf,0x87,0x76,0x6d,0xb5,0xae,0xc0,0x6d,0xbb,0xbc,0xc1,0x6d,0xaf,0xb2,0xb2,0xbb,0x6d,0xb6,0xba,0xbd,0xb9,0xb2,0xba,0xb2,0xbb,0xc1,0xb2,0xb1]

fileprivate func analogDigitalConverter(menu num: UInt8) -> UInt8 {
    let value = Int(num) - 77
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Photo greeting" :*/
fileprivate let str_errorTitle:[Character] = ["P","h","o","t","o"," ","g","r","e","e","t","i","n","g"]

/*: "PresentationViewCell" :*/
fileprivate let str_instanceName:String = "make voice tap infoTalk"
fileprivate let str_nameLabText:String = "ditPhotmanager can say"
fileprivate let str_leadingData:[Character] = ["o","C","e","l","l"]

/*: "CountThen" :*/
fileprivate let str_levelData:[Character] = ["T","a","l","k","i","n","g","G","r","e"]
fileprivate let str_maxTitle:String = "false imageetPh"
fileprivate let str_messageData:String = "raw source letleCell"

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let str_fitData:[UInt8] = [0x90,0x8a,0x96,0x95,0x86,0x94,0x8c,0x86,0x8e,0x99,0x8c,0x8c,0x9b,0x7a,0x8c,0x9b,0x77,0x8f,0x96,0x9b,0x96,0x86,0x9a,0x8c,0x93,0x8c,0x8a,0x9b,0x86,0x95,0x96,0x99]

fileprivate func emptyStop(butterfly num: UInt8) -> UInt8 {
    let value = Int(num) + 217
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let str_noteValue:[UInt8] = [0x1d,0x17,0x1b,0x1a,0x2b,0x19,0x11,0x2b,0x13,0x6,0x11,0x11,0x0,0x27,0x11,0x0,0x24,0x1c,0x1b,0x0,0x1b,0x2b,0x7,0x11,0x18,0x11,0x17,0x0,0x2b,0x4,0x6,0x11]

private func genderLabel(video num: UInt8) -> UInt8 {
    return num ^ 116
}

/*: "  Burn after reading" :*/
fileprivate let str_backgroundText:[Character] = [" "," ","B","u","r","n"," ","a","f","t","e","r"," ","r","e","a","d","i"]
fileprivate let str_equalData:[Character] = ["n","g"]

/*: "Finish" :*/
fileprivate let str_picName:String = "push"
fileprivate let str_withRecordValue:String = "itableish"

/*: "type" :*/
fileprivate let str_videoValue:String = "tdatae"

/*: "isBurn" :*/
fileprivate let str_loadName:String = "isBurnmake content media hide"

/*: "list" :*/
fileprivate let str_modelValue:String = "requestst"

/*: "unlockGift" :*/
fileprivate let str_maximumLeadingData:[Character] = ["u","n","l","o","c","k"]
fileprivate let str_equalValue:[Character] = ["G","i","f","t"]

/*: "giftId" :*/
fileprivate let str_imageText:String = "equal content user managergiftI"
fileprivate let str_makeMainValueContent:String = "m"

/*: "id" :*/
fileprivate let str_pathSearchName:[Character] = ["i","d"]

/*: "content" :*/
fileprivate let str_dataValue:[Character] = ["c","o","n","t","e","n","t"]

/*: "status" :*/
fileprivate let str_coverText:String = "S"
fileprivate let str_labelData:[Character] = ["t","a","t","u","s"]

/*: "photo" :*/
fileprivate let str_colorVideoText:String = "pbackgroundoto"

/*: "Delete Successfully" :*/
fileprivate let str_willData:String = "Deletspace language false"
fileprivate let str_popValue:[Character] = ["e"," ","S","u","c","c","e","s"]
fileprivate let str_faceWindowTitle:[Character] = ["s","f","u","l","l","y"]

/*: "unlockGiftId" :*/
fileprivate let str_effectTitle:String = "max"
fileprivate let str_recordNumberText:String = "text to deadlinelockGi"

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let str_sendData:[UInt8] = [0x6b,0x86,0x82,0x85,0x77,0x7a,0x36,0x77,0x36,0x78,0x7b,0x77,0x8b,0x8a,0x7f,0x7c,0x8b,0x82,0x36,0x86,0x7e,0x85,0x8a,0x85,0x36,0x85,0x7c,0x36,0x8a,0x7e,0x7b,0x36,0x7d,0x88,0x7b,0x7b,0x8a,0x7f,0x84,0x7d]

fileprivate func sizeAt(label num: UInt8) -> UInt8 {
    let value = Int(num) - 22
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CeremonyViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class CeremonyViewDelegate: ServiceRecognizerDelegate {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [PositionHandyJSON] = []
    //: var giftDic = Dictionary<String, Any>()
    var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_atValue.map{analogDigitalConverter(menu: $0)}, encoding: .utf8)!)
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

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Photo greeting".localized
        self.title = (String(str_errorTitle)).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.primaryColorBarContent()
        //: setupSubviews()
        meanSun()
        //: setupSubViewsConstraint()
        viewOff()
        //: bindInteraction()
        listMagnitudeeraction()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: consLet_errorDeviceHeightData, height: consLet_sessionName), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        table.register(PresentationViewCell.self, forCellReuseIdentifier: (String(str_instanceName.suffix(4)) + "ingE" + String(str_nameLabText.prefix(7)) + String(str_leadingData)))
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: "TalkingGreetPhotoTableCell")
        table.register(CountThen.self, forCellReuseIdentifier: (String(str_levelData) + String(str_maxTitle.suffix(4)) + "otoTab" + String(str_messageData.suffix(6))))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearTap(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.nearTap(name: String(bytes: str_fitData.map{emptyStop(butterfly: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.nearTap(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.nearTap(name: String(bytes: str_noteValue.map{genderLabel(video: $0)}, encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(str_backgroundText) + String(str_equalData)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        btn.setTitleColor(UIColor.appNameVisualProperty(), for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(narration), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle("Finish".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.loadEnable(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.onCornerTo(colors: UIColor.gradient(), size: CGSize(width: consLet_errorDeviceHeightData - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(blockHalf), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension CeremonyViewDelegate {
    //: func getPhotoList(isFreshAll: Bool) {
    func itemEveryLast(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict["type"] = 4
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        KeyReactiveCompatible.lineDoing(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict["isBurn"] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict["list"] as? [Any] ?? Array()
                //: self.giftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                self.giftDic = dict[(String(str_maximumLeadingData) + String(str_equalValue))] as? [String: Any] ?? Dictionary()
                //: self.seleteGiftId = self.giftDic["giftId"] as? String ?? ""
                self.seleteGiftId = self.giftDic["giftId"] as? String ?? ""
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = PositionHandyJSON()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?["content"] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?["status"] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.afterCheckfinish()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension CeremonyViewDelegate {
    //: @objc func finishBtnClick() {
    @objc func blockHalf() {
        //: self.saveInfo()
        self.liveTime()
    }

    //: @objc func seleteBtnClick() {
    @objc func narration() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        afterCheckfinish()
    }

    //: func examinefinishBtnStatus() {
    func afterCheckfinish() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - StorePhotoDelegate

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension CeremonyViewDelegate: StorePhotoDelegate {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func compartmentModel(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        dataDown(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func viewVideoEqual(_: UIImage) {}

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
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            allow(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func dataDown(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].number()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict["type"] = 4
                //: dict["photo"] = resultData
                dict["photo"] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                KeyReactiveCompatible.setDown(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        DeviceFailThen.theAdd()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.itemEveryLast(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.afterCheckfinish()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func allow(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: PositionHandyJSON = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        DeviceFailThen.callMake()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        KeyReactiveCompatible.totalimateCellCompletionListenerView(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.scaleMsg(showMsg: (String(str_willData.prefix(5)) + String(str_popValue) + String(str_faceWindowTitle)).localized)
                //: self.examinefinishBtnStatus()
                self.afterCheckfinish()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func liveTime() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(str_effectTitle.replacingOccurrences(of: "max", with: "un") + String(str_recordNumberText.suffix(6)) + "ftId")] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict["isBurn"] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        KeyReactiveCompatible.cardTitleShow(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            DeviceFailThen.theAdd()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension CeremonyViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
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
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((consLet_errorDeviceHeightData - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(str_instanceName.suffix(4)) + "ingE" + String(str_nameLabText.prefix(7)) + String(str_leadingData))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? PresentationViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = PresentationViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.compound(str: String(bytes: str_sendData.map{sizeAt(label: $0)}, encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.photographStart(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.mini()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = "TalkingGreetPhotoTableCell"
            let identifier = (String(str_levelData) + String(str_maxTitle.suffix(4)) + "otoTab" + String(str_messageData.suffix(6)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CountThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = CountThen(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.handleDic(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.afterCheckfinish()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension CeremonyViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func meanSun() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewOff() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func listMagnitudeeraction() {
        //: getPhotoList(isFreshAll: true)
        itemEveryLast(isFreshAll: true)
    }
}
