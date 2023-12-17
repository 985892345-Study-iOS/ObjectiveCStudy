//
//  Chapter1.m
//  ObjectiveCBookStudy
//
//  Created by 郭祥瑞 on 2023/12/16.
//

#import <Foundation/Foundation.h>

// 书籍：《突破，Objective-C开发速学手册》
// https://weread.qq.com/web/reader/b32320405a0518b323e16e9

#pragma mark 1.4.3 注释

// Objective-C 里面注释分为三种：

// 单行注释：//          快捷键：command + /

// 多行注释：/* */       快捷键：打出 /* 后回车
/*
 这是一个多行注释
 */

// 文档注释：

@interface Chapter1 : NSObject

/**
 方法注释，按住 option 点击方法即可查看
 @brief 这个是概要
 @param name 方法参数
 @return 返回值
 @throw 异常
 */
+ (int)test1: (NSString*) name;


/**
 注释支持 Markdown
 
 [土土Edmond木](https://looseyi.github.io/)
 
 # 标题一
 You can apply *italic*, **bold**, or `code` inline styles.
 
 ## 标题二
 1. 第一
 2. 第二
 
 ## 一些注意事项
 - 支持 Markdown
 - 但不知道概要为什么必须要英文开头
 - 还有不能跟 brief 方法注释连用
 - 第一行还不能中文开头，差评
 - 不能出现 阿特
 */
+ (int)test2: (NSString*) name;

@end

// 还有打三个斜杠的文档注释，这个暂时不知道有什么大的用处：https://looseyi.github.io/post/tool/cocoa-documentation-1/


