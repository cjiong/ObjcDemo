//
//  CJApp.h
//  Quotes
//
//  Created by 陈炯 on 2017/4/23.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CJQuote.h"

NS_ASSUME_NONNULL_BEGIN
@interface CJApp : NSObject

@property NSMutableArray<CJQuote *> *quotes;

- (instancetype)initWithFile:(NSString*)filename;

- (void)printQuote;

@end
NS_ASSUME_NONNULL_END
