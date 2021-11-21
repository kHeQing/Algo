//
//  216. 组合总和 III.swift
//  Algo
//
//  Created by HeQing on 2021/11/3.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class CombinationSum3 {
    
    var result = [[Int]]() // 存放结果集
    var path = [Int]() // 符合条件的结果
    
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {

        backTracking(targetSum: n, k: k, sum: 0, startIndex: 1)
        return result
    }
    
    // targetSum：目标和，也就是题目中的n。
    // k：题目中要求k个数的集合。
    // sum：已经收集的元素的总和，也就是path里元素的总和。
    // startIndex：下一层for循环搜索的起始位置。
    func backTracking(targetSum: Int, k: Int, sum: Int, startIndex: Int) {
        
        if sum > targetSum { // 剪枝操作
            return
        }
        
        if path.count == k {
            
            if sum == targetSum {
                result.append(path)
            }
            return // 如果path.size() == k 但sum != targetSum 直接返回
        }
        
        var sum = sum
        
        for i in startIndex...(9-(k-path.count)+1) { // 剪枝操作
            sum += i // 处理
            path.append(i) // 处理
            backTracking(targetSum: targetSum, k: k, sum: sum, startIndex: i + 1) // 注意i+1调整startIndex
            sum -= i // 回溯
            path.removeLast() // 回溯
        }
        
    }
    
}

/*
 216. 组合总和 III
 难度
 中等

 找出所有相加之和为 n 的 k 个数的组合。组合中只允许含有 1 - 9 的正整数，并且每种组合中不存在重复的数字。

 说明：

 所有数字都是正整数。
 解集不能包含重复的组合。
 示例 1:

 输入: k = 3, n = 7
 输出: [[1,2,4]]
 示例 2:

 输入: k = 3, n = 9
 输出: [[1,2,6], [1,3,5], [2,3,4]]
 */
