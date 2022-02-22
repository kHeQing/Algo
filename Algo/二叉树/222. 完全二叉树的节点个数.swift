//
//  222. 完全二叉树的节点个数.swift
//  Algo
//
//  Created by HeQing on 2021/12/20.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class CountNodes {
    
    /// 递归 左右中
    func countNodes(_ root: TreeNode?) -> Int {
        getNodeNum(root)
    }
    func getNodeNum(_ cur: TreeNode?) -> Int {
        guard let cur = cur else {
            return 0
        }

        let left = getNodeNum(cur.left)   // 左
        let right = getNodeNum(cur.right) // 右
        let treeCount = 1 + left + right  // 中 +1 加上当前中间节点
        return treeCount
    }
    
    /// 迭代
    func countNodes1(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var res = 0
        var queue = [TreeNode]()
        queue.append(root)
        
        while !queue.isEmpty {
            
            let size = queue.count
            
            for _ in 0..<size {
                
                let node = queue.removeFirst()
                res += 1
                
                if let left = node.left {
                    queue.append(left)
                }
                
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        return res
    }
    
    /// 还有根据完全二叉树特性的解法

}
