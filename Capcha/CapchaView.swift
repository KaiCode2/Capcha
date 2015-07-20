//
//  CapchaView.swift
//  
//
//  Created by kai don aldag on 2015-07-18.
//
//

import UIKit

@IBDesignable class CapchaView: UIView {
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            let label = UILabel()
            
            var atrString = ""
            atrString += keyword //TODO: iterate over letters in keyword and apply random fonts and sizes
            label.text = atrString
            
            let labelImage = UIImage() //TODO: take screen shot of the label then apply translations, morphs, ETC.
            
            imageView.image = labelImage
        }
    }
    
    @IBInspectable var keyword: String = ""
}
