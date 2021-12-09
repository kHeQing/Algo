//
//  242.有效的字母异位词.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/18.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class IsAnagram {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {

        var record = [Int](repeating: 0, count: 26)
        let aUnicodeScalar = "a".unicodeScalars.first!.value
        
        for c in s.unicodeScalars {
            record[Int(c.value - aUnicodeScalar)] += 1
        }
        
        for c in t.unicodeScalars {
            record[Int(c.value - aUnicodeScalar)] -= 1
        }
        
        for count in record {
            if count != 0 {
                return false
            }
        }
        
        return true
    }
}
