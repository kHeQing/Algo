//
//  二分查找.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/16.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 二分 {
    
    func search(_ num: [Int], _ target: Int) -> Int {
        
        var left = 0
        var right = num.count
        
        while left < right {
            
            let mid = left + (right - left) / 2
            
            if num[mid] < target {
                
                left = mid + 1
                
            } else if num[mid] > target  {
                
                right = mid
                
            } else {
                
                return mid
            }
            
        }
        
        return -1
    }
    
    func remove(_ num: inout [Int], _ value: Int) {
        
        var slow = 0
        
        for fast in 0..<num.count {
            
            if num[fast] != value {
                
                num[slow] = num[fast]
                slow += 1
            }
        }
        
    }
    
}

class ListNode2 {
    
    var value: Int?
    var next: ListNode2?

    init(_ val: Int) {
        self.value = val
    }
}

class Remove {
    
    func removeNode(_ head: ListNode2?, target: Int) -> ListNode2? {
        
        let dummyModel = ListNode2(0)
        dummyModel.next = head
        
        var currentNode = dummyModel
        
        while let curNext = currentNode.next {
            
            if curNext.value == target {
                
                currentNode.next = curNext.next
            } else {
                currentNode = curNext
            }
        }
        
//        while currentNode.next != nil {
//
//            if currentNode.next!.value == target {
//
//                currentNode.next = currentNode.next!.next
//            } else {
//                currentNode = currentNode.next!
//            }
//        }
        
        return dummyModel.next
    }
    
}
