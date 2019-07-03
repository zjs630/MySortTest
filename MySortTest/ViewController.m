//
//  ViewController.m
//  MySortTest
//
//  Created by ZhangJingshun on 2017/3/15.
//  Copyright © 2017年 zjs. All rights reserved.
//

#import "ViewController.h"
#import "ZJSort.h"
#import "MySortTest-Swift.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

/**
   排序算法时间对比
 */
- (IBAction)sortTest:(UIButton *)sender {

    // 产生随机数数组
    int number = 10000;
    NSMutableArray *array = [NSMutableArray array];
    for(int i = 0; i < number; i++) {
        int x = random() % number;
        [array addObject:@(x)];
    }

    //冒泡排序
    NSDate *tmpDate3 = [NSDate date];
    [ZJSort bubbleSort:[NSMutableArray arrayWithArray:array]];
    double time3 = [[NSDate date] timeIntervalSinceDate:tmpDate3];
    NSLog(@"执行时间：%f-----冒泡排序---------",time3);

    //选择排序
    NSDate *tmpDate = [NSDate date];
    [ZJSort selectSort:[NSMutableArray arrayWithArray:array]];
    double time1 = [[NSDate date] timeIntervalSinceDate:tmpDate];
    NSLog(@"执行时间：%f-----选择排序---------",time1);

    //插入排序
    NSDate *tmpDate2 = [NSDate date];
    [ZJSort insertSort:[NSMutableArray arrayWithArray:array]];
    double time2 = [[NSDate date] timeIntervalSinceDate:tmpDate2];
    NSLog(@"执行时间：%f-----插入排序---------",time2);

    //OC 快速排序1
    NSDate *tmpDate4 = [NSDate date];
    [ZJSort quickSort:[NSMutableArray arrayWithArray:array] low:0 high:(int)[array count]-1];
    double time4 = [[NSDate date] timeIntervalSinceDate:tmpDate4];
    NSLog(@"执行时间：%f-----OC 快速排序1------",time4);

    //OC 快速排序2
    NSDate *tmpDate5 = [NSDate date];
    [ZJSort quickSort2:[NSMutableArray arrayWithArray:array] low:0 high:(int)[array count]-1];
    double time5 = [[NSDate date] timeIntervalSinceDate:tmpDate5];
    NSLog(@"执行时间：%f-----OC 快速排序2------",time5);

    // swift 快速排序1
    NSDate *tmpDate6 = [NSDate date];
    [IntArraySort sortTest1:[NSMutableArray arrayWithArray:array]];
    double time6 = [[NSDate date] timeIntervalSinceDate:tmpDate6];
    NSLog(@"执行时间：%f-----swift 快速排序1---",time6);
    
    // swift 快速排序2
    NSDate *tmpDate7 = [NSDate date];
    [IntArraySort sortTest2:[NSMutableArray arrayWithArray:array]];
    double time7 = [[NSDate date] timeIntervalSinceDate:tmpDate7];
    NSLog(@"执行时间：%f-----swift 快速排序2---",time7);

}


@end
