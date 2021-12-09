//
//  202. 快乐数.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/18.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class IsHappy {
    
    func isHappy(_ n: Int) -> Bool {
        
        var set = Set<Int>()
        var num = n
        
        while true {
            
            let sum = getSum(num)
            
            if sum == 1 {
                return true
            }
            // 如果这个sum曾经出现过，说明已经陷入了无限循环了
            if set.contains(sum) {
                return false
            } else {
                set.insert(sum)
            }
            
            num = sum
        }
    }
    
    func getSum(_ num: Int) -> Int {
        
        var sum = 0
        var num = num
        
        while num > 0 {
            let temp = num % 10
            sum += temp * temp
            num /= 10
        }
        
        return sum
        
    }
}



