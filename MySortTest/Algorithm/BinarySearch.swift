//
//  BinarySearch.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/7/3.
//  Copyright © 2019 zjs. All rights reserved.
//

import Foundation
/* 二分查找
   针对有序数组，进行折半查找,平均时间复杂度O(logn)
 */
class BinarySearch {
    
    /// 二分查找
    ///
    /// - Parameters:
    ///   - a: 有序数组
    ///   - key: 要查找的数
    /// - Returns: 返回要查找数都index
    static func binarySearch(a: [Int], key: Int) -> Int? {
        var low = 0
        var high = a.count - 1
        var mid: Int
        while low <= high {
            mid = (low + high) / 2
            if a[mid] == key {
                return mid // 查找成功
            }
            if a[mid] < key {
                low = mid + 1 // 从后面查找
            } else {
                high = mid - 1 // 从前面查找
            }
        }
        return nil
    }
    
    /// 二分查找(递归算法)
    ///
    /// - Parameters:
    ///   - a: 有序数组
    ///   - key: 要查找的数
    ///   - low: 左边下标
    ///   - high: 右边下标
    /// - Returns: 返回要查找数都index
    static func binarySearchRecursion(a: [Int], key: Int, low: Int, high: Int) -> Int? {
        if low > high {
            return nil
        }
        let mid = (low + high) / 2

        if a[mid] == key {
            return mid // 查找成功
        }
        if a[mid] < key { // 从后面查找
            return binarySearchRecursion(a: a, key: key, low: mid + 1, high: high)
        } else {  // 从前面查找
            return binarySearchRecursion(a: a, key: key, low: low, high: mid - 1)
        }
    }
    
}
