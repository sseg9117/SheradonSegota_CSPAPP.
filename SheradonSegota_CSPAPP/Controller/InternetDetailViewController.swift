//
//  InternetDetailViewController.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 11/29/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController : UIViewController
{
    //MARK: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Do any additional setup af loading the view.
        
    }
    
    private func setup() -> Void
    {
        
    }
}


