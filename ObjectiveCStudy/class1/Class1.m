//
//  Class1.m
//  ObjectCStudy
//
//  Created by 郭祥瑞 on 2023/8/7.
//

#import "Class1.h"
#import "Student.h"

@implementation Class1

+ (void)run {
    
    NSLog(@"Hello, World!");
    
    // https://www.runoob.com/w3cnote/objective-c-tutorial.html
    // 创建对象，并调用构造函数
    NSObject *obj1 = [[NSObject alloc] init];
    // 在Objective-C 2.0里，若创建对象不需要参数，则可直接使用new
    NSObject *obj2 = [NSObject new];
    NSLog(@"obj1 = %@", obj1);
    NSLog(@"obj2 = %@", obj2);
    
    // 类的申明与实现
    Student *stu = [[Student alloc] initWithStuNum:12345 Age:18 Name:@"Jack"];
    stu->_publicName = @"Marry";
    NSLog(@"%@", stu->_publicName);
    
    // 调用实例方法
    [stu sayHi];
    
    // 对于 set 和 get 方法，OC 中提供了 . 语法，其实质还是转换成 []
    stu.age = 20;
    NSLog(@"%d", stu.age);
    
    // @property 验证，已自动生成 set 和 get 方法
    stu.money = 100;
    NSLog(@"%d", stu.money);
    
    // Lv3
    Book *book = [[Book alloc] init];
    book.name = @"Android";
    stu.book = book;
    [stu readBook];
}

@end
