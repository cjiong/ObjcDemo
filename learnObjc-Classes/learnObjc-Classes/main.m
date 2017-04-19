//
//  main.m
//  learnObjc-Classes
//
//  Created by 陈炯 on 2017/4/18.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [Person new];
        [person printGreeting];
        
        // main.m 文件里只引入头文件，通过头文件里的接口调用这个类的属性和方法
        // 写在实现文件里的方法，不管在头文件里面的接口是否暴露出来，都是可以在实现文件里调用。
        // 也就是说，只要这个方法不在头文件里出现，它就是完全私有的。
        
        Person *person1 = [Person new];
        [person1 printGreetingWithParameters:@"James"];
        
        Person *person2 = [Person new];
        [person2 printGreetingTo:@"James" atTimeOfDay:@"afternoon"];
        
        // Calling selectors with parameters 调用带参数的选择器
        [person performSelector:@selector(printGreeting)];
        
        [person performSelector:@selector(printGreetingWithParameters:) withObject:@"Taylor"];
        [person performSelector:@selector(printGreetingTo:atTimeOfDay:) withObject:@"Taylor" withObject:@"morning"];
        
        [Person genericGreeting];
    }
    return 0;
}
