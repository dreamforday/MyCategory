//
//  ResourceManager.m
//  LaiFeng
//
//  Created by xinliu on 14-4-24.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#import "ResourceManager.h"
#import "LFCategory.h"
#import "AppMacro.h"

@interface ResourceManager()
@property(nonatomic,strong)NSArray* moodsCache;
@end

@implementation ResourceManager
+(ResourceManager*)shareInstance
{
    static dispatch_once_t onceToken;
    static id sharedObject = nil;
    dispatch_once(&onceToken, ^{
        sharedObject = [[ResourceManager alloc] init];
    });
    return sharedObject;
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(id)init
{
    self = [super init];
    if(self) {
        _resImagesCache = [[NSMutableDictionary alloc] init];
        _commonBundle = [self getCommonBundle];
        [self setStyleConfigCache];
        _moodsCache =[[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"moodsDesc" ofType:@"plist"]];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(clearImageCache)
                                                     name:UIApplicationDidReceiveMemoryWarningNotification
                                                   object:nil];
    }
    return self;
}

-(void)clearImageCache
{
    [_resImagesCache removeAllObjects];
}

-(void)setStyleConfigCache
{
    NSString *plistPath=[_commonBundle pathForResource:CONFIG_PLIST_PATH ofType:@"plist"];
    _resStyleCache = [NSMutableDictionary dictionaryWithContentsOfFile:plistPath];
}

-(NSBundle*)getCommonBundle
{
    NSString* filePath = [[NSBundle mainBundle] bundlePath];
    NSString* bundlePath = [NSString stringWithFormat:@"%@/%@",filePath,[SYSTEM_STYLE_COMMON_BUNDLE substringFromIndex:BUNDLE_PREFIX.length]];
    return [NSBundle bundleWithPath:bundlePath];
}

-(NSArray*)getMoodsFromPlist {
    if(!_moodsCache) {
        _moodsCache =[[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"moodsDesc" ofType:@"plist"]];
    }
    return _moodsCache;
}

-(UIImage*)moodImageKeyForId:(NSInteger)moodId {
    NSArray* array = [self getMoodsFromPlist];
    for (id info in array) {
        NSInteger moodTag = [info intForKey:@"moodTag" withDefault:0];
        if(moodId == moodTag) {
            return [UIImage imageForKey:info[@"moodImageName"]];
        }
    }
    return nil;
}

@end
