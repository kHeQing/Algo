////
////  93. 复原 IP 地址.swift
////  Algo
////
////  Created by HeQing on 2021/11/4.
////  Copyright © 2021 hq. All rights reserved.
////
//
//import Foundation
//
//class RestoreIpAddresses {
//
//    var result = [String]()
//    var s = ""
//
//    func restoreIpAddresses(_ s: String) -> [String] {
//
//    }
//
//    func backTrack(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//
//    func isValid(_ s: String, _ start: Int, _ end: Int) -> Bool {
//
//        // 边界判断
//        if end > start {
//            return false
//        }
//
//        let startIndex = s.index(s.startIndex, offsetBy: start)
//
//        // 0开头的数字不合法
//        if s[startIndex] == "0" && start != end {
//            return false
//        }
//
//        var num = 0
//
//        for i in start...end {
//
//            /// 获取对应数字
//            let index = s.index(s.startIndex, offsetBy: i)
//            let digit = UInt(String(s[index]))
//
//            // 遇到非数字字符不合法
//            guard let digit = digit else {
//                return false
//            }
//
//            num += num * 10 + Int(digit)
//
//            // 大于255不合法
//            if num > 255 {
//                return false
//            }
//        }
//
//        return true
//    }
//}
