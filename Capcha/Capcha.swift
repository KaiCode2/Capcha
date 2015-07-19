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
    allowedAttempt = 1
}

enum CapchaQuestionType {
    case numbers
    case letter
    case all
}

struct Capcha: CapchaType {
    init(answer: String, type: CapchaQuestionType, length: Int, validator: CapchaValidatorType) {
        self.answer = answer
        self.type = type
        self.length = length
        self.validator = validator
    }
}
