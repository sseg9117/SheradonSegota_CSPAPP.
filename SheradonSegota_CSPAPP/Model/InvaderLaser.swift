//
//  InvaderLaser.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/7/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class InvaderBullet: Projectile
{
    override init(imageName: String, bulletSound:String?)
    {
        super.init(imageName: imageName, bulletSound: bulletSound)
        
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    public func fireBullet(scene: SKScene) -> Void
    {
        
    }
    
}
