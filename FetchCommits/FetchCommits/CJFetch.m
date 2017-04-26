//
//  CJFetch.m
//  FetchCommits
//
//  Created by 陈炯 on 2017/4/24.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import "CJFetch.h"

@implementation CJFetch

- (void)fetchCommitsForRepo:(NSString *)repo {
    
#pragma mark - download JSON file
    NSString *urlString = [NSString stringWithFormat:@"https://api.github.com/repos/%@/commits", repo];
    NSURL *url = [NSURL URLWithString:urlString];
    NSError *error;
    NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingUncached error:&error];
    if (error != nil) {
        NSLog(@"Fatal error : %@", [error localizedDescription]);
        exit(0);
    }
    
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error != nil) {
        NSLog(@"Fatal error : %@", [error localizedDescription]);
        exit(0);
    }
    
    for (NSDictionary *entry in json) {
        NSString *name = entry[@"commit"][@"author"][@"name"];
        NSString *message = entry[@"commit"][@"message"];
        message = [message stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
        
        printf("%s: %s\n\n", [name cStringUsingEncoding:NSUTF8StringEncoding], [message cStringUsingEncoding:NSUTF8StringEncoding]);
    }
    
}

@end
