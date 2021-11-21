//
//  142. 环形链表 II.swift
//  Algo
//
//  Created by HeQing on 2021/11/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class DetectCycle {
    
    func detectCycle(_ head: ListNode?) -> ListNode? {
        
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            
            slow = slow?.next
            fast = fast?.next?.next
            // 快慢指针相遇，此时从head 和 相遇点，同时查找直至相遇
            if slow === fast {
                
                var index1 = head
                var index2 = fast
                
                while index1 !== index2 {
                    
                    index1 = index1?.next
                    index2 = index2?.next
                }
                // 返回环的入口
                return index1
            }
        }
        
        return nil
    }
}
