//
//  IntArraySort.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/6/26.
//  Copyright © 2019 zjs. All rights reserved.
//

import Foundation


/// 整型数组快速排序 swift实现
@objc class IntArraySort: NSObject {
    
    /// 快速排序1测试代码
    @objc static func sortTest1(_ a: [Int]) {
        var m = a;
        quickSort1(a: &m, low: 0, high: m.count - 1)
        // print(m)
    }
    
    /// 快速排序2测试代码
    @objc static func sortTest2(_ a: [Int]) {
        var m = a;
        quickSort2(a: &m, low: 0, high: m.count - 1)
        // print(m)
    }

    /// 比较符合个人的思维逻辑
    static func quickSort1(a: inout [Int], low: Int, high: Int) {
        if low >= high { // 递归结束条件
            return
        }
        var i = low
        var j = high
        let key = a[i]
        while i < j {
            // 从右边开始比较，比key大的数位置不变
            while i < j && a[j] >= key {
                j -= 1
            }
            if i == j { // 当key是目前最小数时(m[i]的后面)，会出现i=j的情况
                break // 循环结束
            }
            // 只要出现一个比key小的数，将这个数放入左边i的位置
            a[i] = a[j]
            i += 1 // i加1，少比较一次
            // 从左边开始比较，比key小的数位置不变
            while i < j && a[i] <= key {
                i += 1
            }
            if i == j { // 当key是目前最大的数时(m[j]的前面)，会出现i=j的情况，
                break // 循环结束
            }
            // 只要出现一个比key大的数，将这个数放入右边j的位置
            a[j] = a[i]
            j -= 1 // j减1，少比较一次，因为j这个位置刚放入的数，比key大
        }
        a[i] = key // 将key放入i的位置，则左侧数都比key小，右侧数都比key大
        quickSort1(a: &a, low: low, high: i - 1) // 左递归
        quickSort1(a: &a, low: i + 1, high: high) // 右递归
    }

    /// 代码量少,效率高,已将此Swift版本算法提交到百度词条，可搜索"快速排序"
    static func quickSort2(a: inout [Int], low: Int, high: Int) {
        if low >= high { // 递归结束条件
            return
        }
        var i = low
        var j = high
        let key = a[i]
        while i < j {
            // 从右边开始比较，比key大的数位置不变
            while i < j && a[j] >= key {
                j -= 1
            }
            // 只要出现一个比key小的数，将这个数放入左边i的位置
            a[i] = a[j]
            // 从左边开始比较，比key小的数位置不变
            while i < j && a[i] <= key {
                i += 1
            }
            // 只要出现一个比key大的数，将这个数放入右边j的位置
            a[j] = a[i]
        }
        a[i] = key // 将key放入i的位置，则左侧数都比key小，右侧数都比key大
        quickSort2(a: &a, low: low, high: i - 1) // 左递归
        quickSort2(a: &a, low: i + 1, high: high) // 右递归
    }

    
}
