//
//  选择排序.swift
//  Algo
//
//  Created by HeQing on 2022/2/22.
//  Copyright © 2022 hq. All rights reserved.
//

import Foundation

class SelectionSort {
    
    func selectionSort(_ array: inout [Int]) {
        
        guard array.count > 1 else {
            return
        }
        
        for i in 0..<array.count {
            
            var maxIndex = 0

            for j in 0..<array.count-i {
                
                if array[j] > array[maxIndex] {
                    maxIndex = j
                }
            }
            
            let temp = array[maxIndex]
            array[maxIndex] = array[array.count-i-1]
            array[array.count-i-1] = temp
            
        }
        
    }
    
}
