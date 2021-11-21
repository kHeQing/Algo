//
//  17. 电话号码的字母组合.swift
//  Algo
//
//  Created by HeQing on 2021/11/4.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class LetterCombinations {
    
    var result = [String]()
    var s = ""
    
    let letterMap = [
        "", // 0
        "", // 1
        "abc", // 2
        "def", // 3
        "ghi", // 4
        "jkl", // 5
        "mno", // 6
        "pqrs", // 7
        "tuv", // 8
        "wxyz", // 9
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        
        if digits.count == 0 {
            return result
        }
        
        backTracking(digits, 0)
        return result
    }
    
    func backTracking(_ digits: String, _ index: Int) {
        
        if index == digits.count {
            result.append(s)
            return
        }
        
        let digitIndex = digits.index(digits.startIndex, offsetBy: index)
        let digit = Int(String(digits[digitIndex])) ?? 0
        
        let letters = letterMap[digit]
        
        for letter in letters {
            s.append(letter)
            backTracking(digits, index + 1)
            s.removeLast()
        }
        
    }
}
