//
//  SwiftViewController.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/7/3.
//  Copyright © 2019 zjs. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 1.两数之和
    @IBAction func twoValueSumTest(_ sender: UIButton) {
        let nums = [2, 7, 11, 15,77];
        let target = 17
        let x:(one: Int,two: Int)? = TwoValueSum.findKeys3(nums, target)
        if let index = x {
            print("-------------------------------")
            print("原数组:\(nums)")
            print("\(nums[index.one]) + \(nums[index.two]) = \(target)")
        }
    }
    
    /// 2.找数组中第二大数
    @IBAction func findSecondValue(_ sender: UIButton) {
        print("-------------------------------")
        // 1.随机产生n个数放入数组中
        let array: [Int] = Array<Int>.randomIntData(count: 10)
        print("数组：\(array)")
        // 2.查找第二大数
        let secondNum = FindSecondBigNumber.findSecondBig(in: array)
        print("数组中第二大数：\(secondNum)")
        // 不考虑最大数重复情况
        let secondNum2 = FindSecondBigNumber.findSecondBig2(in: array)
        print("数组中第二大数：\(secondNum2)(不考虑最大数重复情况)")

    }
    /// 3.二分查找（两种算法）
    @IBAction func binarySearch(_ sender: UIButton) {
        // 1.随机产生n个数放入数组中
        let number = 10000;
        var array: Set<Int> = [];
        for _ in 0..<number {
            let random = Int.random(in: 0...number)
            array.insert(random)
        }
        // 2.生成有序数组，指定key
        let sortedArray = array.sorted()
        print(sortedArray)
        
        let key = 2
        
        // 3.二分查找（非递归算法）
        let date2 = Date()
        if let index = BinarySearch.binarySearch(a: sortedArray, key: key) {
            let str = String(format: "%.8f", Date().timeIntervalSince(date2))
            print("二分查找执行时间：",str)
            print("要查找的数index为：\(index)")
        } else {
            print("数组中没有找到\(key)")
        }
        
        // 4.二分查找(递归算法)
        let date3 = Date()
        let x = BinarySearch.binarySearchRecursion(a: sortedArray, key: key, low: 0, high: sortedArray.count - 1)
        if let index = x {
            let str = String(format: "%.8f", Date().timeIntervalSince(date3))
            print("二分查找递归算法执行时间：",str)
            print("要查找的数index为：\(index)")
        }

    }
    
    /// 4.系统排序和二分查找排序效率对比
    @IBAction func sortTimeTest(_ sender: UIButton) {
        // 1.生成随机数数组
        var array: [Int] = Array<Int>.randomIntData(count: 1000)
        print("-------------------------------")

        // 2.系统排序算法
        let date2 = Date()
        let _ = array.sorted()
        let str = String(format: "%.8f", Date().timeIntervalSince(date2))
        print("系统排序算法执行时间：",str)

        // 3.快速排序算法
        let date3 = Date()
        IntArraySort.quickSort2(a: &array, low: 0, high: array.count - 1)
        let str3 = String(format: "%.8f", Date().timeIntervalSince(date3))
        print("快速排序执行时间：",str3)
    }
    
    /// 5.合并有序数组
    @IBAction func arrayMerge(_ sender: UIButton) {
        let arrayA = [1,3,5,7,9];
        let arrayB = [2,4,6,8,10,11,15];
        print("有序数组A为：\(arrayA)")
        print("有序数组B为：\(arrayB)")

        let arrayC = OrderedArray.merge(arrayA, arrayB)
        print("合并后有序数组C为：\(arrayC)")
    }
    
    /// 6.递归求和1+2+3+...+100
    @IBAction func sum(_ sender: UIButton) {
        let sum = RevertSum.add(100)
        print("1+2+3+...+100 = \(sum)")
    }
    
}
