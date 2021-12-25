//
//  OrderViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 17/12/21.
//

import UIKit

class OrderViewCell: UICollectionViewCell {
    static let identifier = "OrderViewCell"
    let redIcon = UIImageView()
    let blueIcon = UIImageView()
    var fromAddressLabel: Label!
    var toAddressLabel: Label!
    let timeLabel = PaddingLabel()
    var carImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setItem(fromAddress: String, toAddress: String,time: String, carImageName: String) {
        self.timeLabel.text = time
        self.fromAddressLabel.text = fromAddress
        self.toAddressLabel.text = toAddress
        self.carImage.image = UIImage(named: carImageName)
    }
    func initViews() {
        self.layer.cornerRadius = 12
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1).cgColor
        self.backgroundColor = .white
        self.clipsToBounds = true
        
        self.addSubview(redIcon)
        redIcon.image = #imageLiteral(resourceName: "Frame 620 (1)")
        redIcon.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.top.equalToSuperview().offset(12)
            make.leading.equalToSuperview().inset(12)
        }
        
        let fromAddressLabel = Label(text: "улица Sharof Rashidov, Ташкент", textColor: .appBlack, fontSize: 14, weight: .semibold, alignment: .left)
        self.addSubview(fromAddressLabel)
        self.fromAddressLabel = fromAddressLabel
        fromAddressLabel.snp.makeConstraints { make in
            make.leading.equalTo(redIcon.snp.trailing).offset(8)
            make.centerY.equalTo(redIcon.snp.centerY)
            make.trailing.equalToSuperview().inset(10)
        }
        
        self.addSubview(blueIcon)
        blueIcon.image = #imageLiteral(resourceName: "Frame 620")
        blueIcon.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.top.equalTo(redIcon.snp.bottom).offset(8)
            make.leading.equalToSuperview().inset(12)
        }
        
        let toAddressLabel = Label(text: "5a улица Асадуллы Ходжаева", textColor: .appBlack, fontSize: 14, weight: .semibold, alignment: .left)
        self.addSubview(toAddressLabel)
        self.toAddressLabel = toAddressLabel
        toAddressLabel.snp.makeConstraints { make in
            make.leading.equalTo(blueIcon.snp.trailing).offset(8)
            make.centerY.equalTo(blueIcon.snp.centerY)
            make.trailing.equalToSuperview().inset(10)
        }

        timeLabel.text = "21:36 - 22:12"
        timeLabel.textColor = .appBlack
        timeLabel.textAlignment = .left
        timeLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        self.addSubview(timeLabel)
        timeLabel.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
        timeLabel.snp.makeConstraints { make in
            make.bottom.leading.trailing.equalToSuperview()
            make.height.equalTo(42)
        }
        
        self.addSubview(carImage)
        carImage.image = #imageLiteral(resourceName: "aveo")
        carImage.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().offset(-13)
            make.width.equalTo(108)
            make.height.equalTo(39)
        }
        
        
        
    }
}
