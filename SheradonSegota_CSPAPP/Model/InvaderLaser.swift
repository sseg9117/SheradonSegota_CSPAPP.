//
//  InvaderLaser.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/7/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class InvaderLaser: Projectile
{
    override init(imageName: String, bulletSound:String?)
    {
        super.init(imageName: imageName, bulletSound: bulletSound)
        self.physicsBody = SKPhysicsBody(texture: self.texture!, size:self.size)
        self.physicsBody?.isDynamic = true
        self.physicsBody?.usesPreciseCollisionDetection = true
        self.physicsBody?.categoryBitMask = CollisionCategories.InvaderBullet
        self.physicsBody?.contactTestBitMask = CollisionCategories.Player
        self.physicsBody?.collisionBitMask = 0x0
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    public func fireBullet(scene: SKScene) -> Void
    {
        
    }
    
}
