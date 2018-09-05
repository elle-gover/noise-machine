//
//  ButtonEffects.swift
//  noiseMachine
//
//  Created by Elle Gover on 9/5/18.
//  Copyright © 2018 com.detroitlabs. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.00
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        
        layer.add(pulse, forKey: nil)
    }
    
    func changeColor() {
        let colorChange = CASpringAnimation(keyPath: "backgroundColor")
        colorChange.fromValue = UIColor.cyan
        colorChange.toValue = UIColor.yellow
        
        layer.add(colorChange, forKey: nil)
    }
  
}
