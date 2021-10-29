//
//  pulsate.swift
//  pingPong11-23-19
//
//  Created by jon emery on 11/28/19.
//  Copyright © 2019 jon emery. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.5
        pulse.fromValue = 0.95
        pulse.toValue = 1.05
        pulse.autoreverses = true
        pulse.repeatCount = 4.0
        pulse.initialVelocity = 0.2
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }

    func  flash() {
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.72
        flash.fromValue = 1.0
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction (name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 100
        layer.add(flash, forKey: nil)
    }
    
    
}
extension UIButton {

func pulsate() {
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 0.5
    pulse.fromValue = 0.95
    pulse.toValue = 1.05
    pulse.autoreverses = true
    pulse.repeatCount = 1.15
    pulse.initialVelocity = 0.2
    pulse.damping = 1.0
    
    layer.add(pulse, forKey: nil)
    }
    
    
    func  flash() {
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.72
        flash.fromValue = 1.0
        flash.toValue = 0.65
        flash.timingFunction = CAMediaTimingFunction (name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 100
        layer.add(flash, forKey: nil)
    }
}
