//
//  Chapter6.m
//  ObjectiveCBookStudy
//
//  Created by 郭祥瑞 on 2023/12/16.
//

// 因为 第三章 到 第五章 讲的都是 C 语言基础，所以直接跳过了

#import "Chapter6.h"

// 这个叫类的定义，如果对比 java 来说就是类的实现
@implementation Chapter6



+ (void)run {
    // 实例化对象
    // OC 确实有点怪，调用方法不是打 ()，而是用 []
    // 其实这是因为 OC 里面不叫调用方法，而叫给发送消息 (后文更多的会称呼发消息而不是调用方法)
    
    // 上古 OC new 实例时需要两步
    // 第一步：发送 alloc，分配空间
    Chapter6 *chapter1 = [Chapter6 alloc];
    // 第二步：发送 init，初始化对象
    chapter1 = [chapter1 init];
    
    // 可以直接合并为一步
    Chapter6 *chapter2 = [[Chapter6 alloc] init];
    
    // Xcode 方法提示出来时 先按 回车 再按 ]
    
    // 现在的 OC new 实例直接发送 new 即可
    Chapter6 *chapter3 = [Chapter6 new];
}

// + 是类方法
+ (void)function1 {
    
}

// - 是对象方法
- (void)function2 {
    
}

// OC 的方法参数很奇怪：-/+ (返回值)方法名:(参数类型1)参数名1 方法名2:(参数类型2)参数名2 ....
+ (void)function3:(int)a second:(NSString *)b {
    // 发送时（调用方法时）self 指本身，等同于 java 的 this（但这里类方法可以使用 self ? 我也不知道原因）
    [self function3:123 second:@"456"];
}

# pragma mask 6.4 属性

// 这一章节书上有些过时，推荐看网校钟文涛大佬的讲解
// https://github.com/ZhongWentao2002/iOS_Blog/blob/main/%40property%20%E3%80%81%40synthesize%E3%80%81%40dynamic.md

// @property    用于申明变量的 setter 和 getter 方法，所以只用于头文件中
// @synthesize  用于定义变量的 setter 和 getter 方法，所以只用于实现文件中
// 目前 Xcode4.5 版本后 @property 得到增强，不需要再写 @synthesize

@end
