//
//  24. 两两交换链表中的节点.swift
//  Algo
//
//  Created by HeQing on 2021/11/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class SwapPairs {
    
    // 此题必须画图
    func swapPairs(_ head: ListNode?) -> ListNode? {
        
        if head == nil || head?.next == nil {
            return head
        }

        let dummy: ListNode? = ListNode()
        dummy?.next = head
        
        var cur: ListNode? = dummy
        
        while cur?.next != nil && cur?.next?.next != nil {
            
            let temp1 = cur?.next
            let temp2 = cur?.next?.next?.next
            
            cur?.next = cur?.next?.next
            cur?.next?.next = temp1
            cur?.next?.next?.next = temp2
            
            cur = cur?.next?.next
            
        }
        
        return dummy?.next
    }
    
}
