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

class Solution3 {
    func strToInt(_ str: String) -> Int {
        
        if str.count <= 0 {
            return 0
        }
        let arr: [Character] = Array(str)
        var i = 0
        var tag = 1
        var res = 0
        // 1. 去除前面空格
        while arr[i] == " " {
            if i == arr.count - 1 {
                return 0
            }
            i += 1
        }
        // 2. 判断负号替换标识
        if arr[i] == "-" {
            tag = -1
        }
        // 3. 去除符号位
        if arr[i] == "-" || arr[i] == "+" {
            i += 1
        }
        
        while i < arr.count && arr[i].isNumber {
            
            let val = Int(String(arr[i]))!
            res = res * 10 + val
            
            if res > Int(Int32.max) {
                return tag == 1 ? Int(Int32.max) : Int(Int32.min)
            }
            
            i += 1
        }
        return res * tag
    }
}
