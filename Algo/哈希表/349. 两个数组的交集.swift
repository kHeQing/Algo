//
//  349. 两个数组的交集.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/18.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class Intersection {
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

        var set1 = Set<Int>()
        var set2 = Set<Int>()

        for num in nums1 {
            set1.insert(num)
        }
        
        for num in nums2 {
            if set1.contains(num) {
                set2.insert(num)
            }
        }
        
        return Array(set2)
    }
}
