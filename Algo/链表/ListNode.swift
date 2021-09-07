//
//  ListNode.swift
//  Algo
//
//  Created by HeQing on 2021/9/7.
//  Copyright © 2021 hq. All rights reserved.
//

class ListNode {
    
    var val: Int
    var next: ListNode?
    
    init() {
        val = 0
        next = nil
    }
    
    init(_ val: Int) {
        self.val = val
        next = nil
    }
    
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}
