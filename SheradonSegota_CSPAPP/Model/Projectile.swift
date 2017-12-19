//
//  Laser.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/7/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class Projectile: SKSpriteNode
{

    init(imageName: String, bulletSound: String?)
    {
        let texture = SKTexture(imageNamed: imageName)
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        if(bulletSound != nil)
        {
            run(SKAction.playSoundFileNamed(bulletSound!, waitForCompletion: false))
        }
    }
    
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
}
