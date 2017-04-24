//
//  CJQuote.m
//  Quotes
//
//  Created by 陈炯 on 2017/4/23.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import "CJQuote.h"

@implementation CJQuote

- (instancetype)initWithLine:(NSString *)line {
    if (self = [super init]) {
        NSArray *split = [line componentsSeparatedByString:@"/"];
        if ([split count] != 2) {
            return nil;
        }
        
        self.text = split[0];
        self.person = split[1];
    }
    return self;
}

@end
