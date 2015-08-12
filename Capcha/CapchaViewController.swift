//
//  CapchaViewController.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit

protocol CapchaDataSource {
    var capcha: Capcha? { get set }
}

class CapchaViewController: UIViewController, CapchaDelegate, CapchaDataSource {
    @IBOutlet weak var capchaView: CapchaView!
    @IBOutlet weak var entryField: UITextField!
    
    var capcha: Capcha?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        capchaView.keyword = capcha!.answer
        capchaView.setup()
    }
    
    
    @IBAction func confirm(sender: AnyObject) {
        print(capcha?.validator.validate(capcha!, attempt: entryField.text!))
    }
}
