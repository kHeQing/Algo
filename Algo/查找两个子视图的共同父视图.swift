//
//  查找两个子视图的共同父视图.swift
//  Algo
//
//  Created by HeQing on 2021/9/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Cocoa

class 查找两个子视图的共同父视图 {

    // 查找共同父视图
    func findCommonSuperviews(_ view1: NSView, view2: NSView) -> [NSView] {
        
        let view1Superviews = findSuperviews(view1)
        let view2Superviews = findSuperviews(view2)
        
        var commonSuperViews = [NSView]()
        
        var p = view1Superviews.count - 1
        var q = view2Superviews.count - 1
        
        while p >= 0 && q >= 0 {
            
            if view1Superviews[p] == view2Superviews[q] {
                commonSuperViews.append(view1Superviews[p])
                p -= 1
                q -= 1
            } else {
                break
            }
        }
        
        return commonSuperViews
        
    }
    
    
    // 查找父视图
    func findSuperviews(_ view: NSView) -> [NSView] {
        
        var array = [NSView]()
        var temp = view.superview
        
        while temp != nil {
            
            array.append(temp!)
            temp = temp!.superview
        }
        
        return array
        
    }
    
}
