//
//  LTBPageView.swift
//  LTBPageView
//
//  Created by LTBfsoft on 2017/7/20.
//  Copyright © 2017年 LvJing. All rights reserved.
//

import UIKit

class LTBPageView: UIView {
    
    // MARK: 定义属性
    fileprivate var titles : [String]!
    fileprivate var style : LTBTitleStyle!
    fileprivate var childVcs : [UIViewController]!
    fileprivate weak var parentVc : UIViewController!
    
    fileprivate var titleView : LTBTitleView!
    fileprivate var contentView : LTBContentView!
    
    // MARK: 自定义构造函数
    init(frame: CGRect, titles : [String], style : LTBTitleStyle, childVcs : [UIViewController], parentVc : UIViewController) {
        super.init(frame: frame)
        
        assert(titles.count == childVcs.count, "标题&控制器个数不同,请检测!!!")
        self.style = style
        self.titles = titles
        self.childVcs = childVcs
        self.parentVc = parentVc
        parentVc.automaticallyAdjustsScrollViewInsets = false
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// MARK:- 设置界面内容
extension LTBPageView {
    fileprivate func setupUI() {
        let titleH : CGFloat = 44
        let titleFrame = CGRect(x: 0, y: 0, width: frame.width, height: titleH)
        titleView = LTBTitleView(frame: titleFrame, titles: titles, style : style)
        titleView.delegate = self
        addSubview(titleView)
        
        let contentFrame = CGRect(x: 0, y: titleH, width: frame.width, height: frame.height - titleH)
        contentView = LTBContentView(frame: contentFrame, childVcs: childVcs, parentViewController: parentVc)
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        contentView.delegate = self
        addSubview(contentView)
    }
}


// MARK:- 设置LTBContentView的代理
extension LTBPageView : LTBContentViewDelegate {
    func contentView(_ contentView: LTBContentView, progress: CGFloat, sourceIndex: Int, targetIndex: Int) {
        titleView.setTitleWithProgress(progress, sourceIndex: sourceIndex, targetIndex: targetIndex)
    }
    
    func contentViewEndScroll(_ contentView: LTBContentView) {
        titleView.contentViewDidEndScroll()
    }
}


// MARK:- 设置LTBTitleView的代理
extension LTBPageView : LTBTitleViewDelegate {
    func titleView(_ titleView: LTBTitleView, selectedIndex index: Int) {
        contentView.setCurrentIndex(index)
    }
}

