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
    [self sort];
}

- (void)sort{
    [TwoValueSum ];
    NSMutableArray *array = [NSMutableArray array];
    for(int i = 0; i < 100; i++) {
        int x = random()%100;
        [array addObject:@(x)];
    }

    //选择排序
    NSDate *tmpDate = [NSDate date];
    [ZJSort selectSort:[NSMutableArray arrayWithArray:array]];
    double time1 = [[NSDate date] timeIntervalSinceDate:tmpDate];
    NSLog(@"-----------%f",time1);
    
    //插入排序
    NSDate *tmpDate2 = [NSDate date];
    [ZJSort insertSort:[NSMutableArray arrayWithArray:array]];
    double time2 = [[NSDate date] timeIntervalSinceDate:tmpDate2];
    NSLog(@"-----------%f",time2);

    //冒泡排序
    NSDate *tmpDate3 = [NSDate date];
    [ZJSort bubbleSort:[NSMutableArray arrayWithArray:array]];
    double time3 = [[NSDate date] timeIntervalSinceDate:tmpDate3];
    NSLog(@"-----------%f",time3);

    //快速排序
    NSDate *tmpDate4 = [NSDate date];
    [ZJSort quickSort:[NSMutableArray arrayWithArray:array] low:0 high:(int)[array count]-1];
    double time4 = [[NSDate date] timeIntervalSinceDate:tmpDate4];
    NSLog(@"-----------%f",time4);

}


@end
