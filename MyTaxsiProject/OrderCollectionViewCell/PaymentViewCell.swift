//
//  PaymentViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 25/12/21.
//

import UIKit

class PaymentViewCell: UICollectionViewCell {
    static let identifierPayment = "PaymentViewCell"
    let paymentLabel                = UILabel()
    let seperatorView               = UIView()
    let minimumamountLabel          = UILabel()
    let numberamoutLabel            = UILabel()
    let tripAmoutLabel              = UILabel()
    let amutLabel                   = UILabel()
    let priceLabel                  = UILabel()
    let moneyLabel                  = UILabel()
    let lineView                    = UIView()
    let totalLabel                  = UILabel()
    let totalpriceLabel             = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        
        self.backgroundColor = .clear
        self.addSubview(paymentLabel)
        paymentLabel.text = "Расчёт стоимости"
        paymentLabel.textColor = .appBlack
        paymentLabel.adjustsFontSizeToFitWidth = true
        paymentLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        paymentLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.height.equalTo(24)
            make.width.equalTo(170)
        }
        self.addSubview(seperatorView)
        seperatorView.backgroundColor = #colorLiteral(red: 0.895850122, green: 0.895850122, blue: 0.895850122, alpha: 1)
        seperatorView.snp.makeConstraints { make in
            make.top.equalTo(paymentLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview()
            make.height.equalTo(1)
        }
        self.addSubview(minimumamountLabel)
        minimumamountLabel.text = "Минимальная сумма"
        minimumamountLabel.textColor = .textBgc
        minimumamountLabel.font = .systemFont(ofSize: 14, weight: .regular)
        minimumamountLabel.adjustsFontSizeToFitWidth = true
        minimumamountLabel.snp.makeConstraints { make in
            make.top.equalTo(seperatorView.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(136)
        }
        self.addSubview(numberamoutLabel)
        numberamoutLabel.text = "10,000 UZS"
        numberamoutLabel.textColor = .appBlack
        numberamoutLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        numberamoutLabel.adjustsFontSizeToFitWidth = true
        numberamoutLabel.snp.makeConstraints { make in
            make.centerY.equalTo(minimumamountLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(74)
        }
        self.addSubview(tripAmoutLabel)
        tripAmoutLabel.text = "Сумма поездки"
        tripAmoutLabel.textColor = .textBgc
        tripAmoutLabel.font = .systemFont(ofSize: 14, weight: .regular)
        tripAmoutLabel.adjustsFontSizeToFitWidth = true
        tripAmoutLabel.snp.makeConstraints { make in
            make.top.equalTo(minimumamountLabel.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(101)
        }
        self.addSubview(amutLabel)
        amutLabel.text = "31,645 UZS"
        amutLabel.textColor = .appBlack
        amutLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        amutLabel.adjustsFontSizeToFitWidth = true
        amutLabel.snp.makeConstraints { make in
            make.centerY.equalTo(tripAmoutLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(74)
        }
        self.addSubview(priceLabel)
        priceLabel.text = "Цена ожидании"
        priceLabel.textColor = .textBgc
        priceLabel.font = .systemFont(ofSize: 14, weight: .regular)
        priceLabel.adjustsFontSizeToFitWidth = true
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(tripAmoutLabel.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(104)
        }
        self.addSubview(moneyLabel)
        moneyLabel.text = "0 UZS"
        moneyLabel.textColor = .appBlack
        moneyLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        moneyLabel.adjustsFontSizeToFitWidth = true
        moneyLabel.snp.makeConstraints { make in
            make.centerY.equalTo(priceLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(17)
            make.width.equalTo(39)
        }
        self.addSubview(lineView)
        lineView.backgroundColor = #colorLiteral(red: 0.895850122, green: 0.895850122, blue: 0.895850122, alpha: 1)
        lineView.snp.makeConstraints { make in
            make.top.equalTo(moneyLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
            make.height.equalTo(1)
        }
        self.addSubview(totalLabel)
        totalLabel.text = "Итого"
        totalLabel.textColor = .appBlack
        totalLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        totalLabel.adjustsFontSizeToFitWidth = true
        totalLabel.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(12)
            make.left.equalToSuperview()
            make.height.equalTo(24)
            make.width.equalTo(57)
        }
        self.addSubview(totalpriceLabel)
        totalpriceLabel.text = "39,600 UZS"
        totalpriceLabel.textColor = .appBlack
        totalpriceLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        totalpriceLabel.adjustsFontSizeToFitWidth = true
        totalpriceLabel.snp.makeConstraints { make in
            make.centerY.equalTo(totalLabel.snp.centerY)
            make.right.equalToSuperview()
            make.height.equalTo(24)
            make.width.equalTo(104)
        }
        
        
        
    }
}
