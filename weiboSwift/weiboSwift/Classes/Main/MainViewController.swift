//
//  MainViewController.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/6.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    // MARK:- 懒加载属性
    private lazy var composeBtn : UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")
    
    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupComposeBtn()
    }
    
    
}
// MARK:- 设置UI界面
extension MainViewController{
    
    /// 设置发布按钮
    private func setupComposeBtn(){
        tabBar.addSubview(composeBtn)
        composeBtn.center = CGPointMake(tabBar.center.x, tabBar.bounds.size.height * 0.5)
    }
    
    
}

