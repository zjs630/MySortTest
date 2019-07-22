//
//  RevertSum.swift
//  MySortTest
//
//  Created by ZhangJingshun on 2019/7/22.
//  Copyright © 2019年 zjs. All rights reserved.
//

import Foundation
/*
 递归求累加和，1+2+...+100
 */
class RevertSum {
    /// 累加1到n的和
    ///
    /// - Parameter a: 从1开始要累加到的数
    /// - Returns: 累加和
    static func add(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        return add(n-1) + n
    }
    
    
}

