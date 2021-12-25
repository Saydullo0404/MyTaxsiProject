//
//  FooterReusableView.swift
//  MyTaxsiProject
//
//  Created by 1 on 25/12/21.
//

import UIKit

class FooterReusableView: UICollectionReusableView {
    
    let deleteDataView              = UIView()
    static let identifier = "FooterReusableView"
    let deleteLabel       = UILabel()
    let deleteImageView   = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
        self.addSubview(deleteDataView)
        deleteDataView.backgroundColor = #colorLiteral(red: 1, green: 0.9176470588, blue: 0.9137254902, alpha: 1)
        deleteDataView.layer.cornerRadius = 12
        deleteDataView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(52)
        
        }
        deleteDataView.addSubview(deleteLabel)
        deleteLabel.text = "Удалить данные"
        deleteLabel.textColor = #colorLiteral(red: 1, green: 0.2705882353, blue: 0.2274509804, alpha: 1)
        deleteLabel.adjustsFontSizeToFitWidth = true
        deleteLabel.snp.makeConstraints { make in
            make.top.equalTo(deleteDataView.snp.top).offset(14)
            make.centerX.equalToSuperview()
            make.width.equalTo(130)
            make.height.equalTo(24)
        }
        deleteDataView.addSubview(deleteImageView)
        deleteImageView.image = #imageLiteral(resourceName: "ic_delete_24px 1")
        deleteImageView.clipsToBounds  = true
        deleteImageView.contentMode = .scaleAspectFit
        deleteImageView.snp.makeConstraints { make in
            make.centerY.equalTo(deleteLabel.snp.centerY)
            make.right.equalTo(deleteLabel.snp.left).inset(-4)
            make.height.width.equalTo(24)
            
        }

    }
}
