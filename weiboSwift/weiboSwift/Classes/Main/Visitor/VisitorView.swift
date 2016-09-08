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
    
    // MARK:- 控件的属性
    @IBOutlet weak var rottionView: UIImageView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    
    // MARK:- 自定义函数
    func setupVisitorViewInfo(iconName:String,title:String){
        iconView.image = UIImage(named: iconName)
        tipLabel.text = title
        rottionView.hidden = true
    }
    
    // MARK:- 旋转动画
    func addRotationAnim(){
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        
        rotationAnim.fromValue = 0
        rotationAnim.toValue = M_PI * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 10
        rotationAnim.removedOnCompletion = false
        
        rottionView.layer.addAnimation(rotationAnim, forKey: nil)
        
    }
}




















