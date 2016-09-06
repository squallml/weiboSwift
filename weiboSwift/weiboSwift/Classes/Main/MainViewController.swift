//
//  MainViewController.swift
//  weiboSwift
//
//  Created by 胡锦龙 on 16/9/6.
//  Copyright © 2016年 魔龙. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 获取json数据
        guard let jsonPath = NSBundle.mainBundle().pathForResource("MainVCSettings.json", ofType: nil) else{
            print("没有获取到对应的文件路径")
            return
        }
        
        guard let jsonData = NSData(contentsOfFile: jsonPath) else{
            print("没有获取到json文件中数据")
            return
        }
        
        guard let anyObject = try? NSJSONSerialization.JSONObjectWithData(jsonData, options: .MutableContainers) else{
            return
        }
        
        guard let dictArray = anyObject as? [[String:AnyObject]] else{
            return
        }
//        print(dictArray)
        
        for dict in dictArray{
            guard let vcName = dict["vcName"] as? String else{
                continue
            }
            
            guard let imageName = dict["imageName"] as? String else{
                continue
            }
            
            guard let title = dict["title"] as? String else{
                continue
            }
            
            //  添加子控制器
            addChildViewController(vcName, title: title, imageName: imageName)
        }
    }
    
    // 创建子控制器函数
    private func addChildViewController(childVcName: String,title :String,imageName : String) {
        // 1.获取命名空间
        guard let nameSpace = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as? String else{
            print("没有获取命名空间")
            return
        }
        
        // 2.根据字符串获取对应Class
        guard let childVcClass = NSClassFromString(nameSpace + "." + childVcName) else{
            print("没有获取对应Class")
            return
        }
        
        // 3.将对应的AnyObject转成控制器的类型
        guard let childVType = childVcClass as? UIViewController.Type else{
            print("没有获取对应控制器的类型")
            return
        }
        
        // 4.创建对应的控制器对象
        let childVc = childVType.init()
        
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let childNav = UINavigationController(rootViewController: childVc)
        addChildViewController(childNav)
    }
    
}
