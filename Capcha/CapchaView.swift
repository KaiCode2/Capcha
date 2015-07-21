//
//  CapchaView.swift
//  
//
//  Created by kai don aldag on 2015-07-18.
//
//

import UIKit

@IBDesignable class CapchaView: UIView {

    @IBOutlet weak var capchaImage: UIView! {
        didSet {
            let label = UILabel()
            
            var atrString = ""
            atrString += keyword //TODO: iterate over letters in keyword and apply random fonts and sizes
            
            label.text = atrString
            let tempView = label.snapshotViewAfterScreenUpdates(true) //TODO: take screen shot of the label then apply translations, morphs, ETC.
            tempView.transform = CGAffineTransformMakeRotation(CGFloat(arc4random() % 90 - 45))
            
            capchaImage = tempView
        }
    }
    
    internal var keyword: String = ""
}
