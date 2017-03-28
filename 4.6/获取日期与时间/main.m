//
//  main.m
//  获取日期与时间
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取时间
        NSDate *date = [NSDate date];
        //打印当前标准时间
        NSLog(@"国际标准时间: %@", date);
        /*将当前世界标准时间转换成本地时间*/
        // 获取系统当前时区
        NSTimeZone *zone = [NSTimeZone systemTimeZone];
        // 获取当前时区与格林尼治时间的间隔
        NSInteger interval = [zone secondsFromGMTForDate:date];
        // 获取本地时间
        NSDate *localDate = [NSDate dateWithTimeIntervalSinceNow:interval];
        NSLog(@"当前时区时间: %@", localDate);
    }
    return 0;
}
