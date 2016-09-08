//
//  ProfileViewController.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/6.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       visitorView.setupVisitorViewInfo("visitordiscover_image_profile", title: "登录后，你的微博、相册、个人资料会显示在这里，展示给别人")
    }

   
}
