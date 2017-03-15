//
//  ViewController.m
//  MySortTest
//
//  Created by ZhangJingshun on 2017/3/15.
//  Copyright © 2017年 zjs. All rights reserved.
//

#import "ViewController.h"
#import "ZJSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self sort];
}

- (void)sort{
    NSArray *array = @[@11,@2,@9,@8,@3,@1,@7,@6,@5];
    
    //选择排序
    [ZJSort selectSort:[NSMutableArray arrayWithArray:array]];
    //插入排序
    [ZJSort insertSort:[NSMutableArray arrayWithArray:array]];
    //冒泡排序
    [ZJSort bubbleSort:[NSMutableArray arrayWithArray:array]];
    //快速排序
    [ZJSort quickSort:[NSMutableArray arrayWithArray:array] low:0 high:(int)[array count]-1];
}


@end
