//
//  AppMarco.h
//  LaiFeng
//
//  Created by xinliu on 14-4-24.
//  Copyright (c) 2014年 live Interactive. All rights reserved.
//

#ifndef LaiFeng_AppMarco_h
#define LaiFeng_AppMarco_h

#define BUNDLE_PREFIX    @"bundle://"
#define SYSTEM_STYLE_COMMON_BUNDLE @"bundle://skin_common.bundle"
#define CONFIG_PLIST_PATH    @"/styleConfig"

//友盟appKey
#define UMENG_APPKEY @"5369c50456240b534f00a335"

// 公共目录名
#define kCommonDir @"common"

#define kPersistDir @"persistDir"

#define kLastUserAccount @"lastUserAccount"

#define kLoginedUserID @"loginedUserID"

#define kCPSChannelId @"kCPSChannelId"

#define kSearchHistory @"searchHistory"

#define kRecommendAttention @"recommendAttention"

#define kGiftSign @"giftSign"

#define kGiftAnimation @"kGiftAnimation"

#define kDanmukuOpened @"kDanmukuOpened"

#define kAutoPlayAudioUnder3G @"kAutoPlayAudioUnder3G"

#define kAttentionsPrivacy @"kAttentionsPrivacy"

#define kApiUrlIndex @"apiUrlIndex"

#define kFirstOpenAppFlag @"FirstOpenAppFlag"

#define kSecondOpenAppFlag @"SecondOpenAppFlag"

#define kFirstGetAppInfoFlag @"FirstGetAppInfoFlag"

#define kFirstFlowing @"FirstFlowing"

#define kPurchaseRequestDic @"PurchaseRequestDic"

#define kUUIDForApp @"UUIDForApp"

#define KShowMedalSign @"ShowMedalSign"

#define KShowMedalConfig @"ShowMedalConfig"

#define KLocationcityNameConfig @"KLocationcityNameConfig"

#define KShowCommunityGuideFlag @"ShowCommunityGuideFlag"

#define KMedalStageArray @"MedalStageArray"

//用户送礼出现combo次数（3次以内提示toast）
#define KGiftComboCount  @"GiftComboCount"
//app全局业务开关
#define KLiveRedpack @"liveRedpack"
#define KLiveGift  @"liveGift"
#define KLiveTopic  @"liveTopic"
#define KLiveTopicWithTheme  @"liveTopicWithTheme"
#define KUserShareTopic @"userShareTopic"
#define KUserShareTopicWithTheme  @"userShareTopicWithTheme"
#define KShareRedPackets  @"shareRedPackets"
#define kSharePraiseWin @"sharePraiseWin"
#define kPersonalPackedRatio @"PersonalPackedRatio"
#define KShareDefaultText @"我正在看来疯直播，精彩瞬间，一起来看!"
#define KStartLiveDefaultText @"我正在来疯直播，炫酷diao炸天，还不来看看？"
#define KShareHongBaoDefaultText @"看来疯直播，抢红包大礼，直到你手软，快来看看！"
//push跳转协议
//进房间lf://room/<roomId>
#define kEnterRoomFromPush @"lf://room/"

//进首页。lf://activity/<tab页：home,plaza,trailers,attention>
#define kEnterHomePageFromPush @"lf://activity/"

//进播客的粉丝墙lf://fanswall/<播客Id>
#define kEnterFansGroupFromPush @"lf://fanswall/"

//跳网页
#define kEnterWebPageFromPush @"http://"

#define PHONE_NAVIGATIONBAR_HEIGHT 44
#define PHONE_TABNBAR_HEIGHT       49
#define PHONE_STATUSBAR_HEIGHT     20

#define MAX_IMAGE_SIZE 720

#define kSuperImageRatio 2.9 // 超长图比例 3:1
#define kSuperRatioMaxLength 1600

//图形界面通用
#define kAppTopInsert (kiOS7Later ? 64 : 44)

//屏幕宽高
#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
/*
 * 通过RGB创建UIColor
 */
//#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
//#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
//
//#define UIColorFromRGB(rgbValue) [UIColor \
//colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
//green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
//blue:((float)(rgbValue & 0x0000FF))/255.0 \
//alpha:1.0]
//
//#define UIColorFromRGBA(rgbValue, alphaValue) [UIColor \
//colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
//green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
//blue:((float)(rgbValue & 0x0000FF))/255.0 \
//alpha:alphaValue]


#define EXECUTE_BLOCK_SAFELY(block, ...) { \
if (block) {                         \
block(__VA_ARGS__);              \
}                                    \
}

#define ws(_self) __weak typeof(self) _self = self

/* Define by wangxiaoxiang*/
//国际化
#define LFLocalizedString(key, comment) NSLocalizedStringFromTable((key),@"LaiFeng", (comment))



#endif