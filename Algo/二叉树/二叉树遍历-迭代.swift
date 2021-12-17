//
//  二叉树遍历-迭代.swift
//  Algo
//
//  Created by HeQing on 2021/12/13.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class BinaryTreeTraversal2 {
    
    /// 中左右 栈
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var res = [Int]()
        var stack = [TreeNode]()
        
        guard let root = root else {
            return res
        }
        
        stack.append(root)
        
        while !stack.isEmpty {
            
            let node = stack.removeLast()
            res.append(node.val)
            
            /// 先添加右
            if let right = node.right {
                stack.append(right)
            }
            /// 后添加左 出的时候先出左
            if let left = node.left {
                stack.append(left)
            }
        }
        
        return res
    }
    
    /// 左右中 栈  中右左->翻转
    func postorderTraversal(_ root: TreeNode?) -> [Int] {

        var res = [Int]()
        var stack = [TreeNode]()
        
        guard let root = root else {
            return res
        }
        
        stack.append(root)
        while !stack.isEmpty {
            
            let node = stack.removeLast()
            res.append(node.val)
            /// 左
            if let left = node.left {
                stack.append(left)
            }
            /// 右
            if let right = node.right {
                stack.append(right)
            }
        }
        res.reverse()
        return res
    }
    
    /// 左中右 栈+指针
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var res = [Int]()
        var stack = [TreeNode]()
        var cur = root
        
        while cur != nil || !stack.isEmpty {
            
            if cur != nil {
                stack.append(cur!)
                cur = cur!.left
            } else {
                let node = stack.removeLast()
                res.append(node.val)
                cur = node.right
            }
        }
        
        return res
    }
}
