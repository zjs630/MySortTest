//
//  FindSecondBigNumber.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/7/3.
//  Copyright © 2019 zjs. All rights reserved.
//

import Foundation
/*
 问题： 如何找出一个数组中第二大的数？
 算法1：可通过排序算法，将数组先排序，然后依据下标来访问数组中第二大的数，最快的排序算法为二分查找。此算法时间复杂度为O(nlogn)
 算法2（最佳算法）：可通过扫描一遍数组，设置两个变量进行判断来实现。
 */
@objc class FindSecondBigNumber: NSObject {
    
    //[0, 1, 1, 3, 5, 6, 7, 7, 7] -> 6
    /// 无序数组查找第二大数，若有多个重复的最大数，找比最大数小的数
    @objc static func findSecondBig(in array: [Int]) -> Int {
        var max = array[0]
        var secondMax = Int.min
        
        for num in array[1..<array.count] {
            if num > max { //出现比最大数还要大的数
                secondMax = max // 先将原最大的数变为第二大
                max = num // 再将此数设置为最大数
            } else if num < max  { // 比最大数小的数，跟次大数比
                // 比次大数大，则此数设置为次大数
                if num > secondMax {
                    secondMax = num
                }
            }
        }
        
        return secondMax
    }
    
    //[0, 1, 1, 3, 5, 6, 7] -> 6
    /// 无序数组查找第二大数，不考虑最大数重复的情况
    @objc static func findSecondBig2(in array: [Int]) -> Int {
        var max = array[0]
        var secondMax = Int.min
        
        for num in array[1..<array.count] {
            if num > max { //出现比最大数还要大的数
                secondMax = max // 先将原最大的数变为第二大
                max = num // 再将此数设置为最大数
            } else { // 比最大数小的数，跟次大数比
                // 比次大数大，则此数设置为次大数
                if num > secondMax {
                    secondMax = num
                }
            }
        }
        
        return secondMax
    }

}
