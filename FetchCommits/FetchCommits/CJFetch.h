//
//  CJFetch.h
//  FetchCommits
//
//  Created by 陈炯 on 2017/4/24.
//  Copyright © 2017年 Jiong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface CJFetch : NSObject

- (void)fetchCommitsForRepo:(NSString*)repo;

@end
NS_ASSUME_NONNULL_END
