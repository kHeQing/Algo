//
//  347. 前 K 个高频元素.swift
//  Algo
//
//  Created by 邵蒙蒙 on 2021/11/29.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class 前K个高频元素 {
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        return nums.reduce(into: [:]) { (parames, number) in
            parames[number,default: 0] += 1
        }.sorted(by: {$0.value > $1.value}).prefix(k).map{$0.key}
    }
    
}
