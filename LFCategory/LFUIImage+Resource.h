//
//  UIImage+Resource.h
//  LaiFeng
//
//  Created by xinliu on 14-4-24.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImage(LFResourceAdditions)

+(UIImage*)imageForKey:(NSString*)key;



/*!
 *  @brief  获取skin_common.bundle/Images中的图片
 *
 *  @param name 图片文件名称
 *
 *  @return 图片对象/如果没有返回空
 */
+ (UIImage*)LFImageNamed:(NSString*)name;


/*!
 *  @brief  获取skin_common.bundle/Images/Emotions中的表情
 *
 *  @param name 表情文件名称
 *
 *  @return 图片对象/如果没有返回空
 */
+ (UIImage*)LFEmotionWithName:(NSString*)name;
@end
