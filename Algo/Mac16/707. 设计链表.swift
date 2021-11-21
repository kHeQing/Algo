//
//  707. 设计链表.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/16.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation


class ListNodee {
    
    var value: Int?
    var next: ListNodee?
    init(_ val: Int) {
        self.value = val
    }
}

class MyLinkedList {

    var dummyNode: ListNodee?
    var size: Int
    
    init() {
        dummyNode = ListNodee(0)
        size = 0
    }
    
    func get(_ index: Int) -> Int {

        if index >= size || index < 0 {
            return -1
        }
        
        var currentNode = dummyNode?.next
        var currentIndex = index
        
        while currentIndex > 0 {
            currentNode = currentNode?.next
            currentIndex -= 1
        }
        
        return currentNode?.value ?? -1
        
    }
    
    func addAtHead(_ val: Int) {

        let head = ListNodee(val)
        head.next = dummyNode?.next
        dummyNode?.next = head
        size += 1
    }
    
    func addAtTail(_ val: Int) {

        let tail = ListNodee(val)
        
        var cur = dummyNode
        
        while cur?.next != nil {
            cur = cur?.next
        }
        
        cur?.next = tail
        
        size += 1
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {

        if index < 0 || index > size {
            return
        }
        
        let newNode = ListNodee(val)
        
        var curNode = dummyNode
        var curIndex = index
        
        while curIndex > 0 {
            
            curNode = curNode?.next
            curIndex -= 1
            
        }
        
        newNode.next = curNode?.next
        curNode?.next = newNode
        size += 1
    }
    
    func deleteAtIndex(_ index: Int) {

        if index < 0 || index >= size {
            return
        }
                
        var curNode = dummyNode
        
        for _ in 0..<index {
            curNode = curNode?.next
        }
        
        curNode?.next = curNode?.next?.next
        size -= 1
        
    }
}
