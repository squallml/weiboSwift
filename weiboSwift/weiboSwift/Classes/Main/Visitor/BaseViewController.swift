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
        
    }
}

// MARK:- 访客视图模式
extension BaseViewController{
    private func setupVisitorView(){
        view = visitorView
    }
}