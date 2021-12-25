//
//  SectionCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 22/12/21.
//

import UIKit


class SectionCell: UICollectionReusableView {
    
    var titleLabel: Label!
    static let identifier = "SectionCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setItem(text: String) {
        self.titleLabel.text = text
    }
    
    func initViews() {
        let titleLabel = Label(text: "6 Июля, Вторник", textColor: .appBlack, fontSize: 24, weight: .semibold, alignment: .left)
        self.addSubview(titleLabel)
        self.titleLabel = titleLabel
        titleLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.bottom.equalToSuperview()
        }
    }
    
}

