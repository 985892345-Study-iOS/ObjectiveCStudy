//
//  Chapter2.m
//  ObjectiveCBookStudy
//
//  Created by 郭祥瑞 on 2023/12/16.
//

#import "Chapter2.h"

#pragma mark 2

@implementation Chapter2

+ (void)printNumber {
    // 输出十进制整型
    NSLog(@"%i", 10);
    // 输出小数
    NSLog(@"%f", 0.01);
    // 输出 char
    NSLog(@"%c", 'c');
    // 输出字符串 (10.2章)
    NSLog(@"%@", @"输出字符串");
    // 使用 stringWithFormat 拼接字符串，输出结果为：Hello Objective-C
    NSLog(@"%@", [NSString stringWithFormat:@"Hello %@", @"Objective-C"]);
    // 使用 stringByAppendingString 在后面增加字符串
    NSLog(@"%@", [@"Hello " stringByAppendingString:@"Objective-C"]);
    
    if ([@"abc" isEqualToString:@"123"]) {
        // 判断字符串是否相等
    }
    
    // 其他函数：
    // hasPrefix：判断开头字符串
    // uppercaseString：小写转大写
    // lowercaseString：大写转小写
    // substringToIndex：截取字符串，从 index = 0 开始
    
    // NSString 等同于 Java 的 String，是不可变的
    // NSMutableString 等同于 Java StringBuilder，可变
    NSMutableString *mutableString = [NSMutableString stringWithString:@"123"];
    
    // NSMutableString 的常见方法有：
    // appendString：附加字符串
    // appendFormat：附加格式化的字符串，用法于上文的 stringWithFormat 一致
    
    
    // 常量，使用时会被替换
    const int PI = 3.1415;
}

@end
