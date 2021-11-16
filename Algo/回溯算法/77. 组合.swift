//
//  77. 组合.swift
//  Algo
//
//  Created by HeQing on 2021/11/3.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class Combine {
    
    var result = [[Int]]()
    var path = [Int]()
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {

        backTracking(n, k, 1)
        return result
    }
    
    func backTracking(_ n: Int, _ k: Int, _ startIndex: Int) {
    
        if path.count == k {
            result.append(path)
            return
        }
        
//        if startIndex > n {
//            return
//        }
        
//        for i in startIndex...n {
//            path.append(i)
//            backTracking(n, k, i + 1)
//            path.removeLast()
//        }
        
        /*
         剪枝处理
         已经选择的元素个数 path.count
         还需选择的元素个数 k-path.count
         */
        for i in startIndex...(n-(k-path.count)+1) {
            path.append(i)
            backTracking(n, k, i + 1)
            path.removeLast()
        }
    }
    
//    func backTracking(参数) {
//
//        if 终止条件 {
//            存放结果
//            return
//        }
//
//        for 选择：本层集合中的元素（树中节点孩子的数量就是集合的大小）{
//            处理节点
//            backTracking(路径，选择列表) // 递归
//            回溯，撤销处理结果
//        }
//    }
    
}

/*
 给定两个整数 n 和 k，返回范围 [1, n] 中所有可能的 k 个数的组合。
 你可以按 任何顺序 返回答案。

 示例 1：

 输入：n = 4, k = 2
 输出：
 [
   [2,4],
   [3,4],
   [2,3],
   [1,2],
   [1,3],
   [1,4],
 ]
 示例 2：

 输入：n = 1, k = 1
 输出：[[1]]
 
 提示：

 1 <= n <= 20
 1 <= k <= n

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/combinations
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
