//
//  CJApp.m
//  Quotes
//
//  Created by 陈炯 on 2017/4/23.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import "CJApp.h"

@implementation CJApp

- (instancetype)initWithFile:(NSString *)filename {
    
    if (self = [super init]) {
        NSError *error;
        NSString *contents = [NSString stringWithContentsOfFile:filename usedEncoding:nil error:&error];
        if (error != nil) {
            NSLog(@"Fatal error: %@", [error localizedDescription]);
            exit(0);
        }
        
        NSArray *lines = [contents componentsSeparatedByString:@"\n"];
        self.quotes = [NSMutableArray arrayWithCapacity:[lines count]];
        
        for (NSString *line in lines) {
            CJQuote *quote = [[CJQuote alloc] initWithLine:line];
            if (quote != nil) {
                [self.quotes addObject:quote];
            }
        }
    }
    
    return self;
}

- (void)printQuote {
    NSInteger random = arc4random_uniform((u_int32_t)[self.quotes count]);
    CJQuote *selected = self.quotes[random];
    printf("%s\n", [selected.text cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("\t - %s\n", [selected.person cStringUsingEncoding:NSUTF8StringEncoding]);
}

@end
