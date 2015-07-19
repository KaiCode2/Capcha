//
//  Capcha.swift
//  Capcha
//
//  Created by kai don aldag on 2015-07-18.
//  Copyright (c) 2015 kai.don.aldag. All rights reserved.
//

import UIKit

protocol CapchaType {
    var answer: String { get }
    var type: CapchaQuestionType { get }
    var length: Int { get }
    var allowedAttempts: Int { get }
    
    var validator: CapchaValidatorType { get }
}

extension CapchaType {
    var allowedAttempts: Int { return 1 }
}

enum CapchaQuestionType {
    case Numbers
    case Letter
    case All
}

struct Capcha: CapchaType {
    var answer: String
    var type: CapchaQuestionType
    var length: Int
    
    var validator: CapchaValidatorType
    
    
    init(answer: String, type: CapchaQuestionType, length: Int, validator: CapchaValidatorType) {
        self.answer = answer
        self.type = type
        self.length = length
        self.validator = validator
    }
}
