//
//  20. 有效的括号.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/28.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 有效的括号 {
    
    func isValid(_ s: String) -> Bool {
        
        var deque = [Character]()
        for ch in s {
            if ch == "(" {
                deque.append(")")
            } else if ch == "{" {
                deque.append("}")
            } else if ch == "[" {
                deque.append("]")
            } else if deque.isEmpty || ch != deque.last {
                return false
            } else {
                deque.removeLast()
            }
        }
        
        return deque.isEmpty
    }
}
