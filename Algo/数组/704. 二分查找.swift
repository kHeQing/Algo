//
//  704. 二分查找.swift
//  Algo
//
//  Created by HeQing on 2021/11/9.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class Search {
    
    func search(_ nums: [Int], _ target: Int) -> Int {

        var start = 0
        var end = nums.count - 1
        
        while start <= end {
            
            let mid = start + (end - start) / 2
            let value = nums[mid]
            
            if value > target {
                end = mid - 1
            } else if value < target {
                start = mid + 1
            } else {
                return mid
            }
            
        }
        
        return -1
    }
}
