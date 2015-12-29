//
//  SXColorGradientView.h
//  Wonderful
//
//  Created by dongshangxian on 15/11/1.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SXColorGradientDirection) {
    SXColorGradientToTop = 1,
    SXColorGradientToLeft = 2,
    SXColorGradientToBottom = 3,
    SXColorGradientToRight = 4,
};

@interface SXColorGradientView : UIView

/**
 *  use one color to init the gradientView,default is this color to clear.
 *
 *  @param visible   can you see other view what below the gradientView
 *  @param direction  the direction we want gradient to clear
 *
 *  @return
 */
+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible direction:(SXColorGradientDirection)direction;

/**
 *  use two color to init the gradientView, from fromColor gradient to toColor
 *
 *  @param direction the direction we want gradient to toColor
 *
 *  @return 
 */
+ (instancetype)createWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor frame:(CGRect)frame direction:(SXColorGradientDirection)direction;

@end
