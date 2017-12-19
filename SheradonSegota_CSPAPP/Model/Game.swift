//
//  Game.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 12/18/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//


import Foundation

public class Game : Winnable
{
    //MARK: winnable methods
    public var difficulty: Int = 8;
    public func isWinnable() -> Bool
    {
        return (difficulty <= 10)
    }
    public func addDifficulty()
    {
        difficulty += 1;
    }
}
