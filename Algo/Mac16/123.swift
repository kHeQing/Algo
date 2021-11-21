//
//  123.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/14.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class SortedSquares2 {
    
    func sortedSquares(_ nums: [Int]) -> [Int] {

        var left = 0
        var right = nums.count - 1
        
        var result = [Int](repeating: 0, count: nums.count)
        var index = result.count - 1
        
        
        while index > 0 {
            
            let leftValue = nums[left] * nums[left]
            let rightValue = nums[right] * nums[right]

            if leftValue > rightValue {
                result[index] = leftValue
                left += 1
            } else {
                result[index] = rightValue
                right -= 1
            }
            
            index -= 1
        }
        
        return result
    }
}
