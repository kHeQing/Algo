//
//  142. 环形链表 II.swift
//  Algo
//
//  Created by HeQing on 2021/11/17.
//  Copyright © 2021 hq. All rights reserved.
//

import Foundation

class DetectCycle {
    
    func detectCycle(_ head: ListNode?) -> ListNode? {
        
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            
            slow = slow?.next
            fast = fast?.next?.next
            // 快慢指针相遇，此时从head 和 相遇点，同时查找直至相遇
            if slow === fast {
                
                var index1 = head
                var index2 = fast
                
                while index1 !== index2 {
                    
                    index1 = index1?.next
                    index2 = index2?.next
                }
                // 返回环的入口
                return index1
            }
        }
        
        return nil
    }
}

// 替换 " " 为 "%20"
class Solution2 {
    
    func replaceSpace(_ s: String) -> String {
        var sArr = Array(s)
        var blackCount = 0
        // 找到空格数量
        for i in sArr {
            if i == " " {
                blackCount += 1
            }
        }

        var index = sArr.count - 1
        var newIndex = sArr.count + blackCount*2 - 1

        // 扩容
        for _ in 0..<blackCount {
            sArr.append(" ")
            sArr.append(" ")
        }

        while index >= 0 {

            if sArr[index] == " " {
                sArr[newIndex] = "0"
                sArr[newIndex-1] = "2"
                sArr[newIndex-2] = "%"
                index -= 1
                newIndex -= 3
            } else {
                sArr[newIndex] = sArr[index]
                index -= 1
                newIndex -= 1
            }
        }

        return String(sArr)
    }
}

// 翻转字符串中单词 移除前后和中间多余空格
class Solution3 {
    func reverseWords(_ s: String) -> String {
        // 1.
        var array = removeSpace(s)
        // 2.
        reverseString(&array, start: 0, end: array.count-1)
        // 3.
        reverseWord(&array)
        
        return String(array)
    }

    // 删除前后 和 中间 多余的空格
    func removeSpace(_ s: String) -> [Character] {
        let arr = Array(s)
        var left = 0
        var right = arr.count - 1

        while arr[left] == " " {
            left += 1
        }
        while arr[right] == " " {
            right -= 1
        }

        var tempArr = [Character]()
        while left <= right {
            // 准备加入新数组的字符；或者新数组中的最后一个字符；只要有一个不为空格即加入
            if arr[left] != " " || tempArr[tempArr.count - 1] != " " {
                tempArr.append(arr[left])
            }
            left += 1
        }
        return tempArr
    }

    // 翻转整体字符串
    func reverseString(_ s: inout [Character], start: Int, end: Int) {
        var left = start
        var right = end
        while left < right {
            let temp = s[left]
            s[left] = s[right]
            s[right] = temp
            left += 1
            right -= 1
        }
    }

    // 翻转单词
    func reverseWord(_ s: inout [Character]) {
        var start = 0
        var end = 0
        while end < s.count {
            
            if s[end] == " " {
                reverseString(&s, start: start, end: end-1)
                end += 1
                start = end
            } else if end == s.count - 1 {
                reverseString(&s, start: start, end: end)
                break
            } else {
                end += 1
            }
        }
    }
}

// 三个数和为0
class Solution4 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var sorted = nums
        sorted.sort()
        for i in 0..<sorted.count {
            if sorted[i] > 0 {
                return result
            }

            if i>0 && sorted[i]==sorted[i-1] {
                continue
            }
            var left = i+1
            var right = sorted.count - 1
            while  left < right {
                if sorted[i] + sorted[left] + sorted[right] < 0 {
                    left += 1
                } else if sorted[i] + sorted[left] + sorted[right] > 0 {
                    right -= 1
                } else {
                    result.append([sorted[i],sorted[left],sorted[right]])
                    while left < right && sorted[left] == sorted[left+1] {
                        left += 1
                    }
                    while left < right && sorted[right] == sorted[right-1] {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }
            }
        }
        return result
    }
}

class Solution5 {
    
    func reverse(_ x: Int) -> Int {
        
        var val = x
        var result = 0
        
        while val != 0 {
            result = result*10 + val%10
            val /= 10
        }
        return result > Int32.max ? 0 : result
    }
}

class Solution6 {
    
    func strToInt(_ str: String) -> Int {

        if str.count == 0 {
            return 0
        }
        
        let arr: [Character] = Array(str)
        var i = 0
        var tag = 1
        var res = 0
        
        // 1. 去除前面空格
        while arr[i] == " " {
            if i == arr.count - 1 {
                return 0
            }
            i += 1
        }
        
        // 2. 判断负号替换标识
        if arr[i] == "-" {
            tag = -1
        }
        
        // 3. 去除符号位
        if arr[i] == "-" || arr[i] == "+" {
            i += 1
        }
        
        while i < arr.count && arr[i].isNumber {
            
            let val = Int(String(arr[i]))!
            res = res * 10 + val
            
            if res > Int(Int32.max) {
                return tag == 1 ? Int(Int32.max) : Int(Int32.min)
            }
            
            i += 1
        }
        
        
        return res * tag
    }
}
