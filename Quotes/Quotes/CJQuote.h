//
//  CJQuote.h
//  Quotes
//
//  Created by 陈炯 on 2017/4/23.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface CJQuote : NSObject

@property NSString *text;
@property NSString *person;

- (nullable instancetype)initWithLine:(NSString*)line;

@end
NS_ASSUME_NONNULL_END
