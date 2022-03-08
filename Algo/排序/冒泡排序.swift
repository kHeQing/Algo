//
//  冒泡排序.swift
//  Algo
//
//  Created by HeQing on 2022/2/22.
//  Copyright © 2022 hq. All rights reserved.
//

import Foundation


/// O(n*n)
class BubbleSort {
    
    func bubbleSort(_ array: inout [Int]) {
        
        guard array.count > 1 else {
            return
        }
                
        for i in 0..<array.count {
            
            for j in 0..<array.count-i-1 {
                if array[j] > array[j+1] {
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                }
            }
        }
    }
    
    func bubbleSort1(_ array: inout [Int]) {
        
        guard array.count > 1 else {
            return
        }
                
        for i in 0..<array.count {
            
            var isSorted = true
            
            for j in 0..<array.count-i-1 {
                if array[j] > array[j+1] {
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                    isSorted = false
                }
            }
            
            if isSorted {
                return
            }
        }
    }
    
    func bubbleSort2(_ array: inout [Int]) {
        
        guard array.count > 1 else {
            return
        }
                
        var end = array.count-1
        for _ in 0..<array.count {
            
            var isSorted = true
            
            for j in 0..<end {
                if array[j] > array[j+1] {
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                    isSorted = false
                    end = j + 1
                }
            }
            
            if isSorted {
                return
            }
        }
    }
}
