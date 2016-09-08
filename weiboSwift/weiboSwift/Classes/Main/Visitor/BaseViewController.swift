//
//  BaseViewController.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/8.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {
    
    // MARK:- 懒加载属性
    lazy var visitorView : VisitorView = VisitorView.visitorView()
    
    // MARK:- 定义变量
    var isLogin : Bool = false
    
    // MARK:- 系统回调函数
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigtionItems()
    }
}

// MARK:- 设置UI
extension BaseViewController{
    /// 设置访客视图
    private func setupVisitorView(){
        view = visitorView
        
        // 监听访客视图中的“注册“和”登录”点击事件
        visitorView.registerBtn.addTarget(self, action: #selector(BaseViewController.registerBtnClick), forControlEvents: .TouchUpInside)
        visitorView.loginBtn.addTarget(self, action: #selector(BaseViewController.loginBtnClick), forControlEvents: .TouchUpInside)
    }
    
    /// 设置导航栏左右的Item
    private func setupNavigtionItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .Plain, target: self, action: #selector(BaseViewController.registerBtnClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .Plain, target: self, action: #selector(BaseViewController.loginBtnClick))
    }
}


// MARK:- 事件监听
extension BaseViewController{
    @objc private func registerBtnClick(){
        print("registerBtnClick")
    }
    
    @objc private func loginBtnClick(){
        print("loginBtnClick")
    }
    
}


