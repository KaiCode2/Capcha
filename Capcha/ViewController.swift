//
//  ViewController.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CapchaDelegate {

    var capchaResult: Bool = false
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if capchaResult == false {
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let capchaVC = storyboard.instantiateViewControllerWithIdentifier(NSStringFromClass(CapchaViewController)) as! CapchaViewController
            let validator = CapchaValidator(delegate: self)
            capchaVC.capcha = Capcha(answer: "sdfhserha", type: .All, length: 5, validator: validator)
            presentViewController(capchaVC, animated: true, completion: nil)
        }
    }
    
    
    //MARK: CapchaDelegate
    
    func pass() {
        dismissViewControllerAnimated(true) { () -> Void in
            self.capchaResult = true
        }
    }
    
    func fail() {
        dismissViewControllerAnimated(true) { () -> Void in
            self.capchaResult = false
        }
    }
}

