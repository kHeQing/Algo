//
//  206.翻转链表.swift
//  Algo
//
//  Created by HeQing on 2021/9/7.
//  Copyright © 2021 hq. All rights reserved.
//

class 翻转链表 {
    
    // 1. 迭代方法 （头插法）
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        guard let head = head else { return nil }
        
        // 新的头节点
        var newHead: ListNode? = nil
        // 遍历的指针节点
        var current: ListNode? = head
        
        while current != nil {
            // 临时节点，暂存当前节点的下一个节点，用于后移
            let temp = current?.next
            // 将当前节点的next 指向新的头节点
            current?.next = newHead
            // 新的头节点前移
            newHead = current
            // 当前节点后移
            current = temp
        }
        
        return newHead
    }
    
    // 2. 递归方法
    func reverseList2(_ head: ListNode?) -> ListNode? {
        
        // head 不存在 || head.next 不存在 返回head
        guard let head = head, let next = head.next else {
            return head
        }
        
        let last = reverseList2(next)
        next.next = head
        head.next = nil
        
        return last
    }
    
}
