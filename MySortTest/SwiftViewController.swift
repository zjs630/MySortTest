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

        // Do any additional setup after loading the view.
    }
    
    /// 两数之和
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
    
    /// 找数组中第二大数
    @IBAction func findSecondValue(_ sender: UIButton) {
        print("-------------------------------")
        // 1.随机产生n个数放入数组中
        let number = 10;
        var array: [Int] = [];
        for _ in 0..<number {
            let random = Int.random(in: 0...number)
            array.append(random)
        }
        print("数组：\(array)")
        // 2.查找第二大数
        let secondNum = FindSecondBigNumber.findSecondBig(in: array)
        print("数组中第二大数：\(secondNum)")
        // 不考虑最大数重复情况
        let secondNum2 = FindSecondBigNumber.findSecondBig2(in: array)
        print("数组中第二大数：\(secondNum2)(不考虑最大数重复情况)")
        print("-------------------------------")
    }
    
    
}
