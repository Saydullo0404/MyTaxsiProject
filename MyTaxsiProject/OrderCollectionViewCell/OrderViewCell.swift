//
//  OrderViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 17/12/21.
//

import UIKit

class OrderViewCell: UICollectionViewCell {
    
    let dayLabel             = UILabel()
    let referenceView        = UIView()
    let characterRedImage    = UIImageView()
    let streetTashkenLabel   = UILabel()
    let characterBlueImage   = UIImageView()
    let streetXodjaevaLabel  = UILabel()
    let timeCarLabel         = UILabel()
    let timeView             = UIView()
    let carImageView         = UIImageView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        self.addSubview(dayLabel)
        dayLabel.text = "6 Июля, Вторник"
        dayLabel.textColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        dayLabel.adjustsFontSizeToFitWidth = true
        dayLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        dayLabel.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.left.equalTo(self.snp.left)
            make.height.equalTo(30)
            make.width.equalTo(192)
        }
        self.addSubview(referenceView)
        referenceView.backgroundColor = .white
        referenceView.layer.cornerRadius = 12
        referenceView.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        referenceView.layer.borderWidth = 0.1
        referenceView.snp.makeConstraints { make in
            make.top.equalTo(dayLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
            make.height.equalTo(118)
            
        }
        referenceView.addSubview(characterRedImage)
        characterRedImage.image = #imageLiteral(resourceName: "Frame 620 (1)")
        characterRedImage.clipsToBounds = true
        characterRedImage.contentMode = .scaleAspectFit
        characterRedImage.snp.makeConstraints { make in
            make.top.equalTo(referenceView.snp.top).offset(12)
            make.left.equalToSuperview().inset(12)
            make.height.width.equalTo(24)
        }
        referenceView.addSubview(streetTashkenLabel)
        streetTashkenLabel.text = "улица Sharof Rashidov, Ташкент"
        streetTashkenLabel.textColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        streetTashkenLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        streetTashkenLabel.adjustsFontSizeToFitWidth = true
        streetTashkenLabel.snp.makeConstraints { make in
            make.centerY.equalTo(characterRedImage.snp.centerY)
            make.left.equalTo(characterRedImage.snp.right).inset(-8)
            make.height.equalTo(24)
            
        }
        referenceView.addSubview(characterBlueImage)
        characterBlueImage.image = #imageLiteral(resourceName: "Frame 620")
        characterBlueImage.clipsToBounds = true
        characterBlueImage.contentMode = .scaleAspectFit
        characterBlueImage.snp.makeConstraints { make in
            make.top.equalTo(characterRedImage.snp.bottom).offset(5)
            make.left.equalTo(characterRedImage.snp.left)
            make.width.height.equalTo(24)
        }
        referenceView.addSubview(streetXodjaevaLabel)
        streetXodjaevaLabel.text = "5a улица Асадуллы Ходжаева"
        streetXodjaevaLabel.textColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        streetXodjaevaLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        streetXodjaevaLabel.adjustsFontSizeToFitWidth = true
        streetXodjaevaLabel.snp.makeConstraints { make in
            make.centerY.equalTo(characterBlueImage.snp.centerY)
            make.left.equalTo(characterBlueImage.snp.right).inset(-8)
            make.height.equalTo(24)
            
        }
        referenceView.addSubview(timeView)
        timeView.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
        timeView.snp.makeConstraints { make in
            make.bottom.equalTo(referenceView.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalTo(42)
        }
        timeView.addSubview(timeCarLabel)
        timeCarLabel.text = "21:36 - 22:12"
        timeCarLabel.textColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        timeCarLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        timeCarLabel.adjustsFontSizeToFitWidth = true
        timeCarLabel.snp.makeConstraints { make in
            make.centerY.equalTo(timeView.snp.centerY)
            make.left.equalTo(timeView.snp.left).inset(20)
            make.bottom.equalTo(timeView.snp.bottom).offset(-12)
                
        }
        referenceView.addSubview(carImageView)
        carImageView.image = #imageLiteral(resourceName: "Bitmap")
        carImageView.clipsToBounds = true
        carImageView.contentMode = .scaleAspectFit
        carImageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
        carImageView.snp.makeConstraints { make in
            make.top.equalTo(streetXodjaevaLabel.snp.bottom)
            make.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview().offset(-15)
        }


        
        
    }
}
