//
//  main.m
//  Quotes
//
//  Created by 陈炯 on 2017/4/23.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CJApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = [paths objectAtIndex:0];
        CJApp *app = [[CJApp alloc] initWithFile:[desktopPath stringByAppendingPathComponent:@"quotes.rtf"]];
        [app printQuote];
    }
    return 0;
}
