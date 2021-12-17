//
//  101. 对称二叉树.swift
//  Algo
//
//  Created by HeQing on 2021/12/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class IsSymmetric {
    
    // 递归法
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        return compare(root.left, root.right)
    }
    
    func compare(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        // 1.确定终止条件
        // 1.1 左为空 又不为空
        if left == nil && right != nil {
            return false
        }
        // 1.2 左不为空 右为空
        if left != nil && right == nil {
            return false
        }
        // 1.3 左右都为空
        if left == nil && right == nil {
            return true
        }
        // 1.4 左右都不为空 但是值不相等
        if left!.val != right!.val {
            return false
        }
        
        // 2.下面进入单层递归逻辑
        let outside = compare(left!.left, right!.right) // 左子树：左、 右子树：右
        let inside = compare(left!.right, right!.left)  // 左子树：右、 右子树：左
        let isSame = outside && inside                  // 左子树：中、 右子树：中（逻辑处理）
        return isSame
    }
    
    // 迭代法 思路与递归类似
    func isSymmetric2(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        // 此处用 队列 和 栈 都可以，从前面取，从后面取都行
        var queue = [TreeNode?]()
        queue.append(root.left)
        queue.append(root.right)
        
        while !queue.isEmpty {
            let left = queue.removeFirst()
            let right = queue.removeFirst()
            
            if left != nil && right == nil {
                return false
            }
            if left == nil && right != nil {
                return false
            }
            if left == nil && right == nil {
                continue
            }
            if left!.val != right!.val {
                return false
            }
            
            queue.append(left!.left)
            queue.append(right!.right)
            queue.append(left!.right)
            queue.append(right!.left)
        }
        return true
    }
}
