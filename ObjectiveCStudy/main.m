//
//  main.m
//  ObjectCStudy
//
//  Created by 郭祥瑞 on 2023/8/6.
//

// import 可以防止重复导入，而 include 就会造成这个问题
#import <Foundation/Foundation.h>

#import "Class1.h"

// command + r: 运行
// command + b: 编译
// command + k: 清理报错，重新检查
// command + n: 新建文件 (iOS 开发时一般选择 Cocoa Touch Class)

// ctrl + command + <-/-> 回到上一处/下一处


int main(int argc, const char * argv[]) {
    
    // 按住 option 键点击方法名会显示注释，等同于 idea 的 command + p
    [Class1 run];
    
    return 0;
}
