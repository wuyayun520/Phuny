
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cellTitleValue:[UInt8] = [0x77,0x70,0x77,0x6a,0x36,0x7d,0x71,0x7a,0x7b,0x6c,0x24,0x37,0x3e,0x76,0x7f,0x6d,0x3e,0x70,0x71,0x6a,0x3e,0x7c,0x7b,0x7b,0x70,0x3e,0x77,0x73,0x6e,0x72,0x7b,0x73,0x7b,0x70,0x6a,0x7b,0x7a]

private func miniLab(up num: UInt8) -> UInt8 {
    return num ^ 30
}

/*: "Any" :*/
fileprivate let str_backValue:String = "Anygift to error table awake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import UIKit
import UIKit

//: typealias TalkingNormalPickerViewHandle = (String) -> Void
typealias TalkingNormalPickerViewHandle = (String) -> Void

//: class TalkingNormalPickerView: TalkingBasePickView {
class ToViewDelegate: PostView {
    //: private var dataArr = [String]()
    private var dataArr = [String]() // picker数据
    //: private var selectedValue = ""                          // 选中数据
    private var selectedValue = "" // 选中数据
    //: var completionHandle: TalkingNormalPickerViewHandle?
    var completionHandle: TalkingNormalPickerViewHandle? // 选中回调

    //: init(frame: CGRect, data: [String]) {
    init(frame _: CGRect, data: [String]) {
        //: super.init()
        super.init()
        //: dataArr = data
        dataArr = data
        //: pickView.reloadAllComponents()
        pickView.reloadAllComponents()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cellTitleValue.map{miniLab(up: $0)}, encoding: .utf8)!)
    }

    //: override func initPickView() {
    override func anyModel() {
        //: super.initPickView()
        super.anyModel()

        //: pickView.delegate = self
        pickView.delegate = self
        //: pickView.dataSource = self
        pickView.dataSource = self
    }

    //: override func confirmClick(button: UIButton) {
    override func opticalLens(button: UIButton) {
        //: super.confirmClick(button: button)
        super.opticalLens(button: button)

        //: guard completionHandle != nil else { return }
        guard completionHandle != nil else { return }
        //: if selectedValue.count <= 0 {
        if selectedValue.count <= 0 {
            //: selectedValue = dataArr.first ?? "Any"
            selectedValue = dataArr.first ?? "Any"
        }
        //: completionHandle!(selectedValue)
        completionHandle!(selectedValue)
    }
}

// MARK: - Event

//: extension TalkingNormalPickerView {
extension ToViewDelegate {
    /// 默认选中
    //: func normalSelectedComponent(value: String) {
    func pointValue(value: String) {
        //: if let index = dataArr.firstIndex(of: value) {
        if let index = dataArr.firstIndex(of: value) {
            //: selectedValue = value
            selectedValue = value
            //: pickView.selectRow(index, inComponent: 0, animated: false)
            pickView.selectRow(index, inComponent: 0, animated: false)
        }
    }
}

// MARK: - UIPickerViewDelegate, UIPickerViewDataSource

//: extension TalkingNormalPickerView: UIPickerViewDelegate, UIPickerViewDataSource {
extension ToViewDelegate: UIPickerViewDelegate, UIPickerViewDataSource {
    //: func numberOfComponents(in pickerView: UIPickerView) -> Int {
    func numberOfComponents(in _: UIPickerView) -> Int {
        //: return 1
        return 1
    }

    //: func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    func pickerView(_: UIPickerView, numberOfRowsInComponent _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    func pickerView(_: UIPickerView, titleForRow row: Int, forComponent _: Int) -> String? {
        //: return dataArr[row]
        return dataArr[row]
    }

    //: func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    func pickerView(_: UIPickerView, rowHeightForComponent _: Int) -> CGFloat {
        //: return 40
        return 40
    }

    //: func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    func pickerView(_: UIPickerView, didSelectRow row: Int, inComponent _: Int) {
        //: selectedValue = dataArr[row]
        selectedValue = dataArr[row]
    }
}
