//
//  StartScene.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 11/19/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class StartScene : SKScene
{
    override public func didMove(to view: SKView)
    {
        backgroundColor = UIColor.darkGray
        let startButton = SKSpriteNode(imageNamed: "Death Star")
        startButton.position = CGPoint(x: size.width / 2, y: size.height / 2 - 100)
        startButton.name = "start"
        let starField = SKEmitterNode(fileNamed: "StarField")
        starField?.position = CGPoint(x:size.width/2,y:size.height/2)
        starField?.zPosition = -1000
        addChild(starField!)
        addChild(startButton)
    }
    
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
        
    }
}
