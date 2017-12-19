//
//  Winnable.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 12/18/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import Foundation

public protocol Winnable
{
    var difficulty : Int {get set}
    func isWinnable() -> Bool
    func addDifficulty() -> Void
}
