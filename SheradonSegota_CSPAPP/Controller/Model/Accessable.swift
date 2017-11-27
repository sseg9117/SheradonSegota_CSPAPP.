//
//  Accessable.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 11/20/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import Foundation
public protocol Accessable
{
    var accessState : Bool {get set}
    func access()-> Void
    func isAccesed()-> Bool
}
