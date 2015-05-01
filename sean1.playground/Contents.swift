//: Playground - noun: a place where people can play

import UIKit
import SpriteKit
import XCPlayground

let view:SKView = SKView(frame: CGRectMake(0, 0, 1024, 768))

XCPShowView("Live View", view)

let scene:SKScene = SKScene(size: CGSizeMake(1024, 768))
scene.scaleMode = SKSceneScaleMode.AspectFit
view.presentScene(scene);

let redBox:SKSpriteNode = SKSpriteNode(color: SKColor.redColor(), size: CGSizeMake(300, 300))
redBox.position = CGPointMake(512, 384)
redBox.runAction(SKAction.repeatActionForever(SKAction.rotateByAngle(6, duration: 2)))
scene.addChild(redBox)


/*

get a sprite to move around

get scene with a plane


*/