//
//  5.最长回文子串.swift
//  Algo
//
//  Created by HeQing on 2021/9/8.
//  Copyright © 2021 hq. All rights reserved.
//


class 最长回文子串 {
    
    func longestPalindrome(_ s: String) -> String {
        
        var res = ""
        
        for i in 0 ..< s.count {
            
            // 奇数位
            let s1 = palindrome(s, l: i, r: i)
            // 偶数位
            let s2 = palindrome(s, l: i, r: i + 1)
            
            res = res.count > s1.count ? res : s1
            res = res.count > s2.count ? res : s2
        }
    
        return res
    }
    
    // 找回文字符串
    func palindrome(_ s: String, l: Int, r: Int) -> String {
        
        // 变量接收一下参数 使其可变
        var l = l
        var r = r
        
        // 左右边界限制 左右相等条件
        while l >= 0 && r < s.count && s[s.index(s.startIndex, offsetBy: l)] == s[s.index(s.startIndex, offsetBy: r)] {
            // 两边扩散操作
            l -= 1
            r += 1
        }
        
        // 注意 越界问题 l = -1
        let leftIndex = s.index(s.startIndex, offsetBy: l+1)
        let rightIndex = s.index(s.startIndex, offsetBy: r-1)
        
        // leftIndex < rightIndex 才有回文字符串
        guard leftIndex < rightIndex else {
            return String(s[leftIndex])
        }
        
        return String(s[leftIndex...rightIndex])
    }
    
}
