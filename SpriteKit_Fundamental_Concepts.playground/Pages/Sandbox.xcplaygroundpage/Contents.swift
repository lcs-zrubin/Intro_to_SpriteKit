//: [Previous](@previous)
/*:
 # Sandbox
 
 In this sandbox, let's break down what's happening to create this partial animation of the "nyan cat".
 
 Below, we import some required libraries.
 */
import Foundation
import SpriteKit
import PlaygroundSupport

//: Define a frame to draw upon (kind of like creating a canvas from earlier this year).
let frame = CGRect(x: 0, y: 0, width: 320, height: 256)

//: Define the midpoint of the frame
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

//: Create a scene that will render our animation.
//: Notice that the size of the scene is taken from the `frame` defined earlier.
var scene = SKScene(size: frame.size)

//: Create an instance of the SKSpriteNode class using the Nyancat image.
let nyanCat = SKSpriteNode(imageNamed: "Nyancat")
nyanCat.position = midPoint
nyanCat.setScale(8.0)

//: To show how happy Nyan Cat is, let's run an action that repeats a sequence of Nyan Cat going up and down forever.
let actionMoveUp = SKAction.moveBy(x: 0, y: 10, duration: 0.15)
let actionMoveDown = SKAction.moveBy(x: 0, y: -10, duration: 0.15)
let actionSequence = SKAction.sequence([actionMoveUp, actionMoveDown])
let actionRepeat = SKAction.repeatForever(actionSequence)
nyanCat.run(actionRepeat)
nyanCat.zPosition = 10  // Ensure sprite is above background
scene.addChild(nyanCat) // Add to the scene

//: Now show the scene within an SKView instance in the live view area
let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: [Next](@next)
