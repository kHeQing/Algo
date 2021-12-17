//
//  111. 二叉树的最小深度.swift
//  Algo
//
//  Created by HeQing on 2021/12/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class MinDepth {
    
    // 迭代 层序
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var res = 0
        var queue = [TreeNode]()
        queue.append(root)
        
        while !queue.isEmpty {
            let size = queue.count
            res += 1
            for _ in 0..<size {
                let node = queue.removeFirst()
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
                if node.left == nil && node.right == nil { // 当左右孩子都为空的时候，说明是最低点的一层了，退出
                    return res
                }
            }
        }
        return res
    }
}
