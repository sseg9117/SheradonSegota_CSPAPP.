//
//  Invader.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/6/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class Invader: SKSpriteNode
{
    var invaderRow : Int = 0
    var invaderCol : Int = 0
 
    
    //MARK: - Initializers
    public init()
    {
        let texture = SKTexture(imageNamed: "enemy1")
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        self.name = "invader"
        
        self.physicsBody = SKPhysicsBody(texture: self.texture!, size: self.size)
        self.physicsBody?.isDynamic = true
        self.physicsBody?.usesPreciseCollisionDetection = false
        self.physicsBody?.categoryBitMask = CollisionCategories.Invader
        self.physicsBody?.contactTestBitMask = CollisionCategories.PlayerBullet | CollisionCategories.Player
        self.physicsBody?.collisionBitMask = CollisionCategories.EdgeBody
        
    
    }
    // Required init must be provided by subclass
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    //MARK: - Invader methods section
    public func fireBullet(scene: SKScene) -> Void
    {
        let bullet = InvaderLaser(imageName: "laser",bulletSound: nil)
        bullet.position.x = self.position.x
        bullet.position.y = self.position.y - self.size.height/2
        scene.addChild(bullet)
        let moveBulletAction = SKAction.move(to:CGPoint(x:self.position.x,y: 0 - bullet.size.height), duration: 2.0)
        let removeBulletAction = SKAction.removeFromParent()
        bullet.run(SKAction.sequence([moveBulletAction,removeBulletAction]))
    }
}
