//
//  SXMarquee.h
//  Wonderful
//
//  Created by dongshangxian on 15/11/5.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SXMarqueeSpeedLevel) {
    SXMarqueeSpeedLevelFast = 1,
    SXMarqueeSpeedLevelMediumFast = 2,
    SXMarqueeSpeedLevelMediumSlow = 3,
    SXMarqueeSpeedLevelSlow = 4,
};

@interface SXMarquee : UIView

- (instancetype)initWithFrame:(CGRect)frame Msg:(NSString *)msg bgColor:(UIColor *)bgColor txtColor:(UIColor *)txtColor;

- (instancetype)initWithFrame:(CGRect)frame Msg:(NSString *)msg;

- (void)changeTapMarqueeAction:(void(^)())action;
- (void)changeMarqueeLabelFont:(UIFont *)font;
- (void)changeMarqueeSpeedLevel:(SXMarqueeSpeedLevel)speedLevel;
@end
