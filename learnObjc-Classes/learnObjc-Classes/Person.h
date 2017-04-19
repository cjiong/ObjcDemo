//
//  Person.h
//  learnObjc-Classes
//
//  Created by 陈炯 on 2017/4/18.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject 

- (void)printGreeting;

- (void)printGreetingWithParameters:(NSString*)greeting;

- (void)printGreetingTo:(NSString*)name atTimeOfDay:(NSString*)time;

+ (void)genericGreeting;

+ (instancetype)personWithName:(NSString*)name;

@end
