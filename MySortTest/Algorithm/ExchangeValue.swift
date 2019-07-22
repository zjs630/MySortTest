//
//  ExchangeValue.swift
//  MySortTest
//
//  Created by ZhangJingshun on 2019/7/23.
//  Copyright © 2019年 zjs. All rights reserved.
//

import Foundation

/*
  不用中间变量，交换A和B的值
 */
class ExchangeVlalue {
    
    
    /// 通过加减运算实现，存在问题，若数值很大求和可能会溢出
    static func changeA(_ a: inout Int, _ b: inout Int) {
        a = a + b;
        b = a - b;
        a = a - b;
    }
    /// 通过异或运算
    static func changeB(_ a: inout Int, _ b: inout Int) {
        a = a ^ b;
        b = a ^ b;
        a = a ^ b;
    }
    /// swift特有的交换方法
    static func changeC(_ a: inout Int, _ b: inout Int) {
        (a, b) = (b, a)
    }
    
}
