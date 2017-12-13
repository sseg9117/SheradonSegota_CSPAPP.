//
//  DebugAccess.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 11/20/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import UIKit
public class DebugAccess : Accessable
{

    public func access() -> Void
    {
        print("Im accessable")
        accessState = true
    }
    
    public func isAccesed() -> Bool
    {
        if(accessState)
        {
            print("accessed")
        }
        else
        {
            print("Not accessed")
        }
        return accessState
        
    }
    
    private var accessColor :UIColor
    public var accessState: Bool
    
    public init()
    {
        self.accessColor = UIColor()
        self.accessState = false
    }
}
