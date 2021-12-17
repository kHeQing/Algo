//
//  590. N 叉树的后序遍历.swift
//  Algo
//
//  Created by HeQing on 2021/12/14.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class PSolution {
    
    // 递归-后序遍历
    func postorder(_ root: Node?) -> [Int] {
        
        var res = [Int]()
        order(root, res: &res)
        return res
    }
    
    func order(_ root: Node?, res: inout [Int]) {
        
        guard let root = root else {
            return
        }
        
        for node in root.children {
            order(node, res: &res)
        }
        res.append(root.val)
    }
    
    // 迭代-后序遍历
    func postorder1(_ root: Node?) -> [Int] {
        
        var res = [Int]()
        var stack = [Node]()
        
        guard let root = root else {
            return res
        }
        stack.append(root)
        
        while !stack.isEmpty {
            
            let node = stack.removeLast()
            res.append(node.val)
            
            // 正序遍历
            for nod in node.children {
                stack.append(nod)
            }
        }
        // 注意翻转
        res.reverse()
        
        return res
    }
}
