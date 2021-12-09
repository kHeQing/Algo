//
//  347. 前 K 个高频元素.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/29.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 前K个高频元素 {
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        // [1,1,1,2,2,3]
        // [1:3,2:2,3:1]
        var map = [Int: Int]()
        for num in nums {
            map[num, default: 0] += 1
        }
        // [[3],[2],[1],[],[],[]]
        var freqArr = Array(repeating: [Int](), count: nums.count)
        for (key, value) in map {
            freqArr[value - 1].append(key)
        }
        // [3,2,1]
        var res = [Int]()
        for arr in freqArr {
            res += arr
        }
        return Array(res.reversed()[0 ..< k])
    }
    
}
