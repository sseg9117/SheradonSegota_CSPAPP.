//
//  DeathScene.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 12/19/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import UIKit
import Foundation
import SpriteKit

class DeathScene : SKScene
{
    
    override public func didMove(to view: SKView) -> Void
    {
        self.backgroundColor = SKColor.green
        
        let gameOver = SKLabelNode(text: "you have died!")
        gameOver.name = "game over"
        gameOver.fontSize = 65
        gameOver.fontColor = SKColor.red
        gameOver.position = CGPoint(x: frame.midX, y: frame.midY)
        
        addChild(gameOver)
        
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with ev: UIEvent?) -> Void
    {
        let touch = touches.first
        let touchLocation = touch?.location(in: self)
        let touchedNode = self.atPoint(touchLocation!)
        if(touchedNode.name == "game over")
        {
            let newGameScene = GameScene(size: size)
            newGameScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontal(withDuration: 0.5)
            view?.presentScene(newGameScene,transition: transitionType)
            
        }
    }
}
