//
//  main.m
//  FetchCommits
//
//  Created by 陈炯 on 2017/4/24.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CJFetch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *repo = @"cjiong/LearnSwiftAnimation";
        
        if (argc == 2) {
            repo = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        }
        
        CJFetch *fetch = [CJFetch new];
        [fetch fetchCommitsForRepo:repo];
    }
    return 0;
}
