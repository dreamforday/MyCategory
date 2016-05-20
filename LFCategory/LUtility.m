//
//  LUtility.m
//  LaiFeng
//
//  Created by xinliu on 14-4-25.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#import "LUtility.h"
#include <sys/sysctl.h>

@implementation LUtility
+ (BOOL)isHigherIOS6
{
    NSString *requestSysVer = @"6.0";
    NSString *currentSysVer = [[UIDevice currentDevice] systemVersion];
    
    if ([currentSysVer compare:requestSysVer options:NSNumericSearch] == NSOrderedAscending) {
        return NO;
    }
    
    return YES;
}

+ (BOOL)isHigherIOS7
{
    static BOOL is = NO;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *requestSysVer = @"7.0";
        NSString *currentSysVer = [[UIDevice currentDevice] systemVersion];
        
        if ([currentSysVer compare:requestSysVer options:NSNumericSearch] != NSOrderedAscending) {
            is = YES;
        }
    });
    return is;
}

+ (NSDictionary *)urlQueryInfo:(NSString *)query
{
    if (0 >= query.length) {
        return nil;
    }
    
    NSMutableDictionary *queryDict = [NSMutableDictionary dictionary];
    NSArray             *queries = [query componentsSeparatedByString:@"&"];
    
    for (NSString *perQuery in queries) {
        NSArray *pairOfKeyVakue = [perQuery componentsSeparatedByString:@"="];
        
        if (2 != pairOfKeyVakue.count) {
            continue;
        }
        
        [queryDict setObject:pairOfKeyVakue[1] forKey:pairOfKeyVakue[0]];
    }
    
    return queryDict;
}

+ (NSString *) machineModel{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *machineModel = [NSString stringWithUTF8String:machine];
    free(machine);
    return machineModel;
}

+ (NSString*)currentDevice
{
    return [[UIDevice currentDevice] systemVersion];
}


//>是否是有效的邮箱号
+ (BOOL)isValidateEmail:(NSString *)email
{
    
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:email];
    
}

//>数字分隔符（3位一分割）
+(NSString *)changeNumberFormat:(long long)num
{
    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setFormatterBehavior: NSNumberFormatterBehavior10_4];
    [numberFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    NSString *numberString = [numberFormatter stringFromNumber: [NSNumber numberWithLongLong:num]];
    return numberString;
}

+(CAKeyframeAnimation*)selectAnimation {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    CATransform3D scale0 = CATransform3DMakeScale(1.0, 1.0, 1);
    CATransform3D scale1 = CATransform3DMakeScale(1.4, 1.4, 1);
    CATransform3D scale2 = CATransform3DMakeScale(0.84, 0.84, 1);
    CATransform3D scale3 = CATransform3DMakeScale(1.05, 1.05, 1);
    CATransform3D scale4 = CATransform3DMakeScale(1.0, 1.0, 1);
    animation.values = @[[NSValue valueWithCATransform3D:scale0],
                         [NSValue valueWithCATransform3D:scale1],
                         [NSValue valueWithCATransform3D:scale2],
                         [NSValue valueWithCATransform3D:scale3],
                         [NSValue valueWithCATransform3D:scale4]];
    animation.keyTimes = @[@0 ,@0.25, @0.5, @0.75, @1];
    animation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    animation.duration = 0.6f;
    return animation;
}


@end
