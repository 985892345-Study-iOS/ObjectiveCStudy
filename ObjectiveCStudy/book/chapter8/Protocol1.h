//
//  Protocol1.h
//  ObjectiveCBookStudy
//
//  Created by 郭祥瑞 on 2023/12/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Protocol1 <NSObject> // 这里其实 NSObject 就是一个协议

// 协议类似于 Java 中的接口
// 1. 允许协议实现另一个协议
// 2. 一个类可以实现多个协议

/*
 #import "Protocol1.h" // 引入协议文件

 @interface Chapter8 : NSObject<Protocol1> // 使用 <> 实现协议，多个协议以逗号分隔
 */

// 判断是否实现了某协议
// if ([类名 conformsToProtocol:@protocol(协议名)] == 1) {}
// 例子：
// if ([Chapter8 conformsToProtocol:@protocol(Protocol1) == 1]) {}

// 协议中有三种方法申明：
// 1. 默认申明：强制实现
// 2. @required 申明：需要实现（但不实现时会警告但能跑。。。）
// 3. @optional 申明：可选实现
// 例子：
- (void)default1;
- (void)default2;
@required
- (void)required1;
- (void)required2;
@optional
- (void)optional1;
- (void)optional2;

@end

NS_ASSUME_NONNULL_END
