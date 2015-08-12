//
//  CapchaView.swift
//  
//
//  Created by kai don aldag on 2015-07-18.
//
//

import UIKit

@IBDesignable class CapchaView: UIView {
    var capcha: UIView {
        let capcha = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(capcha)
        return capcha
    }
    internal var keyword: String?
    
    init() {
        super.init(frame: CGRectZero)
        setup()
    }
    
    init(keyword: String) {
        self.keyword = keyword
        super.init(frame: CGRectZero)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setup() {
        //PLEASE NOTE: The Random function is to be substituted out for any other random function, arc4random appears to be deprecated in iOS 9
        
        let label = UILabel()
        label.frame = CGRect(x: self.frame.width/2 - 125, y: self.frame.height/2 - 50, width: 250, height: 100)
        label.text = keyword
        label.textColor = UIColor(red: CGFloat(random() % 100 / 100), green: CGFloat(random() % 100 / 100), blue: CGFloat(random() % 100 / 100), alpha: 1)
        
        let tempView = label.snapshotViewAfterScreenUpdates(true)
        
        
        let rotNum = CGFloat(random() % 100) / 100
        tempView.transform = CGAffineTransformMakeRotation(rotNum)
        
        let scalNum = CGFloat(random() % 100) / 100 + 0.5
        tempView.transform = CGAffineTransformMakeScale(scalNum, scalNum)
        
        capcha.addSubview(tempView)
    }
}
