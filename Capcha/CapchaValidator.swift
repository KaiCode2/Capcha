//
//  CapchaValidatorType.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit

protocol CapchaValidatorType {
    func validate(capcha: CapchaType, attempt: String) -> Bool
}


protocol CapchaDelegate {
    func pass()
    func fail()
}

struct CapchaValidator: CapchaValidatorType {
    let delegate: CapchaDelegate

    func validate(capcha: CapchaType, attempt: String) -> Bool {
        if capcha.answer == attempt {
            delegate.pass()
            return true
        }
        delegate.fail()
        return false
    }
}
