//
//  LevelCompleteScene.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class LevelCompleteScene: SKScene
{

    override public func didMove(to view: SKView) -> Void
    {
        self.backgroundColor = SKColor.black
        let startGameButton = SKSpriteNode(imageNamed: "nextLevel")
        startGameButton.position = CGPoint(x:size.width/2, y:size.height/2 - 100)
        startGameButton.name = "nextlevel"
        addChild(startGameButton)
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) -> Void
    {
        let touch = touches.first
        let touchLocation = touch?.location(in: self)
        let touchedNode = self.atPoint(touchLocation!)
        if(touchedNode.name == "nextlevel")
        {
            let gameOverScene = GameScene(size: size)
            gameOverScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontal(withDuration: 0.5)
            view?.presentScene(gameOverScene,transition: transitionType)
        }
    }
}
