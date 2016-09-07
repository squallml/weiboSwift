//
//  VisitorView.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/8.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    // MARK:- 提供快速从xib创建类方法
    class func visitorView() -> VisitorView{
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).first as! VisitorView
    }
}
