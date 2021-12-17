//
//  二叉树遍历-递归.swift
//  Algo
//
//  Created by HeQing on 2021/12/13.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class BinaryTreeTraversal {
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var res = [Int]()
        traversal(root, &res)
        return res
    }
    
    func traversal(_ root: TreeNode?, _ res: inout [Int]) {
        
        guard let root = root else {
            return
        }
        
        res.append(root.val)          // 中
        traversal(root.left, &res)    // 左
        traversal(root.right, &res)   // 右
    }
    
}
