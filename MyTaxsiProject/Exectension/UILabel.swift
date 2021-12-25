//
//  UILabel.swift
//  MyTaxsiProject
//
//  Created by 1 on 22/12/21.
//

import UIKit

class Label: UILabel {
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    init(text: String, textColor: UIColor, fontSize: CGFloat = 15, weight: UIFont.Weight = .regular, alignment: NSTextAlignment = .left) {
        super.init(frame: .zero)
        
        self.text = text
        self.textColor = textColor
        self.font = .systemFont(ofSize: fontSize, weight: weight)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}

class PaddingLabel: UILabel {
    
    @IBInspectable var topInset: CGFloat = 5.0
    @IBInspectable var bottomInset: CGFloat = 5.0
    @IBInspectable var leftInset: CGFloat = 20.0
    @IBInspectable var rightInset: CGFloat = 16.0
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }
}

