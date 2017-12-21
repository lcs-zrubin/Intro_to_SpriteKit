//
//  GameScene.swift
//  Intro_to_SpriteKit
//
//  Created by Gordon, Russell on 2017-12-19.
//  Copyright © 2017 Gordon, Russell. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    // This method runs once after the scene loads
    override func didMove(to view: SKView) {

        // Set the background color
        backgroundColor = SKColor.black
        
        // Set the midpoint value
        let midPoint = CGPoint(x: size.width / 2.0, y: size.height / 2.0)

        // Add the nyan cat
        let nyanCat = SKSpriteNode(imageNamed: "Toad")
        nyanCat.position = midPoint
        nyanCat.setScale(0.4)
        
        let luigiGuy = SKSpriteNode(imageNamed: "luigi")
        luigiGuy.position = CGPoint(x: frame.size.width / 3, y: frame.size.height / 2)
        luigiGuy.setScale(1.0)
        self.addChild(luigiGuy)
        //: To show how happy Nyan Cat is, let's run an action that repeats a sequence of Nyan Cat going up and down forever.
        let actionMoveUp = SKAction.moveBy(x: 0, y: 50, duration: 0.3)
        let actionMoveRight = SKAction.moveBy(x: 50, y: 0, duration: 0.3)
        let actionMoveDown = SKAction.moveBy(x: 0, y: -50, duration: 0.3)
        let actionMoveLeft = SKAction.moveBy(x: -50, y: 0, duration: 0.3)
        let actionRotate = SKAction.rotate(byAngle: 360, duration: 1)
        let actionSequence = SKAction.sequence([actionMoveUp, actionMoveRight, actionMoveDown, actionMoveLeft])
        let actionRotateRepeat = SKAction.sequence([actionRotate])
        let actionRepeat = SKAction.repeatForever(actionSequence)
        let rotateRepeat = SKAction.repeatForever(actionRotateRepeat)
        nyanCat.run(actionRepeat)
        nyanCat.run(rotateRepeat)
        luigiGuy.run(actionRepeat)
        luigiGuy.run(rotateRepeat)
        nyanCat.zPosition = 10  // Ensure sprite is above background
        luigiGuy.zPosition = 11
    
        self.addChild(nyanCat) // Add to the scene
        
        // Make nyan cat happy – play music forever!
        let backgroundMusic = SKAudioNode(fileNamed: "nyan-cat-tune.mp3")
        self.addChild(backgroundMusic)

    }
    
    func touchDown(atPoint pos : CGPoint) {
        print("Touch down at x:\(pos.x) and y:\(pos.y)")
    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func mouseDown(with event: NSEvent) {
        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        self.touchUp(atPoint: event.location(in: self))
    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 0x31:
            print("Space bar pressed")
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
