//
//  150. 逆波兰表达式求值.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/28.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 逆波兰表达式求值 {
    
    func evalRPN(_ tokens: [String]) -> Int {
    
        var deque = [Int]()
        
        for ch in tokens {
            
            if ch == "+" {
                let val0 = deque.removeLast()
                let val1 = deque.removeLast()
                deque.append(val1+val0)
            } else if ch == "-" {
                let val0 = deque.removeLast()
                let val1 = deque.removeLast()
                deque.append(val1-val0)
            } else if ch == "*" {
                let val0 = deque.removeLast()
                let val1 = deque.removeLast()
                deque.append(val1*val0)
            } else if ch == "/" {
                let val0 = deque.removeLast()
                let val1 = deque.removeLast()
                deque.append(val1/val0)
            } else {
                if let val = Int(ch) {
                    deque.append(val)
                }
            }
        }
        
        return deque.last ?? 0
    }
    
}
