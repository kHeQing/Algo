//
//  226. 翻转二叉树.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/9/2.
//  Copyright © 2021 hq. All rights reserved.
//

class Solution {
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {

        guard let root = root else { return nil}
        
        let temp = root.left
        root.left = root.right
        root.right = temp
        
        let _ = invertTree(root.left)
        let _ = invertTree(root.right)
        
        return root
    }
}
