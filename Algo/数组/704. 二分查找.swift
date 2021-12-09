//
//  704. 二分查找.swift
//  Algo
//
//  Created by HeQing on 2021/11/9.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class Search {
    
    /// 左闭右闭
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
    
    /// 左闭右开
    func search2(_ nums: [Int], _ target: Int) -> Int {
        
        var left = 0
        var right = nums.count
        
        while left < right {
            
            let mid = left + (right - left) / 2
            
            if nums[mid] < target {
                left = mid + 1
            } else if nums[mid] > target {
                right = mid
            } else {
                return mid
            }
        }

        return -1
    }
    
    // 找出从左到右的第一个位置， [1,2,2,4] target = 2
    func search3(_ nums: [Int], _ target: Int) -> Int {
        
        var l = 0
        var r = nums.count
        
        while l < r {
            var mid = l + (r - l) / 2
            if nums[mid] < target {
                l = mid + 1
            } else if nums[mid] > target {
                r = mid
            } else {
                // 因为数组是有序的 相等的在一起连续排列
                while mid != 0 && nums[mid-1] == nums[mid] {
                    mid -= 1
                }
                return mid
            }
        }
        return -1
    }
}
