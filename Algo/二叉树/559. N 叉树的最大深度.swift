//
//  559. N 叉树的最大深度.swift
//  Algo
//
//  Created by HeQing on 2021/12/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class NmaxDepth {
    
    // 递归
    func maxDepth(_ root: Node?) -> Int {
        guard let root = root else {
            return 0
        }
        var res = 0
        for node in root.children {
            res = max(maxDepth(node), res)
        }
        return res + 1 // 中 记得+1
    }
    
    // 迭代 层序
    func maxDepth1(_ root: Node?) -> Int {
        guard let root = root else {
            return 0
        }
        var res = 0
        var queue = [Node]()
        queue.append(root)
        
        while !queue.isEmpty {
            let size = queue.count
            res += 1
            for _ in 0..<size {
                let node = queue.removeFirst()
                for nod in node.children {
                    queue.append(nod)
                }
            }
        }
        return res
    }

}
