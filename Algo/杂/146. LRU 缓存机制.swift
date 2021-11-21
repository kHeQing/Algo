//
//  146. LRU 缓存机制.swift
//  Algo
//
//  Created by HeQing on 2021/11/15.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class LRUCache {
    
    var map = [Int: DoubleListNode]()
    var list = DoubleLinkList()
    var capacity = 0
    
    init(_ capacity: Int) {
        
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        
        guard let nodel = map[key] else {
            return -1
        }
        put(key, nodel.value)
        
        return nodel.value
    }
    
    func put(_ key: Int, _ value: Int) {
        
        let newNode = DoubleListNode(key, value)

        if map.keys.contains(key) {
            
            let existNode = map[key]
            
            map.removeValue(forKey: key)
            let _ = list.delete(existNode)
            
            map[key] = newNode
            list.addFirst(newNode)
            
        } else {
            
            if map.keys.count == capacity {
                let lastKey = list.deletelast()
                map.removeValue(forKey: lastKey)
            }
            
            map[key] = newNode
            list.addFirst(newNode)
        }
        
    }
    
}

/// 定义双向链表节点
class DoubleListNode {
    
    var key: Int
    var value: Int
    var prev: DoubleListNode?
    var next: DoubleListNode?
    
    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
    }
}

/// 定义双向链表
class DoubleLinkList {
    
    var head: DoubleListNode = DoubleListNode(0, 0)
    var tail: DoubleListNode = DoubleListNode(0, 0)
    
    init() {
        head.next = tail
        tail.prev = head
    }
    
    /// 插入首节点
    /// - Parameter node: 节点
    func addFirst(_ node: DoubleListNode?) {
        
        guard let node = node else {
            return
        }
        
        node.next = head.next
        node.prev = head
        
        head.next?.prev = node
        head.next = node
    }
    
    /// 删除节点
    /// - Parameter node: 节点
    /// - Returns: 返回删除的key
    func delete(_ node: DoubleListNode?) -> Int {
        
        guard let node = node else {
            return -1
        }
        
        node.prev?.next = node.next
        node.next?.prev = node.prev
        
        return node.key
    }
    
    /// 删除尾节点
    /// - Returns: 删除节点的key
    func deletelast() -> Int {
        
        return delete(tail.prev)
    }
}
