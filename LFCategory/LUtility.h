//
//  LUtility.h
//  LaiFeng
//
//  Created by xinliu on 14-4-25.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LUtility : NSObject
+ (BOOL)isHigherIOS6;
+ (BOOL)isHigherIOS7;
+ (NSDictionary *)urlQueryInfo:(NSString *)query;
+ (NSString *)machineModel;
+ (NSString*)currentDevice;

//>是否是有效的邮箱号
+ (BOOL)isValidateEmail:(NSString *)email;
//>数字分隔符（3位一分割）
+(NSString *)changeNumberFormat:(long long)num;

+(CAKeyframeAnimation*)selectAnimation;

@end
