//
//  CustomLabel.swift
//  pingPong11-23-19
//
//  Created by jon emery on 11/28/19.
//  Copyright © 2019 jon emery. All rights reserved.
//

import Foundation
import UIKit


class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setLabel()
    }
    
    func setLabel() {
        setShadow()
        
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius  = 22 //frame.size.height / 2 
        layer.masksToBounds = false
        layer.borderWidth   = 0.1
        layer.borderColor   = UIColor.darkGray.cgColor
        backgroundColor     = .white
        
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

