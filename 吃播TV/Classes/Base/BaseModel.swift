//
//  BaseModel.swift
//  吃播TV
//
//  Created by 李太白 on 2017/7/23.
//  Copyright © 2017年 李太白. All rights reserved.
//

import UIKit

class BaseModel: NSObject {

    override init() {
        
    }
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
