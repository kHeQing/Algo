//
//  589. N 叉树的前序遍历.swift
//  Algo
//
//  Created by HeQing on 2021/12/14.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class NSolution {
    
    // 递归-前序遍历
    func preorder(_ root: Node?) -> [Int] {
        
        var res = [Int]()
        order(root, res: &res)
        return res
    }
    
    func order(_ root: Node?, res: inout [Int]) {
        
        guard let root = root else {
            return
        }
        
        res.append(root.val)
        
        for node in root.children {
            order(node, res: &res)
        }
    }
    
    // 迭代-前序遍历
    func preorder1(_ root: Node?) -> [Int] {
        
        var res = [Int]()
        var stack = [Node]()
        
        guard let root = root else {
            return res
        }
        stack.append(root)
        
        while !stack.isEmpty {
            
            let node = stack.removeLast()
            res.append(node.val)
            
            // 注意倒序遍历 先把右边的放到栈里 先取出左边的
            for nod in node.children.reversed() {
                stack.append(nod)
            }
        }
        
        return res
    }
}
