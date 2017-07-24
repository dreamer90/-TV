//
//  GiftPackage.swift
//  吃播TV
//
//  Created by 李太白 on 2017/7/24.
//  Copyright © 2017年 李太白. All rights reserved.
//

import UIKit

class GiftPackage: BaseModel {

    var t : Int = 0
    var title : String = ""
    var list : [GiftModel] = [GiftModel]()
    
    override func setValue(_ value: Any?, forKey key: String) {
        if key == "list" {
            if let listArray = value as? [[String : Any]] {
                for listDict in listArray {
                    list.append(GiftModel(dict: listDict))
                }
            }
        } else {
            super.setValue(value, forKey: key)
        }
    }
}
