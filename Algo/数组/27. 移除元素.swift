//
//  27. 移除元素.swift
//  Algo
//
//  Created by HeQing on 2021/11/9.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class RemoveElement {
    
    // 给定 nums = [3,2,2,3], val = 3, 函数应该返回新的长度 2
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {

        var slow = 0
        var fast = 0

        while fast < nums.count {
            if nums[fast] != val {
                nums[slow] = nums[fast]
                slow += 1
            }
            fast += 1
        }
        return slow
                
//        var i = 0
//        for num in nums {
//            if num != val {
//                nums[i] = num
//                i += 1
//            }
//        }
//        return i
    }
}
