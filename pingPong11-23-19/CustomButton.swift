//
//  CustomButton.swift
//  pingPong11-23-19
//
//  Created by jon emery on 11/27/19.
//  Copyright © 2019 jon emery. All rights reserved.
//

import Foundation
import UIKit


class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setButton()
    }
    
    func setButton() {
        setShadow()
        
        setTitleColor(.red, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font    = UIFont(name: "DINCondensed-Bold", size: 75)
        layer.cornerRadius  = 22 //frame.size.height / 2 //was22
        layer.masksToBounds = false
        layer.borderWidth   = 0.1
        layer.borderColor   = UIColor.darkGray.cgColor
        backgroundColor     = .lightGray
        
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
}




