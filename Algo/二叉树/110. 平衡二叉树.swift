//
//  110. 平衡二叉树.swift
//  Algo
//
//  Created by HeQing on 2021/12/24.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

/// 一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过 1
class IsBalanced {
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        return getHeight(root) == -1 ? false : true
    }
    
    func getHeight(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        let leftHeight = getHeight(root.left)
        if leftHeight == -1 {
            return -1
        }
        let rightHeight = getHeight(root.right)
        if rightHeight == -1 {
            return -1
        }
        
        if abs(leftHeight-rightHeight) > 1 {
            return -1
        } else {
            return 1 + max(leftHeight, rightHeight)
        }
    }
}
