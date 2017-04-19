 //
//  Person.m
//  learnObjc-Classes
//
//  Created by 陈炯 on 2017/4/18.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)printGreeting {
    NSLog(@"Hello!");
}

// - 表示实例方法， + 表示类方法
// 返回值的类型写在方法名前面
// 注意空格的位置，- 后面是有空格的，（viod）和方法名之间没有空格


// Naming parameters  命名参数
- (void)printGreetingWithParameters:(NSString*)greeting {
    NSLog(@"Hello, %@", greeting);
}

- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        NSLog(@"Good morning, %@", name);
    } else {
        NSLog(@"Good afternoon, %@", name);
    }
}

// Multiple return values 多返回值
- (NSDictionary*)fetchGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time {
    if ([time isEqualToString:@"morning"]) {
        return @{
                 @"English": [NSString stringWithFormat:@"Good morning, %@", name],
                 @"French": [NSString stringWithFormat:@"Good morning, %@", name]
                 };
    } else {
        return @{
                 @"English": [NSString stringWithFormat:@"Good afternoon, %@", name],
                 @"French": [NSString stringWithFormat:@"Good afternoon, %@", name]
                 };
    }
}

// Class Methods 类方法
+ (void)genericGreeting {
    NSLog(@"Greetings, earthlings.");
}

+ (instancetype)personWithName:(NSString*)name {
    return [[self alloc] initWithName:name];
}
@end
