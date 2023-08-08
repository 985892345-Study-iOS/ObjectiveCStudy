//
//  Student.m
//  ObjectCStudy
//
//  Created by 郭祥瑞 on 2023/8/6.
//

#import "Student.h"

@implementation Student

- (void)sayHi {
    NSLog(@"I'm  %@", _name);
}

- (instancetype)initWithStuNum:(int)stuNum Age:(int)age Name:(NSString *)name {
    if (self = [super init]) { // 注意这里只有一个等号，是赋值值操作
        _stuNum = stuNum;
        _age = age;
        _name = name;
    } else {
        NSLog(@"初始化失败"); // 这个一般都不会出现，所以可以不写
    }
    return self;
}

- (void)setAge:(int)age {
    _age = age;
}

- (int)age {
    return _age;
}

- (void)readBook {
    NSLog(@"Student %@ read %@ book", _name, _book.name);
}

@end
