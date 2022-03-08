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
//var arr = [2, 3, 4, 6, 9, 10]

SelectionSort().selectionSort(&arr)
print(arr)


//func maxLength ( _ arr: [Int]) -> Int {
//    guard arr.count > 2 else {
//        return arr.count
//    }
//    var windows = [Int: Int]()
//    var res = 0
//    var l = -1
//    for r in 0..<arr.count {
//        if (windows.keys.contains(arr[r])) {
//            l = max(l, windows[arr[r]]!)
//        }
//        res = max(res, r-l)
//        windows[arr[r]] = r
//    }
//    return res
//}

//class Solutionq {
//    func generateMatrix(_ n: Int) -> [[Int]] {
//        var l = 0
//        var t = 0
//        var r = n-1
//        var b = n-1
//
//        var cur = 1
//        let max = n*n
//        var res = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
//
//        while true {
//
//            for i in l...r {
//                res[t][i] = cur
//                cur += 1
//                if cur > max {
//                    return res
//                }
//            }
//            t += 1
//
//            for i in t...b {
//                res[i][r] = cur
//                cur += 1
//                if cur > max {
//                    return res
//                }
//            }
//            r -= 1
//
//            for i in (l...r).reversed() {
//                res[b][i] = cur
//                cur += 1
//                if cur > max {
//                    return res
//                }
//            }
//            b -= 1
//
//            for i in (t...b).reversed() {
//                res[i][l] = cur
//                cur += 1
//                if cur > max {
//                    return res
//                }
//            }
//            l += 1
//        }
//    }
//}
//
//print(Solutionq().generateMatrix(3))
