//
//  quick.swift
//  Algo
//
//  Created by HeQing on 2021/12/3.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class Quick {
    
    func quick(_ arr: inout [Int]) {
        quickSort(&arr, 0, arr.count)
    }
    
    func quickSort(_ arr: inout [Int], _ begin: Int, _ end: Int) {
        if end - begin < 2 {
            return
        }
        
        let povit = povit(&arr, begin, end)
        quickSort(&arr, begin, povit)
        quickSort(&arr, povit + 1, end)
    }
    
    func povit(_ arr: inout [Int], _ begin: Int, _ end: Int) -> Int {
        
        var begin = begin
        var end = end
        end -= 1
        
        let povit = arr[begin]
        
        while begin < end {
            
            while begin < end {
                if arr[end] > povit {
                    end -= 1
                } else {
                    arr[begin] = arr[end]
                    begin += 1
                    break
                }
            }
            
            while begin < end {
                if arr[begin] < povit {
                    begin += 1
                } else {
                    arr[end] = arr[begin]
                    end -= 1
                    break
                }
            }
        }
        
        arr[begin] = povit
        return begin
    }
    
}
