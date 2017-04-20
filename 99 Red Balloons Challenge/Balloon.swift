//
//  Balloon.swift
//  99 Red Balloons Challenge
//
//  Created by Craig Martin on 1/17/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var image = UIImage(named:"")
    
    func balloonCount() -> String {
        var count = Int(arc4random_uniform(UInt32(99)))
        var numberOfBalloons = "\(count) Balloons"
        
        return numberOfBalloons
    }
}

    