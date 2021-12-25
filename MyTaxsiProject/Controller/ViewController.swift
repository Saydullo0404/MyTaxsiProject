//
//  ViewController.swift
//  MyTaxsiProject
//
//  Created by 1 on 16/12/21.
//

import UIKit
import GoogleMaps
import SnapKit
import SideMenu
import Alamofire
import CoreLocation
import MapKit



class ViewController: UIViewController,MenuControllerDelegate {
    
    func didSelectMenuItem(named: String) {
        
    }
    
    var mapView: GMSMapView?
    var sideMenu: SideMenuNavigationController?
    let menuButton           = UIButton()
    let locationImageView    =  UIImageView()
    let locationView         = UIView()
    var locationManager      = CLLocationManager()
    let myLocationButton     = UIButton()
    let getLocationView      = UIView()
    let getLocationImageView = UIImageView()
    let getAdressTextField   = UITextField()
    let wheretoView          = UIView()
    let wheretoLogoImage     = UIImageView()
    let wheretoButton        = UIButton()
    let rightArrowButton     = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapApiViews()
        
        locationManager.delegate = self
        self.mapView?.isMyLocationEnabled = true
        
        
        // 2
        if CLLocationManager.locationServicesEnabled() {
            // 3
            locationManager.requestLocation()
            
            
        } else {
            // 5
            locationManager.requestWhenInUseAuthorization()
        }
        
        
        
    }
    
    
    func mapApiViews() {
        view.addSubview(locationView)
        locationView.layer.cornerRadius = 20
        locationView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        locationView.backgroundColor = .white
        locationView.snp.makeConstraints { make in
            make.height.equalTo(147)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        GMSServices.provideAPIKey("AIzaSyDM4HhTawkWgq4EW1lPaJHRLd_zzFOumME")
        
        let camera = GMSCameraPosition.camera(withLatitude: 41.311081, longitude: 69.240562, zoom: 15.0)
        mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view.addSubview(mapView!)
        mapView?.snp.makeConstraints({ make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.bottom.equalTo(locationView.snp.top)
            
        })
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 41.311081, longitude: 69.240562)
        marker.title = "Tashkent"
        marker.snippet = "Uzbekistan"
        
        var menu = MenuListVC()
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        sideMenu?.menuWidth = (view.frame.width)*3/4
        sideMenu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        sideMenu?.navigationBar.clipsToBounds = true
        sideMenu?.navigationBar.barTintColor = #colorLiteral(red: 0.7175473571, green: 0.2955725491, blue: 0.9618186355, alpha: 1)
        
        view.addSubview(menuButton)
        menuButton.addTarget(self, action: #selector(openSide), for: .touchUpInside)
        menuButton.setImage(#imageLiteral(resourceName: "MenuButton"), for: .normal)
        menuButton.clipsToBounds = true
        menuButton.contentMode = .scaleAspectFill
        
        
        menuButton.snp.makeConstraints { make in
            make.top.equalTo(view.snp.centerY).multipliedBy(0.1)
            make.left.equalToSuperview().inset(10)
            make.height.width.equalTo(45)
        }
        view.addSubview(locationImageView)
        locationImageView.image = #imageLiteral(resourceName: "LocationImage")
        locationImageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
        locationImageView.clipsToBounds = true
        locationImageView.contentMode = .scaleAspectFill
        locationImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view.snp.centerY)
            make.width.equalTo(40)
            make.height.equalTo(58)
        }
        
        view.addSubview(myLocationButton)
        myLocationButton.setImage(UIImage(named: "location_normal"), for: .normal)
        myLocationButton.adjustsImageSizeForAccessibilityContentSizeCategory = true
        myLocationButton.addTarget(self, action: #selector(myLocation), for: .touchUpInside)
        myLocationButton.snp.makeConstraints { make in
            make.bottom.equalTo(locationView.snp.top).offset(-20)
            make.right.equalToSuperview().inset(15)
            make.height.width.equalTo(45)
            
        }
        locationView.addSubview(getLocationView)
        getLocationView.backgroundColor = #colorLiteral(red: 0.9782040715, green: 0.9782040715, blue: 0.9782039523, alpha: 1)
        getLocationView.layer.cornerRadius = 20
        getLocationView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        getLocationView.snp.makeConstraints { make in
            make.top.equalTo(locationView.snp.top).offset(16)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(52)
        }
        getLocationView.addSubview(getLocationImageView)
        getLocationImageView.image = #imageLiteral(resourceName: "light red pin")
        getLocationImageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
        getLocationImageView.contentMode = .scaleAspectFill
        getLocationImageView.clipsToBounds = true
        getLocationImageView.snp.makeConstraints { make in
            
            make.centerY.equalTo(getLocationView.snp.centerY)
            make.left.equalTo(getLocationView.snp.left).inset(12)
            make.height.width.equalTo(24)
        }
        getLocationView.addSubview(getAdressTextField)
        getAdressTextField.placeholder = "5a улица Асадуллы Ходжаева"
        getAdressTextField.snp.makeConstraints { make in
            make.centerY.equalTo(getLocationView.snp.centerY)
            make.left.equalTo(getLocationImageView.snp.right).inset(-8)
            make.height.equalTo(getLocationView.snp.height)
        }
        locationView.addSubview(wheretoView)
        wheretoView.backgroundColor = #colorLiteral(red: 0.9531050324, green: 0.9531050324, blue: 0.9531050324, alpha: 1)
        wheretoView.layer.cornerRadius = 20
        wheretoView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        wheretoView.snp.makeConstraints { make in
            make.top.equalTo(getLocationView.snp.bottom)
            make.left.equalTo(getLocationView.snp.left)
            make.right.equalTo(getLocationView.snp.right)
            make.height.equalTo(52)
        }
        wheretoView.addSubview(wheretoLogoImage)
        wheretoLogoImage.image = #imageLiteral(resourceName: "Frame 620")
        wheretoLogoImage.adjustsImageSizeForAccessibilityContentSizeCategory = true
        wheretoLogoImage.clipsToBounds = true
        wheretoLogoImage.contentMode = .scaleAspectFill
        wheretoLogoImage.snp.makeConstraints { make in
            make.centerY.equalTo(wheretoView.snp.centerY)
            make.left.equalTo(wheretoView.snp.left).inset(12)
            make.height.width.equalTo(24)
            
        }
        locationView.addSubview(wheretoButton)
        wheretoButton.setTitle("Куда?", for: .normal)
        wheretoButton.setTitleColor(#colorLiteral(red: 0.3321716189, green: 0.3321716189, blue: 0.3321716189, alpha: 1), for: .normal)
        wheretoButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .semibold)
        wheretoButton.snp.makeConstraints { make in
            make.centerY.equalTo(wheretoView.snp.centerY)
            make.left.equalTo(wheretoLogoImage.snp.right).inset(-8)
            make.height.equalTo(17)
        }
        wheretoView.addSubview(rightArrowButton)
        rightArrowButton.setImage(UIImage(named: "rightArrow"), for: .normal)
        rightArrowButton.backgroundColor = #colorLiteral(red: 0.918240726, green: 0.9180418849, blue: 0.9118464589, alpha: 1)
        rightArrowButton.contentMode = .scaleAspectFit
        rightArrowButton.adjustsImageSizeForAccessibilityContentSizeCategory = true
        rightArrowButton.clipsToBounds = true
        rightArrowButton.layer.cornerRadius = 20
        rightArrowButton.layer.maskedCorners = [.layerMaxXMaxYCorner]
        rightArrowButton.snp.makeConstraints { make in
            make.centerY.equalTo(wheretoView.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(60)
            
        }
        
    }
    
    
    
    @objc func openSide() {
        present(sideMenu!, animated: true, completion: nil)
        
    }
    @objc func myLocation(_ sender: UIButton) {
        guard let lat = self.mapView!.myLocation?.coordinate.latitude, let lng = self.mapView!.myLocation?.coordinate.longitude else {
            
            return
        }
        
        let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: lng, zoom: 16)
        self.mapView!.animate(to: camera)
    }
    
    
}



extension ViewController: MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    
    
    func locationManager(
        _ manager: CLLocationManager,
        didChangeAuthorization status: CLAuthorizationStatus
    ) {
        // 3
        guard status == .authorizedWhenInUse else {
            return
        }
        // 4
        locationManager.requestLocation()
        
        
    }
    
    
    // 6
    func locationManager(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation]) {
            guard let location = locations.first else {
                return
            }
            
            // 7
            mapView!.camera = GMSCameraPosition(
                target: location.coordinate,
                zoom: 15,
                bearing: 0,
                viewingAngle: 0)
        }
    
    // 8
    func locationManager(
        _ manager: CLLocationManager,
        didFailWithError error: Error
    ) {
        print(error)
    }
    
    
}


