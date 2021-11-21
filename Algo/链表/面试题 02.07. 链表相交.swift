//
//  面试题 02.07. 链表相交.swift
//  Algo
//
//  Created by HeQing on 2021/11/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class GetIntersectionNode {
    
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
        if headA == nil || headB == nil {
            return nil
        }
        
        var curA = headA
        var curB = headB
        
        var lenA = 0
        var lenB = 0
        
        while curA != nil { // 求链表A的长度
            curA = curA?.next
            lenA += 1
        }
        
        while curB != nil { // 求链表B的长度
            curB = curB?.next
            lenB += 1
        }
        
        curA = headA
        curB = headB
        
        // 让curA为最长链表的头，lenA为其长度
        if (lenB > lenA) {
            //1. swap (lenA, lenB);
            let tempL = lenA
            lenA = lenB
            lenB = tempL
            //2. swap (curA, curB);
            let tempNode = curA
            curA = curB
            curB = tempNode
        }
        
        // 求长度差
        let gap = lenA - lenB
        // 让curA和curB在同一起点上（末尾位置对齐）
        for _ in 0..<gap {
            curA = curA?.next
        }

        // 遍历curA 和 curB，遇到相同则直接返回 swift === 判断两个对象是否引用同一块内存
        for _ in 0..<lenB {

            if curA === curB {
                return curA
            }
            
            curA = curA?.next
            curB = curB?.next
        }
        
        return nil
    }
    
}
