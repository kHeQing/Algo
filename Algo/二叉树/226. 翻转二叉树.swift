//
//  226. 翻转二叉树.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/9/2.
//  Copyright © 2021 hq. All rights reserved.
//

class Solution {
    
    // 递归方式 前序遍历
    func invertTree(_ root: TreeNode?) -> TreeNode? {

        guard let root = root else { return nil}

        let temp = root.left
        root.left = root.right
        root.right = temp

        let _ = invertTree(root.left)
        let _ = invertTree(root.right)

        return root
    }
    
    // 递归方式 后序遍历
    func invertTree1(_ root: TreeNode?) -> TreeNode? {

        guard let root = root else { return nil}

        let _ = invertTree1(root.left)
        let _ = invertTree1(root.right)

        let temp = root.left
        root.left = root.right
        root.right = temp
        
        return root
    }
    
    // 递归方式 中序遍历
    func invertTree2(_ root: TreeNode?) -> TreeNode? {

        guard let root = root else { return nil}

        let _ = invertTree2(root.left)
        
        let temp = root.left
        root.left = root.right
        root.right = temp
        
        let _ = invertTree2(root.left)

        return root
    }
    
    // 迭代方式 前序遍历
    func invertTree3(_ root: TreeNode?) -> TreeNode? {
            
        guard let root = root else {
            return nil
        }

        var stack = [TreeNode]()
        stack.append(root)

        while !stack.isEmpty {

            let node = stack.removeLast()

            let temp = node.left
            node.left = node.right
            node.right = temp

            if let right = node.right {
                stack.append(right)
            }

            if let left = node.left {
                stack.append(left)
            }
        }
        
        return root
    }
    
    // 层序遍历
    func invertTree4(_ root: TreeNode?) -> TreeNode? {

        guard let root = root else { return nil}
        
        var queue = [TreeNode]()
        queue.append(root)
        
        while !queue.isEmpty {
            
            let size = queue.count
            
            for _ in 0..<size {
                
                let node = queue.removeFirst()
                
                let temp = node.left
                node.left = node.right
                node.right = temp
                
                if let left = node.left {
                    queue.append(left)
                }
                
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        
        return root
    }
    
}
