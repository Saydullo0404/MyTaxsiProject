//
//  ChooseComfortCategoryVCViewController.swift
//  MyTaxsiProject
//
//  Created by 1 on 23/12/21.
//

import UIKit
import GoogleMaps


class ChooseComfortCategoryVC: UIViewController {
    
    
    
    var mapView: GMSMapView?
    let arrowButton = UIButton()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        view.backgroundColor = .white
        
        
        
    }
    func initViews() {
        GMSServices.provideAPIKey("AIzaSyDM4HhTawkWgq4EW1lPaJHRLd_zzFOumME")
        
        let camera = GMSCameraPosition.camera(withLatitude: 41.311081, longitude: 69.240562, zoom: 15.0)
        mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view.addSubview(mapView!)
        mapView?.snp.makeConstraints({ make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(290)
        })
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 41.311081, longitude: 69.240562)
        marker.title = "Tashkent"
        marker.snippet = "Uzbekistan"
        
        view.addSubview(arrowButton)
        arrowButton.setImage(UIImage(named: "leftArrowButton-1"), for: .normal)
        
        arrowButton.addTarget(self, action: #selector(MytripsViewController), for: .touchUpInside)
        arrowButton.contentMode = .scaleAspectFit
        arrowButton.clipsToBounds = true
        
        arrowButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.left.equalToSuperview().inset(20)
            make.height.width.equalTo(40)
        }
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 16
        layout.scrollDirection = .vertical
        
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)
        collectionView.layer.cornerRadius = 12
        collectionView.backgroundColor = .clear
        collectionView.register(HelpViewCell.self, forCellWithReuseIdentifier: HelpViewCell.identifierHelp)
        collectionView.register(CallViewCell.self, forCellWithReuseIdentifier: CallViewCell.identifierCall)
        collectionView.register(DriverViewCell.self, forCellWithReuseIdentifier: DriverViewCell.identifierDriver)
        collectionView.register(CommondataViewCell.self, forCellWithReuseIdentifier: CommondataViewCell.identifierCommon)
        collectionView.register(PaymentViewCell.self, forCellWithReuseIdentifier: PaymentViewCell.identifierPayment)
        collectionView.register(FooterReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FooterReusableView.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(mapView!.snp.bottom).offset(-10)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            
        }
        collectionView.backgroundColor = .white
        
        view.bringSubviewToFront(arrowButton)
        
    }
    
    
    
    
    
    
    
    
    
    @objc func MytripsViewController() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
extension ChooseComfortCategoryVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionFooter {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FooterReusableView.identifier, for: indexPath) as! FooterReusableView
            
            
            
            return footer
        } else {
            return UICollectionReusableView()
        }
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 32, height: 52)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HelpViewCell.identifierHelp , for: indexPath) as! HelpViewCell
            
            
            return cell
            
        }else if indexPath.item == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CallViewCell.identifierCall, for: indexPath) as! CallViewCell
            
            
            return cell
            
        }else if indexPath.item == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DriverViewCell.identifierDriver, for: indexPath) as! DriverViewCell
            
            return cell
        }else if indexPath.item == 3{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CommondataViewCell.identifierCommon, for: indexPath) as! CommondataViewCell
            
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PaymentViewCell.identifierPayment, for: indexPath) as! PaymentViewCell
            
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return CGSize(width: collectionView.frame.width - 32, height: 135)
        } else if indexPath.item == 1 {
            return CGSize(width: collectionView.frame.width - 32, height: 57)
        }else if indexPath.item == 2 {
            return CGSize(width: collectionView.frame.width - 32, height: 101)
        }else if indexPath.item == 3{
            return CGSize(width: collectionView.frame.width - 32, height: 186)
        }else {
            return CGSize(width: collectionView.frame.width - 30, height: 173)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }

}
