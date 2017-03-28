//
//  main.m
//  其他常用操作
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>
void dateOperation () {
    NSDate *date1 = [NSDate date];
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:10];
    
    //比较两个时间的先后
    NSDate *tempDate = [[NSDate alloc] init];
    // 返回比较早的那个时间
    tempDate = [date1 earlierDate:date2];
    NSLog(@"earlierDate : %@", tempDate);
    // 返回比较晚的那个时间
    tempDate = [date1 laterDate:date2];
    NSLog(@"laterDate : %@", tempDate);
    
    //比较两个时间的间隔(程序运行耗时的原因，会有微小的误差）
    NSTimeInterval timeInterval = [date2 timeIntervalSinceDate:date1];
    NSLog(@"interval = %f", timeInterval);
    
    // 比较两个日期是否相等
    if ([date1 isEqualToDate:date2]) {
        NSLog(@"date1 与 date2 相同");
    } else {
        NSLog(@"date1 与 date2 不同");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dateOperation();
    }
    return 0;
}
