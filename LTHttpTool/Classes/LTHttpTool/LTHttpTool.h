//
//  LTHttpTool.h
//  two
//
//  Created by wangtao on 2020/1/2.
//  Copyright © 2020 wangtao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTHttpTool : NSObject
//get方式进行请求
-(void)get:(NSString*)url params:(NSDictionary*)dic suc:(void(^)(id results))sucBlock fail:(void(^)(NSString *error,NSInteger status))failBlock;
@end

NS_ASSUME_NONNULL_END
