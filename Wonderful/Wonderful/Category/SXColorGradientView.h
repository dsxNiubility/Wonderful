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

+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible direction:(SXColorGradientDirection)direction;

+ (instancetype)createWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor frame:(CGRect)frame direction:(SXColorGradientDirection)direction;

//- (instancetype)initWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible;
@end
