//
//  NSObject+LFAddForNotification.h
//  LaiFeng
//
//  Created by guoyaoyuan on 16/2/23.
//  Copyright © 2016年 live Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LFAddForNotification)

- (void)addNotifName:(NSString *)notifName block:(void(^)(NSNotification *notif))block;
- (void)removeNotifName:(NSString *)notifName;
- (void)removeAllNotif;

@end
