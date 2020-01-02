//
//  LTHttpTool.m
//  two
//
//  Created by wangtao on 2020/1/2.
//  Copyright © 2020 wangtao. All rights reserved.
//

#import "LTHttpTool.h"
#import <AFNetworking/AFNetworking.h>

@implementation LTHttpTool
-(void)get:(NSString*)url params:(NSDictionary*)dic suc:(void(^)(id results))sucBlock fail:(void(^)(NSString *error,NSInteger status))failBlock {
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[[NSURL alloc] initWithString:url]];
    [manager GET:@"" parameters:dic progress:nil
        success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
          // Success
        sucBlock(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
          // error
            failBlock(@"",5);
    }];
}
@end
