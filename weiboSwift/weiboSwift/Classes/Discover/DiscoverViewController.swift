//
//  DiscoverViewController.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/6.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class DiscoverViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        visitorView.setupVisitorViewInfo("visitordiscover_image_message", title: "登录后，别人评论你的微博，给你发消息，都会在这里收到通知")
    }

   
}
