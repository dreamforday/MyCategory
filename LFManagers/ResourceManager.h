//
//  ResourceManager.h
//  LaiFeng
//
//  Created by xinliu on 14-4-24.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ResourceManager : NSObject
@property(nonatomic,strong)NSMutableDictionary* resImagesCache;
@property(nonatomic,strong)NSMutableDictionary* resStyleCache;
@property(nonatomic,strong)NSBundle* commonBundle;
+(ResourceManager*)shareInstance;
-(NSArray*)getMoodsFromPlist;
-(UIImage*)moodImageKeyForId:(NSInteger)moodId;
@end
