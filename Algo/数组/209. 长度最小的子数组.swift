//
//  209. 长度最小的子数组.swift
//  Algo
//
//  Created by HeQing on 2021/12/9.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class MinSubArrayLen {
    
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        
        var res = Int.max
        var l = 0
        var sum = 0

        for i in 0..<nums.count {
            sum += nums[i]
            while sum >= target {
                /// 返回数组长度 因此 +1
                res = min(res, i - l + 1)
                sum -= nums[l]
                l += 1
            }
        }
        
        return res == Int.max ? 0 : res
    }
}
