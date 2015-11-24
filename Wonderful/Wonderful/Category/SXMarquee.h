//
//  SXMarquee.h
//  Wonderful
//
//  Created by dongshangxian on 15/11/5.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SXMarqueeSpeedLevel) {
    SXMarqueeSpeedLevelFast = 2,
    SXMarqueeSpeedLevelMediumFast = 4,
    SXMarqueeSpeedLevelMediumSlow = 6,
    SXMarqueeSpeedLevelSlow = 8,
};

@interface SXMarquee : UIView

- (instancetype)initWithFrame:(CGRect)frame speed:(SXMarqueeSpeedLevel)speed Msg:(NSString *)msg bgColor:(UIColor *)bgColor txtColor:(UIColor *)txtColor;

- (instancetype)initWithFrame:(CGRect)frame speed:(SXMarqueeSpeedLevel)speed Msg:(NSString *)msg ;

- (void)changeTapMarqueeAction:(void(^)())action;
- (void)changeMarqueeLabelFont:(UIFont *)font;
@end
