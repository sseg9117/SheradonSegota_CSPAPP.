//
//  ProgrammingController.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 10/26/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingController: UIViewController
{
    //MARK: UI Components

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode  = .resizeFill
        gameView.presentScene(gameScene)
    }
    
}
