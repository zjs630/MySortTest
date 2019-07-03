//
//  Array+Extensions.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/7/3.
//  Copyright © 2019 zjs. All rights reserved.
//

import Foundation

extension Array {
    
    /// 随机产生n个元素的Int类型数组
    ///
    /// - Parameter count: 数组元素个数
    /// - Returns: Int类型数组
    static func randomIntData(count n: Int) -> [Int] {
        var array: [Int] = [];
        for _ in 0..<n {
            let random = Int.random(in: 0...n)
            array.append(random)
        }
        return array
    }
}
