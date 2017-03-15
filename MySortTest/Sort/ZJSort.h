//
//  ZJSort.h
//  排序算法
//
//  Created by ZhangJingshun on 2017/3/15.
//  Copyright © 2017年 zjs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJSort : NSObject

/**
 选择排序
 @param m 数组一定要为可变数组
 */
+ (void)selectSort:(NSMutableArray *)m;

/**
  插入排序
  @param m 数组一定要为可变数组
 */
+ (void)insertSort:(NSMutableArray *)m;

/**
  冒泡排序
  @param m 数组一定要为可变数组
 */
+ (void)bubbleSort:(NSMutableArray *)m;

/**
  快速排序
  @param m 数组一定要为可变数组
 */
+ (void)quickSort:(NSMutableArray *)m low:(int)low high:(int)high;

@end
