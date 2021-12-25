//
//  HelpViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 24/12/21.
//

import UIKit

class HelpViewCell: UICollectionViewCell {
    
    static let identifierHelp = "HelpViewCell"
    let numberOfCar       = UILabel()
    let nameOfCar         = UILabel()
    let carImage          = UIImageView()
    let seperatorView     = UIView()
    let scrollView        = UIScrollView()
    let redPinImage       = UIImageView()
    let bluePinImage      = UIImageView()
    let fromAddressLabel  = UILabel()
    let toAddresLabel     = UILabel()
    let helpButton        = UIButton()
    let helpLabel         = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        self.backgroundColor = .clear
        self.layer.cornerRadius = 18
        
        self.addSubview(numberOfCar)
                numberOfCar.layer.cornerRadius = 8
                numberOfCar.text = "25 L 771 FA"
                numberOfCar.font = .systemFont(ofSize: 20, weight: .semibold)
                numberOfCar.backgroundColor = .white
                numberOfCar.textAlignment = .center
                numberOfCar.adjustsFontSizeToFitWidth = true
                numberOfCar.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).cgColor
                numberOfCar.layer.borderWidth = 0.5
                numberOfCar.snp.makeConstraints { make in
                    make.top.equalToSuperview()
                    make.leading.equalToSuperview()
                    make.width.equalTo(119)
                    make.height.equalTo(32)
                }
                self.addSubview(nameOfCar)
                nameOfCar.layer.cornerRadius = 8
                nameOfCar.text = "Чёрный Chevrolet Malibu"
                nameOfCar.font = .systemFont(ofSize: 14, weight: .regular)
                nameOfCar.textColor = #colorLiteral(red: 0.5215686275, green: 0.5215686275, blue: 0.5215686275, alpha: 1)
                nameOfCar.textAlignment = .left
                nameOfCar.snp.makeConstraints { make in
                    make.top.equalTo(numberOfCar.snp.bottom).offset(8)
                    make.leading.equalToSuperview()
        
                }
                self.addSubview(carImage)
                carImage.image = #imageLiteral(resourceName: "malibu")
                carImage.backgroundColor = .clear
                carImage.contentMode = .scaleAspectFit
                carImage.snp.makeConstraints { make in
                    make.centerY.equalTo(numberOfCar.snp.bottom)
                    make.right.equalTo(self.snp.right).inset(15)
                    make.height.equalTo(38)
                    make.width.equalTo(105)
                }
                self.addSubview(seperatorView)
                seperatorView.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
                seperatorView.snp.makeConstraints { make in
                    make.top.equalTo(nameOfCar.snp.bottom)
                    make.left.right.equalToSuperview()
                    make.height.equalTo(1)
                }
                self.addSubview(redPinImage)
                redPinImage.image = #imageLiteral(resourceName: "Frame 620 (1)")
                redPinImage.clipsToBounds = true
                redPinImage.contentMode = .scaleAspectFit
                redPinImage.snp.makeConstraints { make in
                    make.top.equalTo(seperatorView.snp.bottom).offset(16)
                    make.left.equalToSuperview()
                    make.height.width.equalTo(24)
                }
                self.addSubview(bluePinImage)
                bluePinImage.image = #imageLiteral(resourceName: "Frame 620")
                bluePinImage.clipsToBounds = true
                bluePinImage.contentMode = .scaleAspectFit
                bluePinImage.snp.makeConstraints { make in
                    make.top.equalTo(redPinImage.snp.bottom).offset(8)
                    make.left.equalTo(redPinImage.snp.left)
                    make.height.equalTo(24)
                }
                self.addSubview(fromAddressLabel)
                fromAddressLabel.text = "улица Sharof Rashidov, Ташкент"
                fromAddressLabel.adjustsFontSizeToFitWidth = true
                fromAddressLabel.textColor = .appBlack
                fromAddressLabel.font = .systemFont(ofSize: 14, weight: .regular)
                fromAddressLabel.snp.makeConstraints { make in
                    make.centerY.equalTo(redPinImage.snp.centerY)
                    make.left.equalTo(redPinImage.snp.right).inset(-8)
                    make.height.equalTo(17)
        
                }
                self.addSubview(toAddresLabel)
                toAddresLabel.text = "5a улица Асадуллы Ходжаева"
                toAddresLabel.adjustsFontSizeToFitWidth = true
                toAddresLabel.textColor = .appBlack
                toAddresLabel.font = .systemFont(ofSize: 14, weight: .regular)
                toAddresLabel.snp.makeConstraints { make in
                    make.centerY.equalTo(bluePinImage.snp.centerY)
                    make.left.equalTo(bluePinImage.snp.right).inset(-8)
                    make.height.equalTo(17)
        
                }








        
    }
}
