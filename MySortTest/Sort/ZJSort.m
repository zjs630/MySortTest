//
//  ZJSort.m
//  排序算法
//
//  Created by ZhangJingshun on 2017/3/15.
//  Copyright © 2017年 zjs. All rights reserved.
//

#import "ZJSort.h"

@implementation ZJSort



/**
 选择排序
 */
+ (void)selectSort:(NSMutableArray *)m {
    NSUInteger count = [m count];
    int min = 0; //指定一个最小的标记
    id temp;
    //n个数，每次外循环，从未排序的数组中找出一个最小的数。需要找n-1次可以完成排序。
    for (int i = 0; i< count-1; i++) {
        min = i;//第几次外循环，把第几个数，默认标记为最小的数
        //内循环，每循环完一次，开始循环的起始位置，要增加一个。所以循环i次，j=1+i。
        for (int j = i+1; j < count; j++) {
            if ([m[min] intValue] > [m[j] intValue]) {//第一次 第一个数和第二个数比较，找出最小数，和下个数比较。
                min = j;//a[min]始终记录当前最小的数
            }
        }
        //查找到最小数后，看看需不需要交换，
        if (min != i) {//最小数和a[i]交换位置
            temp = m[i];
            m[i] = m[min];//第i次循环，将最小的数放入数组的第i个位置。
            m[min] = temp;
        }
    }
    // NSLog(@"选择排序 %@",m);
}

/**
 冒泡排序
 */
+ (void)bubbleSort:(NSMutableArray *)m {
    NSUInteger count = [m count];
    id temp;
    //n个数，每次外循环，找出一个最大的数。放在后面。需要找n-1次可以完成排序。
    for (int i = 0; i < count-1; i++) {
        //内循环，每循环万一次，结束循环的条件，要减少一个，所以循环i次，结束条件要减i。
        for (int j = 0; j < count-i-1; j++) {
            //比较相邻的元素。如果第一个比第二个大，就交换他们两个。
            //对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。这时最后的元素应该会是最大的数。
            //下一趟i循环，排除最后一个元素。//这样每次对比的元素原来越少。
            if([m[j] intValue] > [m[j+1] intValue]){
                //交换
                temp = m[j];
                m[j] = m[j+1];
                m[j+1] = temp;
            }
        }
    }
    // NSLog(@"冒泡排序 %@",m);
}

/**
 插入排序
 */
+ (void)insertSort:(NSMutableArray *)m {
    NSUInteger count = [m count];
    int i,j;
    id temp; //记录当前要准备插入的值
    //初始时，假设把第一个数自成一个有序序列，其余的记录为无序序列；
    //接着从第二个记录开始，按着记录的大小，依次将当前处理的记录插入到前面的有序序列中，直到最后一个记录插入到有序序列中为止，
    //外循环，架设有总共有N个数，i从第二个数开始依次插入，需要插入n-1个数。即需要进行N-1次循环。
    for (i = 1; i < count; i++) {
        temp = m[i];//准备将第i个数插入到前面
        //内循环，从有序序列的后面往前依次进行比较。比较起始位置的最后一个数下标为：i-1，一直到下标为0到数结束。
        for (j = i-1; j >= 0; j--) {
            if ([temp intValue] < [m[j] intValue]) {//如果要插入的数temp，比要比较的数m[j]值小，
                m[j+1] = m[j];//m[j]后移一个位置
            }else{//如果temp大于比较的数，则结束内循环。若没有执行else，则说明temp要放入第一个位置。
                break;
            }
        }
        m[j+1] = temp;//如遇到break，要插入的数位置为j+1，如一直没有遇到break,此时j为-1，所以要放入的位置为j+1；
    }
    // NSLog(@"插入排序 %@",m);
}


/**
 快速排序1 已将此OC版本算法提交到百度词条，可搜索"快速排序"
 @param low  排序开始时 low = 0
 @param high 排序开始时 high = 数组个数-1
 */
+ (void)quickSort:(NSMutableArray *)m low:(int)low high:(int)high{
    if (low >= high) {
        return;
    }
    int i = low;
    int j = high;
    id key = m[i];
    while (i<j) {
        while (i<j && [m[j] intValue] >= [key intValue]) {
            j--;
        }
        if (i == j) { // 当key是最小的数时，会出现i=j的情况，
            break; //直接跳出循环，没有必要用continue
        }
        m[i++] = m[j]; // 说明m[j]小于关键值，将其放置到前面i位置、、//j位置等下面找到一个大数后，覆盖。
        
        // 接着从前面i+1的位置找大于key的值。//不加1会多一次比较
        while (i < j && [m[i] intValue] <= [key intValue]) {
            i++;
        }  // 从前面开始找到大于key的值，放到后面。
        if (i == j) { // 当key是目前最大的数时(m[j]的前面)，会出现i=j的情况
            break;
        }
        m[j--] = m[i]; // 将前面大于key的数放置到后面 、、这样一直循环替换。
        // j-- 会减少一次m[j]和key的比较
    }
    m[i] = key;/*当在当组内找完一遍以后就把中间数key回归*/
    [self quickSort: m low: low high: i-1];
    [self quickSort: m low: i+1 high: high];
    // NSLog(@"快速排序 %@",m);
}

/**
 快速排序2
 @param low  排序开始时 low = 0
 @param high 排序开始时 high = 数组个数-1
 */
+ (void)quickSort2:(NSMutableArray *)m low:(int)low high:(int)high{
    if (low >= high) {
        return;
    }
    int i = low;
    int j = high;
    id key = m[i];
    while (i<j) {
        while (i<j && [m[j] intValue] >= [key intValue]) {
            j--;
        }
        m[i] = m[j]; // 说明m[j]小于关键值，将其放置到前面i位置、、//j位置等下面找到一个大数后，覆盖。
        
        // 接着从前面i+1的位置找大于key的值。//不加1会多一次比较
        while (i < j && [m[i] intValue] <= [key intValue]) {
            i++;
        }  // 从前面开始找到大于key的值，放到后面。
        m[j] = m[i]; // 将前面大于key的数放置到后面 、、这样一直循环替换。
        // j-- 会减少一次m[j]和key的比较
    }
    m[i] = key;/*当在当组内找完一遍以后就把中间数key回归*/
    [self quickSort2: m low: low high: i-1];
    [self quickSort2: m low: i+1 high: high];
}


@end
