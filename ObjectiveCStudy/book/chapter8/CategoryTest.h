//
//  CategoryTest.h
//  ObjectiveCBookStudy
//
//  Created by 郭祥瑞 on 2023/12/17.
//

#import <Foundation/Foundation.h>
#import "Chapter8.h"

NS_ASSUME_NONNULL_BEGIN

@interface Chapter8(CategoryTest)

// 分类可以给原有的类扩展方法。类似于 kt 的扩展方法
// 1. 但分类只能扩展方法，不能扩展变量
// 2. 分类不能被实例化
// 3. 同名方法时分类中的扩展方法优先级大于原有方法
- (void)extension;

// 静态方法也支持扩展
+ (void)staticFunction;

@end

NS_ASSUME_NONNULL_END
