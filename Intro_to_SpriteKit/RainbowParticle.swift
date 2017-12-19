//
//  RainbowParticle.swift
//  Intro_to_SpriteKit
//
//  Created by Gordon, Russell on 2017-12-19.
//  Copyright © 2017 Gordon, Russell. All rights reserved.
//

import Foundation
import SpriteKit

class RainbowParticle : SKEmitterNode {
    
    init(target : SKNode, color : SKColor, position : CGPoint) {

        super.init()

        self.particleLifetime = 12
        self.particleBlendMode = SKBlendMode.alpha
        self.particleBirthRate = 36
        self.particleSpeed = 24
        self.emissionAngle = 3.14
        self.targetNode = target
        self.particleSize = CGSize(width: 3, height: 3)
        self.particleColor = color
        self.position = position
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

