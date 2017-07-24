//
//  LTBNavigationController.swift
//  LTBTV
//
//  Created by 李太白 on 2017/7/17.
//  Copyright © 2017年 李太白. All rights reserved.
//

import UIKit

class LTBNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1.使用运行时, 打印手势中所有属性 (重写系统侧滑)
        guard let targets = interactivePopGestureRecognizer!.value(forKey:  "_targets") as? [NSObject] else { return }
        let targetObjc = targets[0]
        let target = targetObjc.value(forKey: "target")
        let action = Selector(("handleNavigationTransition:"))
        
        let panGes = UIPanGestureRecognizer(target: target, action: action)
        view.addGestureRecognizer(panGes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.hidesBottomBarWhenPushed = true
        super.pushViewController(viewController, animated: animated)
    }
}
