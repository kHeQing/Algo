//
//  19.删除链表的倒数第N个节点.swift
//  Algo
//
//  Created by HeQing on 2021/11/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class RemoveNthFromEnd{
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        if n == 0 {
            return head
        }
        
        let dummy = ListNode()
        dummy.next = head
        
        var slow: ListNode? = dummy
        var fast: ListNode? = dummy

        for _ in 0..<n {
            fast = fast?.next
        }
        
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        slow?.next = slow?.next?.next
        return dummy.next
    }
}
