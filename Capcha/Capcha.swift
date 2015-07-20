//
//  Capcha.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit


enum CapchaQuestionType {
    case Numbers
    case Letter
    case All
}

struct Capcha {
    let answer: String
    let type: CapchaQuestionType
    let length: Int
    
    let validator: CapchaValidator
    
    
    init(answer: String, type: CapchaQuestionType, length: Int, validator: CapchaValidator) {
        self.answer = answer
        self.type = type
        self.length = length
        self.validator = validator
    }
}
