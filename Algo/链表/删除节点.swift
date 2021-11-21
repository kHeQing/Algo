//
//  删除节点.swift
//  Algo
//
//  Created by HeQing on 2021/11/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class RemoveNode {
    
    func removeNodel(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        let dummy = ListNode()
        dummy.next = head
        
        var cur = dummy
        
        while let curNext = cur.next {
            
            if curNext.val == val {
                cur.next = curNext.next
            } else {
                cur = curNext
            }
        }
        
        return dummy.next
    }
    
}
