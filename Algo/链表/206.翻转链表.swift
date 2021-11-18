//
//  206.翻转链表.swift
//  Algo
//
//  Created by HeQing on 2021/9/7.
//  Copyright © 2021 hq. All rights reserved.
//

class 翻转链表 {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else {
            return nil
        }

        var pre: ListNode? = nil
        var cur: ListNode? = head
        
        while cur != nil {
            let temp = cur?.next // 保存一下 cur的下一个节点，因为接下来要改变cur->next
            cur?.next = pre // 翻转操作
            pre = cur // 更新pre 和 cur指针
            cur = temp
        }
        
        return pre
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        // 和双指针法初始化是一样的逻辑
//        var pre: ListNode? = nil
//        var cur: ListNode? = head
        return reverse(nil, head)
    }
    
    func reverse(_ pre: ListNode?, _ cur: ListNode?) -> ListNode? {
        
        guard let cur = cur else {
            return pre
        }

        let temp = cur.next
        cur.next = pre
        // 可以和双指针法的代码进行对比，如下递归的写法，其实就是做了这两步
//        pre = cur
//        cur = temp
//        return reverse(pre, cur)
        return reverse(cur, temp)
    }
    
}
