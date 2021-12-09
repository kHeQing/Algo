//
//  快速排序.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/29.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class QuickSort {
    
    func quickSort(_ array: inout [Int]) {
        sort(&array, 0, array.count)
    }
    func sort(_ array: inout [Int], _ begin: Int, _ end: Int) {
        
        if end - begin < 2 { // 至少两个元素
            return
        }
        // 确定轴点位置 O(n)，并进行一次快速排序
        let mid = pivotIndex(&array, begin, end)
        // 对子序列进行快速排序
        sort(&array, begin, mid)
        sort(&array, mid+1, end)
        
    }
    func pivotIndex(_ array: inout [Int], _ begin: Int, _ end: Int) -> Int {
        // 备份begin位置的元素
        let pivot = array[begin]
        
        var begin = begin
        var end = end
        // end指向最后一个元素
        end -= 1
        
        // 如果begin == end 则退出排序
        while begin < end {
            
            while begin < end {
                if array[end] > pivot { // 右边元素 > 轴点元素
                    end -= 1 // 只位移，不进行元素交换
                } else { // 右边元素 <= 轴点元素
                    array[begin] = array[end]
                    begin += 1
                    break //执行完一次操作后，需要掉头，所以执行一个break
                }
            }
            
            while begin < end {
                if  array[begin] < pivot { // 左边元素 < 轴点元素
                    begin += 1
                } else { // 左边元素 >= 轴点元素
                    array[end] = array[begin]
                    end -= 1
                    break // 通过两个break，能实现两个while交替执行。
                }
            }
        }
        // 将轴点元素放入最终的位置
        array[begin] = pivot
        // 返回轴点元素的位置
        return begin
    }
    
}
