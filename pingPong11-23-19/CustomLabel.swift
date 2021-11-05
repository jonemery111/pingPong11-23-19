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
        setUnHighlightedLabel()
        setShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func setHighlightedLabel() {
        
        setShadow()
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius  = 22 //frame.size.height / 2 
        layer.masksToBounds = false
        layer.borderWidth   = 0.5
        layer.borderColor   = UIColor.green.cgColor
        backgroundColor     = .white
        
    }
    func setUnHighlightedLabel() {
        
        setShadow()
        
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius  = 22 //frame.size.height / 2
        layer.masksToBounds = false
        layer.borderWidth   = 0.2
        layer.borderColor   = UIColor.lightGray.cgColor
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

