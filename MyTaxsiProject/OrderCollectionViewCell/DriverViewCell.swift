//
//  DriverViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 25/12/21.
//

import UIKit

class DriverViewCell: UICollectionViewCell {
    
    static let identifierDriver = "DriverViewCell"
    let driverLabel            = UILabel()
    let seperatorView          = UIView()
    let driverImageView        = UIImageView()
    let driverNameLabel        = UILabel()
    let retingLabel            = UILabel()
    let numberLaber            = UILabel()
    let starImageView          = UIImageView()
    let tripsLabel             = UILabel()
    let tripsNumber            = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        self.backgroundColor = .clear
        self.addSubview(driverLabel)
        driverLabel.text = "Водитель"
        driverLabel.textColor = .appBlack
        driverLabel.textAlignment = .left
        driverLabel.adjustsFontSizeToFitWidth = true
        driverLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        driverLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.width.equalTo(92)
            make.height.equalTo(24)
        }
        self.addSubview(seperatorView)
        seperatorView.backgroundColor = #colorLiteral(red: 0.895850122, green: 0.895850122, blue: 0.895850122, alpha: 1)
        seperatorView.snp.makeConstraints { make in
            make.top.equalTo(driverLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview()
            make.height.equalTo(1)
        }
        self.addSubview(driverImageView)
        driverImageView.image = #imageLiteral(resourceName: "user")
        driverImageView.contentMode = .scaleAspectFit
        driverImageView.clipsToBounds = true
        driverImageView.snp.makeConstraints { make in
            make.top.equalTo(seperatorView.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.width.equalTo(56)
        }
        self.addSubview(driverNameLabel)
        driverNameLabel.text = "Umid Abdurakhimov"
        driverNameLabel.textColor = .appBlack
        driverNameLabel.adjustsFontSizeToFitWidth = true
        driverNameLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        driverNameLabel.snp.makeConstraints { make in
            make.top.equalTo(seperatorView.snp.bottom).offset(17)
            make.left.equalTo(driverImageView.snp.right).inset(-16)
            make.width.equalTo(165)
            make.height.equalTo(22)
        }
        self.addSubview(retingLabel)
        retingLabel.text = "Рейтинг:"
        retingLabel.textColor = #colorLiteral(red: 0.7709632516, green: 0.7709632516, blue: 0.770963192, alpha: 1)
        retingLabel.adjustsFontSizeToFitWidth = true
        retingLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        retingLabel.snp.makeConstraints { make in
            make.top.equalTo(driverNameLabel.snp.bottom).offset(5)
            make.left.equalTo(driverNameLabel.snp.left)
            make.height.equalTo(17)
            make.width.equalTo(57)
        }
        self.addSubview(numberLaber)
        numberLaber.text = "5"
        numberLaber.textColor = .appBlack
        numberLaber.adjustsFontSizeToFitWidth = true
        numberLaber.font = .systemFont(ofSize: 14, weight: .semibold)
        numberLaber.snp.makeConstraints { make in
            make.top.equalTo(driverNameLabel.snp.bottom).offset(5)
            make.left.equalTo(retingLabel.snp.right).inset(-4)
            make.height.equalTo(20)
            make.width.equalTo(9)
        }
        self.addSubview(starImageView)
        starImageView.image = #imageLiteral(resourceName: "star 1")
        starImageView.clipsToBounds = true
        starImageView.contentMode = .scaleAspectFit
        starImageView.snp.makeConstraints { make in
            make.top.equalTo(driverNameLabel.snp.bottom).offset(8)
            make.left.equalTo(numberLaber.snp.right).inset(-2)
            make.width.height.equalTo(12)
        }
        self.addSubview(tripsLabel)
        tripsLabel.text = "Поездки:"
        tripsLabel.textColor = #colorLiteral(red: 0.7709632516, green: 0.7709632516, blue: 0.770963192, alpha: 1)
        tripsLabel.adjustsFontSizeToFitWidth = true
        tripsLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        tripsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(retingLabel.snp.centerY)
            make.left.equalTo(starImageView.snp.right).inset(-12)
            make.height.equalTo(17)
            make.width.equalTo(60)
        }
        self.addSubview(tripsNumber)
        tripsNumber.text = "1 885"
        tripsNumber.textColor = .appBlack
        tripsNumber.adjustsFontSizeToFitWidth = true
        tripsNumber.font = .systemFont(ofSize: 20, weight: .semibold)
        tripsNumber.snp.makeConstraints { make in
            make.top.equalTo(driverNameLabel.snp.bottom).offset(4)
            make.left.equalTo(tripsLabel.snp.right).inset(-4)
            make.height.equalTo(20)
            make.width.equalTo(36)
        }
        
    }
}
