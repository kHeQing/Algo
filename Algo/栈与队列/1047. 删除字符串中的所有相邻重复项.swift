//
//  1047. 删除字符串中的所有相邻重复项.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/28.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 删除字符串中的所有相邻重复项 {
    
    func removeDuplicates(_ s: String) -> String {

        var deque = [Character]()
        
        for ch in s {
            
            if deque.last == ch {
                deque.removeLast()
            } else {
                deque.append(ch)
            }
        }
        
        return String(deque)
    }
    
}
