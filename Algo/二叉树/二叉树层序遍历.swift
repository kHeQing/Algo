//
//  二叉树层序遍历.swift
//  Algo
//
//  Created by HeQing on 2021/12/13.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class LevelOrder {
    
    /// 层序遍历 队列
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        
        var res = [[Int]]()
        var queue = [TreeNode]()
        
        guard let root = root else {
            return res
        }
        
        queue.append(root)
        
        while !queue.isEmpty {
            /// 先取出一层的size 因为后面size是变化的
            let size = queue.count
            var temp = [Int]()
            
            for _ in 0..<size {
                
                let node = queue.removeFirst()
                temp.append(node.val)
                
                if let left = node.left {
                    queue.append(left)
                }
                
                if let right = node.right {
                    queue.append(right)
                }
            }
            
            res.append(temp)
        }
        
        return res
    }
    
}
