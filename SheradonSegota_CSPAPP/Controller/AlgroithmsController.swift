//
//  AlgroithmsController.swift
//  SheradonSegota_CSPAPP
//
//  Created by Segota, Sheradon on 10/26/17.
//  Copyright © 2017 Segota, Sheradon. All rights reserved.
//

import UIKit

public class AlgroithmsController: UIViewController {


    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the steps to creating a java project.\n"
        let stepOne :String = "Create you project.\n"
        let stepTwo :String = "Create all packages (controller, model, test, view)\n"
        let stepThree :String = "Create all classes in the packages (Runner, controller, Display, etc.)\n"
        let stepFour :String = "Put it on GitHub.\n"
        let stepFive :String = "Put just a little code in runner class.\n"
        let stepSix :String = "Then create a start method in controller.\n"
        let stepSeven :String = "Do your commit.\n"
        let stepEight :String = "Write you code.\n"
        let stepNine :String = "Keep committing.\n"
        let stepTen :String = "Keep Writing and committing.\n"
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString (string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "😎"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString (string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range:
                NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
