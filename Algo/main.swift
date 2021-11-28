//
//  main.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/9/2.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

print("Hello, World!")



print(逆波兰表达式求值().evalRPN(["4","13","5","/","+"]))



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

