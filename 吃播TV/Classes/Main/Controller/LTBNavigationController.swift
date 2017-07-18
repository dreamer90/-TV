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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }

}
