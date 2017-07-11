//
//  Guides.swift
//  Prcess
//
//  Created by Alexey Chekanov on 7/10/17.
//  Copyright © 2017 Alexey Chekanov. All rights reserved.
//

import UIKit

class Guides {
    
    
    
    class UIElements {
        
    }
    
    enum MyColor {
        case navigationBarBackgroundColor
        case navigationTintCololr
    }
    
    
    
    
    
    
    let textAttributes: [String : Any] = [
        NSBaselineOffsetAttributeName : 0
        ,NSStrikethroughStyleAttributeName : 2
        ,NSStrikethroughColorAttributeName : UIColor.lightGray.withAlphaComponent(0.8)
    ]
    
    
    
    
}


extension UIView {
    
    var shaded: UIView {
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2.0, height: 6.0)
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 0.8
        
        return self
    }
    
}



extension Guides.MyColor {
    var value: UIColor {
        get {
            switch self {
            case .navigationBarBackgroundColor:
                return UIColor(red: 67/255, green: 173/255, blue: 247/255, alpha: 1.0)
            case .navigationTintCololr:
                return UIColor.white
            }
        }
    }
}


var a = Guides.MyColor.navigationBarBackgroundColor

