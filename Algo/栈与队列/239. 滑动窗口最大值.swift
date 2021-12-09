//
//  239. 滑动窗口最大值.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/29.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 滑动窗口最大值 {
    
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        
        let queue = MyQueue()
        var res = [Int]()
        
        for i in 0..<k {
            queue.push(nums[i])
        }
        
        res.append(queue.front()!)
        
        for i in k..<nums.count {
            queue.pop(nums[i-k])
            queue.push(nums[i])
            res.append(queue.front()!)
        }
        
        return res
    }
    
    class MyQueue {
        
        var queue = [Int]()
        
        func pop(_ num: Int) {
            if !queue.isEmpty && num == front() {
                queue.removeFirst()
            }
        }
        
        func push(_ num: Int) {
            while !queue.isEmpty && num > queue.last! {
                queue.removeLast()
            }
            queue.append(num)
        }
        
        func front() -> Int? {
            return queue.first
        }
        
    }
    
}
