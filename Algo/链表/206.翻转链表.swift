//
//  206.翻转链表.swift
//  Algo
//
//  Created by HeQing on 2021/9/7.
//  Copyright © 2021 hq. All rights reserved.
//

class 翻转链表 {
    
    // 迭代方法
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else { return nil }
        
        // 前节点
        var pre: ListNode? = nil
        // 当前节点
        var current: ListNode? = head
        // 临时节点
        var temp: ListNode? = nil
        
        while current != nil {
            // 临时节点，暂存当前节点的下一个节点，用于后移
            temp = current?.next
            // 将当前节点的next 指向前节点
            current?.next = pre
            // 前节点后移
            pre = current
            // 当前节点后移
            current = temp
        }
        
        return pre
    }
    
    // 递归方法
    func reverseList2(_ head: ListNode?) -> ListNode? {
        return reverse(nil, head)
    }
    
    func reverse(_ pre: ListNode?, _ current: ListNode?) -> ListNode? {
        
        guard let current = current else {
            return pre
        }
        
        let next = current.next
        current.next = pre
        
        return reverse(current, next)
    }
}
