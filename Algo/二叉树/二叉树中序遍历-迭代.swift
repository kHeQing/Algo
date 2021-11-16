//
//  二叉树中序遍历-迭代.swift
//  Algo
//
//  Created by HeQing on 2021/11/7.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class midOrderTraversal {
    
    func traversal(_ root: TreeNode?) -> [Int] {
        
        var stack = [TreeNode]()
        var result = [Int]()
        
        guard let root = root else {
            return result
        }
        
        var cur: TreeNode? = root
        
        while cur != nil && !stack.isEmpty {
            
            if cur != nil {
                stack.append(cur!)
                cur = cur?.left
            } else {
                cur = stack.removeLast()
                result.append(cur!.val)
                cur = cur?.right
            }
            
        }
        
        return result
    }
    
    func 前traversal(_ root: TreeNode?) -> [Int] {
        
        var stack = [TreeNode]()
        var result = [Int]()
        
        guard let root = root else {
            return result
        }

        
        stack.append(root)
        
        while !stack.isEmpty {
            
            let cur = stack.removeLast()
            result.append(cur.val)
            
            if let left = cur.left {
                stack.append(left)
            }
            if let right = cur.right {
                stack.append(right)
            }
        }
        
        return result
    }
    
    // 左右中
    func 后traversal(_ root: TreeNode?) -> [Int] {
        
        var stack = [TreeNode]()
        var result = [Int]()
        
        guard let root = root else {
            return result
        }
        
        stack.append(root)
        
        while !stack.isEmpty {
            // 中
            let cur = stack.removeLast()
            result.append(cur.val)
            // 右
            if let right = cur.right {
                stack.append(right)
            }
            // 左
            if let left = cur.left {
                stack.append(left)
            }
        }
        // 翻转 左中右
        result.reverse()
        
        return result
    }
}
