//
//  第一个只出现一次的字符.swift
//  Algo
//
//  Created by HeQing on 2021/9/17.
//  Copyright © 2021 hq. All rights reserved.
//

class 第一个只出现一次的字符 {
    
    static func firstUniqChar(_ s: String) -> Character {

        var dic = [Character: Int]()
        
        for c in s {
            let val = (dic[c] ?? 0) + 1
            dic[c] = val
        }
        
        for c in s {
            if dic[c] == 1 {
                return c
            }
        }
        
        return " "
    }
    
}


/*
 在字符串 s 中找出第一个只出现一次的字符。如果没有，返回一个单空格。 s 只包含小写字母。

 示例 1:

 输入：s = "abaccdeff"
 输出：'b'
 示例 2:

 输入：s = ""
 输出：' '
  

 限制：

 0 <= s 的长度 <= 50000



 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
