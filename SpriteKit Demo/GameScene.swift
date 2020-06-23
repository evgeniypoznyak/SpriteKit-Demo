//
//  GameScene.swift
//  SpriteKit Demo
//
//  Created by Evgeniy Poznyak on 6/21/20.
//  Copyright © 2020 Evgeniy Poznyak. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: .red, size: CGSize(width: 200.0, height: 200.00))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
    let blueBox = SKSpriteNode(color: .blue, size: CGSize(width: 100.0, height: 100.00))
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        myFirstSpriteNode.anchorPoint = .zero
        addChild(myFirstSpriteNode)
        
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        
        myFirstTexturedSpriteNode.zPosition = 1
        blueBox.zPosition = 2
        
        blueBox.position = CGPoint()
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)
        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width / 2, y: myFirstSpriteNode.size.height / 2)
        myFirstSpriteNode.addChild(blueBox)
        
        physicsWorld.gravity = CGVector(dx: -1.0, dy: -2.0)
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        myFirstTexturedSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: myFirstTexturedSpriteNode.size.width/2)
        myFirstTexturedSpriteNode.physicsBody!.allowsRotation = false
        myFirstTexturedSpriteNode.physicsBody!.restitution = 1.0
        
        
        blueBox.physicsBody = SKPhysicsBody(rectangleOf: blueBox.size)
//        blueBox.physicsBody!.allowsRotation = false
        blueBox.physicsBody!.restitution = 1.0
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
////        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0))
//        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0)) {
//            self.myFirstTexturedSpriteNode.position = .zero
//        }
////        blueBox.run(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0))
//        if !blueBox.hasActions() {
////            blueBox.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)))
////            blueBox.run(SKAction.group([
////                SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0),
////                SKAction.scale(by: 0.9, duration: 2.0)
////            ]))
//            blueBox.run(SKAction.sequence([
//                SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0),
//                    SKAction.scale(by: 0.9, duration: 2.0)]))
//        } else {
//            blueBox.removeAllActions()
//        }
        
//        let actionKey = "Rotation"
//        if let _ = myFirstTexturedSpriteNode.action(forKey: actionKey) {
//            myFirstTexturedSpriteNode.removeAction(forKey: actionKey)
//        } else {
//            myFirstTexturedSpriteNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)), withKey: actionKey)
//        }
        
        
    }
    
    
}
