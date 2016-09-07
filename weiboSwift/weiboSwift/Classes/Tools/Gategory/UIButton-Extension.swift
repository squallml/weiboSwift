//
//  UIButton-Extension.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/7.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

extension UIButton{
    convenience init (imageName : String,bgImageName : String) {
        self.init()
        setImage(UIImage(named: imageName), forState: .Normal)
        setImage(UIImage(named: imageName+"_highlighted"), forState: .Highlighted)
        setBackgroundImage(UIImage(named: bgImageName), forState: .Normal)
        setBackgroundImage(UIImage(named: bgImageName+"_highlighted"), forState: .Highlighted)
        sizeToFit()
    }
}