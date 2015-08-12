//
//  CapchaValidatorType.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit

@objc protocol CapchaDelegate {
    optional func pass()
    optional func fail()
}

struct CapchaValidator {
    let delegate: CapchaDelegate
    
    func validate(capcha: Capcha, attempt: String) -> Bool {
        if capcha.answer == attempt {
            delegate.pass!()
            return true
        }
        
        delegate.fail!()
        return false
    }
}
