//
//  NibLoadable.swift
//  吃播TV
//
//  Created by 李太白 on 2017/7/24.
//  Copyright © 2017年 李太白. All rights reserved.
//  面向协议开发

import UIKit

protocol NibLoadable {
    
}

// swift中extension可以写实现方法
extension NibLoadable where Self : UIView {
    static func loadFromNib(_ nibname : String? = nil) -> Self {
        let loadName = nibname == nil ? "\(self)" : nibname!
        return Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as! Self
    }
}
