//
//  226. 翻转二叉树.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/9/2.
//  Copyright © 2021 hq. All rights reserved.
//

class Solution {
    
    // 前序遍历
//    func invertTree(_ root: TreeNode?) -> TreeNode? {
//
//        guard let root = root else { return nil}
//
//        let temp = root.left
//        root.left = root.right
//        root.right = temp
//
//        let _ = invertTree(root.left)
//        let _ = invertTree(root.right)
//
//        return root
//    }
    
    // 层序遍历
    func invertTree(_ root: TreeNode?) -> TreeNode? {

        guard let root = root else { return nil}
        
        var queue = [TreeNode]()
        queue.append(root)
        
        while queue.count > 0 {
            
            let node = queue.remove(at: 0)
            
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
        
        return root
    }
    
}
