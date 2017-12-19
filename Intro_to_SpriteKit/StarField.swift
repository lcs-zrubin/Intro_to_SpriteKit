//
//  StarField.swift
//  Intro_to_SpriteKit
//
//  Created by Gordon, Russell on 2017-12-19.
//  Copyright © 2017 Gordon, Russell. All rights reserved.
//

import Foundation
import SpriteKit

class StarField : SKEmitterNode {
    
    init(within frame: CGRect) {

        super.init()

        self.particleLifetime = 40
        self.particleBlendMode = SKBlendMode.alpha
        self.particleBirthRate = 3
        self.particleSize = CGSize(width: 4,height: 4)
        self.particleColor = SKColor(red: 100, green: 100, blue: 255, alpha: 1)
        self.position = CGPoint(x:frame.size.width,y:frame.size.height / 2)
        self.particleSpeed = 16
        self.particleSpeedRange = 100
        self.particlePositionRange = CGVector(dx: 0, dy: frame.size.height)
        self.emissionAngle = 3.14
        self.advanceSimulationTime(40)
        self.particleAlpha = 0.5
        self.particleAlphaRange = 0.5
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
