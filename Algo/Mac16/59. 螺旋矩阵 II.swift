//
//  59. 螺旋矩阵 II.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/15.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class GenerateMatrix {
    
    func generateMatrix(_ n: Int) -> [[Int]] {

        var result = [[Int]](repeating: [Int](repeating:0, count: n), count: n)
        
        var startRow = 0
        var startColum = 0
        
        var loop = n / 2 // 循环圈数
        let mid = n / 2 // 中间位置
        
        var count = 1
        var offset = 1
        
        var row = 0
        var colum = 0
        
        while loop > 0 {
            
            row = startRow
            colum = startColum
            
            // 上边
            for c in colum ..< startColum + n - offset {
                result[row][c] = count
                count += 1
                colum += 1
            }

            // 右边
            for r in row ..< startRow + n - offset {
                result[r][colum] = count
                count += 1
                row += 1
            }
            
            // 下边
            for _ in startColum ..< colum {
                result[row][colum] = count
                count += 1
                colum -= 1
            }
            
            // 左边
            for _ in startRow ..< row {
                result[row][colum] = count
                count += 1
                row -= 1
            }
            
            startRow += 1
            startColum += 1
            
            offset += 2 // 注意这里
            loop -= 1
        }
        
        if n % 2 != 0 {
            result[mid][mid] = count
        }
        
        return result
    }
    
}
