//
//  Student.h
//  ObjectCStudy
//
//  Created by 郭祥瑞 on 2023/8/6.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Student : NSObject {
    int _stuNum; // 官方推荐成员变量以 _ 开头
    int _age;
    NSString *_name;
    @public
    NSString * _publicName;
}

- (void)sayHi;

// 构造函数必须以 init 开头，第一个参数跟方法名连在一起了（但其实方法名全称为：initWithStuNum:Age:name:）
// Age 和 Name 是方法签名的一部分，其实可以把 Age 和 Name 省略掉，只写冒号即可（但不推荐）
- (instancetype)initWithStuNum:(int)stuNum Age:(int)age Name:(NSString *) name;

// set
- (void)setAge:(int)age;

// get
- (int)age;

// set 和 get 的简便写法，会自动生成 _money 变量和 setMoney、money 方法的声明和实现
// nonatomic: 非原子性（原子性是默认值）
// assign: set 直接赋值，默认选项可不写（NSString 一般使用 copy）
// 更多: https://github.com/ZhongWentao2002/iOS_Blog/blob/main/%40property%20%E3%80%81%40synthesize%E3%80%81%40dynamic.md
@property (nonatomic,assign) int money;

// Lv3
@property (nonatomic) Book *book;
- (void)readBook;

@end
