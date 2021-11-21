//
//  209. 长度最小的子数组.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/14.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class MinSubArrayLen {
    
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {

        var i = 0
        var sum = 0
        var result = Int.max
        
        for j in 0..<nums.count {
            
            sum += nums[j]
            
            while sum >= target {
                result = min(result, j - i + 1)
                sum -= nums[i]
                i += 1
            }
        }
        
        return result == Int.max ? 0 : result
    }
    
}
