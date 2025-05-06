
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0x19,0x1e,0x19,0x4,0x58,0x13,0x1f,0x14,0x15,0x2,0x4a,0x59,0x50,0x18,0x11,0x3,0x50,0x1e,0x1f,0x4,0x50,0x12,0x15,0x15,0x1e,0x50,0x19,0x1d,0x0,0x1c,0x15,0x1d,0x15,0x1e,0x4,0x15,0x14]

/*: "LocationPin" :*/
fileprivate let str_clearIconTitle:String = "block height pathLocation"
fileprivate let str_labEqualData:[Character] = ["P","i","n"]

/*: "icon_site" :*/
fileprivate let str_maxLineData:String = "icon_sequal array"
fileprivate let str_viewCellValue:String = "afterte"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__

//: import UIKit
import UIKit

//: import MapKit
import MapKit

//: class TalkingChatMapMsgCell: TalkingChatBaseMsgCell {
class ExpressViewCell: ChatView {
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

        //: designView()
        lastOperate()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.map{$0^112}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var mapView: MKMapView = {
    lazy var mapView: MKMapView = {
        //: let map = MKMapView.init()
        let map = MKMapView()
        //: map.layer.cornerRadius = 12.0
        map.layer.cornerRadius = 12.0
        //: map.layer.masksToBounds = true
        map.layer.masksToBounds = true
        //: map.isZoomEnabled = false
        map.isZoomEnabled = false
        //: map.isScrollEnabled = false
        map.isScrollEnabled = false
        //: map.delegate = self
        map.delegate = self
        //: return map
        return map
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatMapMsgCell {
extension ExpressViewCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let mapCellData = data as? HiddenCellData else { return }
        guard let mapCellData = data as? HiddenCellData else { return }

        //: let tempArr = mapCellData.msgModel.msgInfo.latlon.components(separatedBy: ",")
        let tempArr = mapCellData.msgModel.msgInfo.latlon.components(separatedBy: ",")
        //: if let latitude = tempArr.first , let longitude = tempArr.last {
        if let latitude = tempArr.first, let longitude = tempArr.last {
            //: let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
            let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
            //: let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
            let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015) // 缩放级别
            //: let region = MKCoordinateRegion(center: location, span: span)
            let region = MKCoordinateRegion(center: location, span: span)
            //: self.mapView.setRegion(region, animated: false)
            self.mapView.setRegion(region, animated: false)
            //: self.addAnnotation(coordinate2D: location)
            self.afterMake(coordinate2D: location)
        }
    }
}

// MARK: - Event

//: extension TalkingChatMapMsgCell {
extension ExpressViewCell {
    //: func designView() {
    func lastOperate() {
        //: self.container.addSubview(mapView)
        self.container.addSubview(mapView)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.mapView.snp.remakeConstraints { make in
        self.mapView.snp.remakeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.equalTo(212)
            make.width.equalTo(212)
            //: make.height.equalTo(145)
            make.height.equalTo(145)
        }
    }
}

//: extension TalkingChatMapMsgCell : MKMapViewDelegate {
extension ExpressViewCell: MKMapViewDelegate {
    //: private func addAnnotation(coordinate2D: CLLocationCoordinate2D) {
    private func afterMake(coordinate2D: CLLocationCoordinate2D) {
        //: let annotation = MKPointAnnotation()
        let annotation = MKPointAnnotation()
        //: annotation.coordinate = coordinate2D
        annotation.coordinate = coordinate2D
        //: mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation)
    }

    //: func mapView(_ mapView: MKMapView, viewFor annotation: any MKAnnotation) -> MKAnnotationView? {
    func mapView(_ mapView: MKMapView, viewFor annotation: any MKAnnotation) -> MKAnnotationView? {
        //: guard !(annotation is MKUserLocation) else { return nil }
        guard !(annotation is MKUserLocation) else { return nil }
        //: let identifier = "LocationPin"
        let identifier = (String(str_clearIconTitle.suffix(8)) + String(str_labEqualData))
        //: var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        //: if annotationView == nil {
        if annotationView == nil {
            //: annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            //: annotationView?.canShowCallout = true
            annotationView?.canShowCallout = true
            //: annotationView?.image = UIImage.nearTap(name: "icon_site")
            annotationView?.image = UIImage.nearTap(name: (String(str_maxLineData.prefix(6)) + str_viewCellValue.replacingOccurrences(of: "after", with: "i")))
        }
        //: return annotationView
        return annotationView
    }
}
