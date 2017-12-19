//
//  RainbowStream.swift
//  Intro_to_SpriteKit
//
//  Created by Gordon, Russell on 2017-12-19.
//  Copyright © 2017 Gordon, Russell. All rights reserved.
//

import Foundation
import SpriteKit

class RainbowStream {

    // Make a list (array) of colors
    let rainbowColors = [
        SKColor(red: 255/255, green: 43/255, blue: 14/255, alpha: 1),
        SKColor(red: 255/255, green: 168/255, blue: 6/255, alpha: 1),
        SKColor(red: 255/255, green: 244/255, blue: 5/255, alpha: 1),
        SKColor(red: 51/255, green: 234/255, blue: 5/255, alpha: 1),
        SKColor(red: 8/255, green: 163/255, blue: 255/255, alpha: 1),
        SKColor(red: 8122255, green: 85/255, blue: 255/255, alpha: 1)
    ]

    init(on thisScene: SKScene, target : SKNode) {
        
        // Iterate over the list of colors and add a particle for each color
        var yMultiplier : CGFloat = 0.5
        for rainbowColor in rainbowColors {
            let rainbowStripe = RainbowParticle(
                target: target,
                color: rainbowColor,
                position:
                CGPoint(
                    x: target.calculateAccumulatedFrame().width * -0.3 + target.position.x,
                    y: target.calculateAccumulatedFrame().height * yMultiplier + target.position.y
                )
            )
            yMultiplier -= 0.15
            
            // Add the rainbow stripe to the scene
            thisScene.addChild(rainbowStripe)
        }

    }
    
}
