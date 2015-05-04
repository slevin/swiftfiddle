//: Playground - noun: a place where people can play

import Cocoa
import SpriteKit
import XCPlayground

let view:SKView = SKView(frame: CGRectMake(0, 0, 300, 300))
XCPShowView("Live View", view)


let scene:SKScene = SKScene(size: CGSizeMake(300, 300))
scene.scaleMode = SKSceneScaleMode.AspectFit
view.presentScene(scene);

let plane:SKSpriteNode
let redBox:SKSpriteNode = SKSpriteNode(color: SKColor.redColor(), size: CGSizeMake(300, 300))
redBox.position = CGPointMake(512, 384)
redBox.runAction(SKAction.repeatActionForever(SKAction.rotateByAngle(6, duration: 10)))
scene.addChild(redBox)

