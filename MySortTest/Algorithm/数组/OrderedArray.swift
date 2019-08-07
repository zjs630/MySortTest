//
//  OrderedArrayMerge.swift
//  MySortTest
//
//  Created by 张京顺 on 2019/7/14.
//  Copyright © 2019 zjs. All rights reserved.
//

import Foundation
/*
 两个有序数组合并,主要通过三个while循环完成合并
 */
class OrderedArray {
    
    static func merge(_ arrayA:[Int], _ arrayB: [Int]) -> [Int] {
        var arrayC: [Int] = []
        
        var i = 0, j = 0;
        let m = arrayA.count
        let n = arrayB.count
        
        while i < m && j < n {
            if arrayA[i] <= arrayB[j] {
                arrayC.append(arrayA[i])
                i += 1
            } else {
                arrayC.append(arrayB[j])
                j += 1
            }
        }
        // 添加剩余的元素
        while i < m {
            arrayC.append(arrayA[i])
            i += 1
        }
        while j < n {
            arrayC.append(arrayB[j])
            j += 1
        }
        return arrayC
    }
}
