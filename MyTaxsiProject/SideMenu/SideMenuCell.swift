//
//  SideMenuCell.swift
//  MyTaxsiProject
//
//  Created by 1 on 17/12/21.
//

import UIKit
import SnapKit
class SideMenuCell: UITableViewCell {
    let sideMenulogoImage = UIImageView()
    let sideMenutitle = UILabel()
    let ucellLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initViews() {
 
        self.backgroundColor = .black
        self.addSubview(sideMenulogoImage)
        sideMenulogoImage.image = #imageLiteral(resourceName: "MenuButton")
        sideMenulogoImage.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.snp.centerY)
            make.leading.equalToSuperview().inset(22)
            make.width.height.equalTo(25)
        }
        
        self.addSubview(sideMenutitle)
      
        
        sideMenutitle.text = "Hello"
        sideMenutitle.textColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        sideMenutitle.font = .systemFont(ofSize: 14, weight: .medium)
        sideMenutitle.numberOfLines = 1
        sideMenutitle.lineBreakMode = .byWordWrapping

        sideMenutitle.snp.makeConstraints { (make) in
            make.centerY.equalTo(sideMenulogoImage.snp.centerY)
            make.leading.equalTo(sideMenulogoImage.snp.trailing).offset(23)
            
            make.height.equalTo(30)
          
            
         }
        
        
        
        
    }
}

