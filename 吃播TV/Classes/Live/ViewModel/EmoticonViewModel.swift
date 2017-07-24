//
//  EmoticonViewModel.swift
//  吃播TV
//
//  Created by 李太白 on 2017/7/24.
//  Copyright © 2017年 李太白. All rights reserved.
//

import UIKit

class EmoticonViewModel {
    static let shareInstance : EmoticonViewModel = EmoticonViewModel()
    lazy var packages : [EmoticonPackage] = [EmoticonPackage]()
    
    init() {
        packages.append(EmoticonPackage(plistName: "QHNormalEmotionSort.plist"))
        packages.append(EmoticonPackage(plistName: "QHSohuGifSort.plist"))
    }
}
