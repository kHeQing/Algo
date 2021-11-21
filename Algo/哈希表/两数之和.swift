//
//  两数之和.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/18.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for i in 0..<nums.count {
            
            let curValue = nums[i]
            let temp = target - curValue
            
            if let index = map[temp] {
                return [i, index]
            }
            map[curValue] = i
        }
        return []
    }
}
