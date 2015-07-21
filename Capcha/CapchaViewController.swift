//
//  CapchaViewController.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit

protocol CapchaDataSource {
    var capcha: Capcha { get set }
    
    init(capcha: Capcha)
}

class CapchaViewController: UIViewController, CapchaDelegate, CapchaDataSource {
    @IBOutlet weak var capchaView: CapchaView!
    @IBOutlet weak var entryField: UITextField!
    
    var capcha: Capcha
    
    required init(capcha: Capcha) {
        self.capcha = capcha
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func confirm(sender: AnyObject) {
        let validator = CapchaValidator(delegate: self)
        validator.validate(capcha, attempt: entryField.text!)
    }
    
}
