//
//  main.m
//  日期格式转换
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
        
        /*日期格式转换*/
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        //设置日期格式，注意大小写严格区分
        df.dateFormat =  @"yyyy年MM月dd日 HH:mm:ss";
        // 将日期按照格式器设置的格式转化为字符串
        NSString *date2string = [df stringFromDate:date];
        NSLog(@"日期转字符串：%@", date2string);
        // 将格式器格式的日期字符串转换成日期对象
        NSDate *string2date = [df dateFromString:date2string];
        NSLog(@"字符串转日期：%@", string2date);
    }
    return 0;
}
