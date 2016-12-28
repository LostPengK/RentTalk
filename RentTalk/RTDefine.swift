//
//  RTDefine.swift
//  RentTalk
//
//  Created by pengkang on 2016/12/26.
//  Copyright © 2016年 pengkang. All rights reserved.
//


import UIKit
import Foundation


class RTDefine: NSObject {
    public let defaultColor = UIColor.lightText
    public let cellDefaultColor = UIColor.lightGray
//    public let defaultTextColor =
    
//    open func RGBColor(r:,g,b,_: a) -> UIColor? {
//        
//    }
    public func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}


