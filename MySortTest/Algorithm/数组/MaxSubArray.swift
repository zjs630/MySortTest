//
//  MaxSubArray.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/8/7.
//  Copyright © 2019 zjs. All rights reserved.
//

import Foundation
/*
 给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
 示例:
 
 输入: [-2,1,-3,4,-1,2,1,-5,4],
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
 
 思路：
1.首先对数组进行遍历，当前最大连续子序列和为 sum，结果为 max
2.如果 sum > 0，则说明 sum 对结果有增益效果，则 sum 保留并加上当前遍历数字
3.如果 sum <= 0，则说明 sum 对结果无增益效果，需要舍弃，则 sum 直接更新为0
4.每次比较 sum 和 max的大小，将最大值置为max，遍历结束返回结果
 时间复杂度：O(n)
 
 */
class MaxSubArray {
    
    static func sum(_ nums: [Int]) -> Int {
        /// 求和的中间结果
        var sum = 0
        /// 子数组最大和
        var max = Int.min
        for i in nums {
            sum += i
            if sum > max {
                max = sum
            }
            if sum < 0 {
                sum = 0
            }
        }
        return max
    }
}
