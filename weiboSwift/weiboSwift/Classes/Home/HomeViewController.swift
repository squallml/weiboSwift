//
//  HomeViewController.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/6.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    // MARK:- 懒加载属性
    private lazy var titleBtn:TitleButton = TitleButton()

    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorView.addRotationAnim()
        
        // 没有登录时返回
        if !isLogin{
            return
        }
        
        // 设置导航栏内容
        setupNavigationBar()
    }

    
}

// MARK:- 设置UI界面
extension HomeViewController{
    private func setupNavigationBar(){
        // 左Item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "navigationbar_friendattention")
        
        //  右Item
        navigationItem.rightBarButtonItem = UIBarButtonItem(imageName: "navigationbar_pop")
        
        // 设置 titleView
        navigationItem.titleView = titleBtn
        titleBtn.setTitle("胡锦龙", forState: .Normal)
        titleBtn.addTarget(self, action: #selector(HomeViewController.titleBtnClick(_:)), forControlEvents: .TouchUpInside)
    }
}

// MARK:- 事件监听的函数
extension HomeViewController{
    @objc private func titleBtnClick(titleBtn:UIButton){
        titleBtn.selected = !titleBtn.selected
        
        // 创建弹出View
        let popoverVc = PopoverViewController()
        popoverVc.modalPresentationStyle = .Custom
        presentViewController(popoverVc, animated: true, completion: nil)
        

    }
}
