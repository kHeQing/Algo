//
//  main.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/9/2.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

print("Hello, World!")

var arr = [6,3,9,2,10,4]
Quick().quick(&arr)
print(arr)


func maxLength ( _ arr: [Int]) -> Int {
    guard arr.count > 2 else {
        return arr.count
    }
    var windows = [Int: Int]()
    var res = 0
    var l = -1
    for r in 0..<arr.count {
        if (windows.keys.contains(arr[r])) {
            l = max(l, windows[arr[r]]!)
        }
        res = max(res, r-l)
        windows[arr[r]] = r
    }
    return res
}
