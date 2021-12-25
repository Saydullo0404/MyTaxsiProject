//
//  CommondataViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 25/12/21.
//

import UIKit

class CommondataViewCell: UICollectionViewCell {
    
    static let identifierCommon = "CommondataViewCell"
    let commondDataLabel            = UILabel()
    let seperatorView               = UIView()
    let rateLabel                   = UILabel()
    let businessLabel               = UILabel()
    let paymentLabel                = UILabel()
    let incashLabel                 = UILabel()
    let manyImageView               = UIImageView()
    let orderLabel                  = UILabel()
    let numberLabel                 = UILabel()
    let dataLabel                   = UILabel()
    let monthLabel                  = UILabel()
    let durationLabel               = UILabel()
    let timeLabel                   = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        self.backgroundColor = .clear
        self.addSubview(commondDataLabel)
        commondDataLabel.text = "Общие данные"
        commondDataLabel.textColor = .appBlack
        commondDataLabel.adjustsFontSizeToFitWidth = true
        commondDataLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        commondDataLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.height.equalTo(24)
            make.width.equalTo(145)
        }
        self.addSubview(seperatorView)
        seperatorView.backgroundColor = #colorLiteral(red: 0.895850122, green: 0.895850122, blue: 0.895850122, alpha: 1)
        seperatorView.snp.makeConstraints { make in
            make.top.equalTo(commondDataLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview()
            make.height.equalTo(1)
        }
        self.addSubview(rateLabel)
        rateLabel.text = "Тариф"
        rateLabel.textColor = .textBgc
        rateLabel.font = .systemFont(ofSize: 14, weight: .regular)
        rateLabel.adjustsFontSizeToFitWidth = true
        rateLabel.snp.makeConstraints { make in
            make.top.equalTo(seperatorView.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(40)
        }
        self.addSubview(businessLabel)
        businessLabel.text = "Бизнес"
        businessLabel.textColor = .appBlack
        businessLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        businessLabel.adjustsFontSizeToFitWidth = true
        businessLabel.snp.makeConstraints { make in
            make.top.equalTo(seperatorView.snp.bottom).offset(12)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(46)
        }
        self.addSubview(paymentLabel)
        paymentLabel.text = "Способ оплаты"
        paymentLabel.textColor = .textBgc
        paymentLabel.font = .systemFont(ofSize: 14, weight: .regular)
        paymentLabel.adjustsFontSizeToFitWidth = true
        paymentLabel.snp.makeConstraints { make in
            make.top.equalTo(rateLabel.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(101)
        }
        self.addSubview(incashLabel)
        incashLabel.text = "Наличными"
        incashLabel.textColor = .appBlack
        incashLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        incashLabel.adjustsFontSizeToFitWidth = true
        incashLabel.snp.makeConstraints { make in
            make.centerY.equalTo(paymentLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(79)
        }
        self.addSubview(manyImageView)
        manyImageView.image = #imageLiteral(resourceName: "Money")
        manyImageView.contentMode = .scaleAspectFit
        manyImageView.clipsToBounds = true
        manyImageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
        manyImageView.snp.makeConstraints { make in
            make.centerY.equalTo(incashLabel.snp.centerY)
            make.right.equalTo(incashLabel.snp.left).inset(-8)
            make.height.width.equalTo(24)
        }
        self.addSubview(orderLabel)
        orderLabel.text = "Заказ №"
        orderLabel.textColor = .textBgc
        orderLabel.font = .systemFont(ofSize: 14, weight: .regular)
        orderLabel.adjustsFontSizeToFitWidth = true
        orderLabel.snp.makeConstraints { make in
            make.top.equalTo(paymentLabel.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(56)
        }
        self.addSubview(numberLabel)
        numberLabel.text = "3917866"
        numberLabel.textColor = .appBlack
        numberLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        numberLabel.adjustsFontSizeToFitWidth = true
        numberLabel.snp.makeConstraints { make in
            make.centerY.equalTo(orderLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(57)
        }
        self.addSubview(dataLabel)
        dataLabel.text = "Дата и время поездки"
        dataLabel.textColor = .textBgc
        dataLabel.font = .systemFont(ofSize: 14, weight: .regular)
        dataLabel.adjustsFontSizeToFitWidth = true
        dataLabel.snp.makeConstraints { make in
            make.top.equalTo(orderLabel.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(144)
        }
        self.addSubview(monthLabel)
        monthLabel.text = "29 Август, 19:20"
        monthLabel.textColor = .appBlack
        monthLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        monthLabel.adjustsFontSizeToFitWidth = true
        monthLabel.snp.makeConstraints { make in
            make.centerY.equalTo(dataLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(106)
        }
        self.addSubview(durationLabel)
        durationLabel.text = "Продолжительность поездки"
        durationLabel.textColor = .textBgc
        durationLabel.font = .systemFont(ofSize: 14, weight: .regular)
        durationLabel.adjustsFontSizeToFitWidth = true
        durationLabel.snp.makeConstraints { make in
            make.top.equalTo(dataLabel.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(194)
        }
        self.addSubview(timeLabel)
        timeLabel.text = "00:45"
        timeLabel.textColor = .appBlack
        timeLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        timeLabel.adjustsFontSizeToFitWidth = true
        timeLabel.snp.makeConstraints { make in
            make.centerY.equalTo(durationLabel.snp.centerY)
            make.right.equalTo(monthLabel.snp.right)
            make.height.equalTo(17)
            make.width.equalTo(37)
        }
        
        
    }
}
