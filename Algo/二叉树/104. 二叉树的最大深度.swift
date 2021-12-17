//
//  104. 二叉树的最大深度.swift
//  Algo
//
//  Created by HeQing on 2021/12/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class MaxDepth {
    
    // 递归 后序遍历
    func maxDepth(_ root: TreeNode?) -> Int {
            return getDepth(root)
    }

    // 后序遍历 求高度 == 求深度
    func getDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let left = getDepth(root.left)   // 左
        let right = getDepth(root.right) // 右
        let depth = 1 + max(left, right) // 中
        return depth
    }
    
    // 层序遍历
    func maxDepth1(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var depth = 0
        var queue = [TreeNode]()
        
        queue.append(root)
        while !queue.isEmpty {
            let size = queue.count
            depth += 1
            for _ in 0..<size {
                let node = queue.removeFirst()
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        return depth
    }
}
