//
//  977.有序数组的平方.swift
//  Algo
//
//  Created by HeQing on 2021/11/9.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class SortedSquares {
    
    func sortedSquares(_ nums: [Int]) -> [Int] {

        var left = 0
        var right = nums.count - 1

        var result = [Int](repeating: 0, count: nums.count)
        var index = result.count - 1
        
        while index > 0 {
            
            let squareLeft = nums[left] * nums[left]
            let squareRight = nums[right] * nums[right]
            
            if squareLeft > squareRight {
                result[index] = squareLeft
                left += 1
            } else {
                result[index] = squareRight
                right -= 1
            }
            index -= 1
        }
        
        return result
    }
}
