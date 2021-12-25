//
//  CallViewCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 25/12/21.
//

import UIKit

class CallViewCell: UICollectionViewCell {
    
    static let identifierCall = "CallViewCell"
    let helpView         = UIView()
    let helpLogo         = UIImageView()
    let helpTitle        = UILabel()
   
    let repeatView       = UIView()
    let repeatLogo       = UIImageView()
    let repeatTitle      = UILabel()
    
    let callView       = UIView()
    let callLogo       = UIImageView()
    let callTitle      = UILabel()
    let stackView      = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        self.backgroundColor = .clear
        self.addSubview(stackView)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        stackView.backgroundColor = .clear
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        self.backgroundColor = .clear
        self.layer.cornerRadius = 18
        stackView.addArrangedSubview(helpView)
        helpView.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9725490196, blue: 0.9098039216, alpha: 1)
        helpView.layer.cornerRadius = 18
        helpView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(109)
        }
        helpView.addSubview(helpLogo)
        helpLogo.image = #imageLiteral(resourceName: "help")
        helpLogo.contentMode = .scaleAspectFit
        helpLogo.clipsToBounds = true
        helpLogo.snp.makeConstraints { make in
            make.top.equalTo(helpView.snp.top).offset(8)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(24)
        }
        helpView.addSubview(helpTitle)
        helpTitle.text = "Помощь"
        helpTitle.textColor = #colorLiteral(red: 0.9294117647, green: 0.6941176471, blue: 0.09411764706, alpha: 1)
        helpTitle.font = .systemFont(ofSize: 14, weight: .semibold)
        helpTitle.adjustsFontSizeToFitWidth = true
        helpTitle.textAlignment = .center
        helpTitle.snp.makeConstraints { make in
            make.top.equalTo(helpLogo.snp.bottom).offset(1)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(helpView.snp.bottom).offset(-8)
        }
        stackView.addArrangedSubview(repeatView)
        repeatView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.9490196078, blue: 0.9921568627, alpha: 1)
        repeatView.layer.cornerRadius = 18
        repeatView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(helpView.snp.right).inset(-8)
            make.height.equalToSuperview()
            make.width.equalTo(109)
        }
        repeatView.addSubview(repeatLogo)
        repeatLogo.image = #imageLiteral(resourceName: "Group 21250")
        repeatLogo.contentMode = .scaleAspectFit
        repeatLogo.clipsToBounds = true
        repeatLogo.snp.makeConstraints { make in
            make.top.equalTo(repeatView.snp.top).offset(8)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(24)
        }
        repeatView.addSubview(repeatTitle)
        repeatTitle.text = "Повторить"
        repeatTitle.textColor = #colorLiteral(red: 0.2470588235, green: 0.4823529412, blue: 0.9215686275, alpha: 1)
        repeatTitle.font = .systemFont(ofSize: 14, weight: .semibold)
        repeatTitle.adjustsFontSizeToFitWidth = true
        repeatTitle.textAlignment = .center
        repeatTitle.snp.makeConstraints { make in
            make.top.equalTo(repeatLogo.snp.bottom).offset(1)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(repeatView.snp.bottom).offset(-8)
        }
        stackView.addArrangedSubview(callView)
        callView.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9764705882, blue: 0.9490196078, alpha: 1)
        callView.layer.cornerRadius = 18
        callView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(repeatView.snp.right).inset(-8)
            make.height.equalToSuperview()
            make.width.equalTo(109)
        }
        callView.addSubview(callLogo)
        callLogo.image = #imageLiteral(resourceName: "Group 21251")
        callLogo.contentMode = .scaleAspectFit
        callLogo.clipsToBounds = true
        callLogo.snp.makeConstraints { make in
            make.top.equalTo(callView.snp.top).offset(8)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(24)
        }
        callView.addSubview(callTitle)
        callTitle.text = "Позвонить"
        callTitle.textColor = #colorLiteral(red: 0.2784313725, green: 0.6235294118, blue: 0.4156862745, alpha: 1)
        callTitle.font = .systemFont(ofSize: 14, weight: .semibold)
        callTitle.adjustsFontSizeToFitWidth = true
        callTitle.textAlignment = .center
        callTitle.snp.makeConstraints { make in
            make.top.equalTo(callLogo.snp.bottom).offset(1)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(callView.snp.bottom).offset(-8)
        }
    }
    
    
    
    
}
