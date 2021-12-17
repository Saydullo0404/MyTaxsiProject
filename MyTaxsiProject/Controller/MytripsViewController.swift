//
//  MytripsViewController.swift
//  MyTaxsiProject
//
//  Created by 1 on 17/12/21.
//

import UIKit

class MytripsViewController: UIViewController {

    let leftArrowButton = UIButton()
    let myTripsLabel    = UILabel()
    var celIdenti       = "OrderViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initViews()
        orderCollectionView()
        
    }
    func initViews() {
        view.addSubview(leftArrowButton)
        leftArrowButton.setImage(UIImage(named: "LeftArrowButton"), for: .normal)
        leftArrowButton.addTarget(self, action: #selector(openSide), for: .touchUpInside)
        leftArrowButton.contentMode = .scaleAspectFit
        leftArrowButton.clipsToBounds = true
        leftArrowButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.left.equalToSuperview().inset(20)
            make.height.width.equalTo(25)
        }
        view.addSubview(myTripsLabel)
        myTripsLabel.text = "Мои поездки"
        myTripsLabel.textColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        myTripsLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        myTripsLabel.numberOfLines = 1
        myTripsLabel.adjustsFontSizeToFitWidth = true
        myTripsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(leftArrowButton.snp.centerY)
            make.left.equalTo(leftArrowButton.snp.right).inset(-15)
            make.height.equalTo(24)
            make.width.equalTo(125)
            
        }
        
        
    }
    func orderCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumLineSpacing = 10
        
        let verticalCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(verticalCollectionView)
        verticalCollectionView.delegate = self
        verticalCollectionView.dataSource = self
        verticalCollectionView.showsVerticalScrollIndicator = false
        verticalCollectionView.register(OrderViewCell.self, forCellWithReuseIdentifier: celIdenti)
        verticalCollectionView.snp.makeConstraints { make in
            make.top.equalTo(myTripsLabel.snp.bottom).offset(25)
            make.left.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview()
        }
        
        
        
    }
    

   

}
extension MytripsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celIdenti, for: indexPath) as! OrderViewCell
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 431)
    }
    @objc func openSide() {
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
