//
//  SXColorGradientView.m
//  Wonderful
//
//  Created by dongshangxian on 15/11/1.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorGradientView.h"
#import "UIColor+Separate.h"

@implementation SXColorGradientView

+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame direction:(SXGradientDirection)direction{
    return [[self alloc]initWithColorArray:@[color,[color down:SXColorTypeAlpha num:255]] frame:frame direction:direction];
}

+ (instancetype)createWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor frame:(CGRect)frame direction:(SXGradientDirection)direction{
    return [[self alloc]initWithColorArray:@[fromColor,toColor] frame:frame direction:direction];
}

+ (instancetype)createWithColorArray:(NSArray *)colorArray frame:(CGRect)frame direction:(SXGradientDirection)direction{
    return [[self alloc]initWithColorArray:colorArray frame:frame direction:direction];
}

- (instancetype)initWithColorArray:(NSArray *)colorArray frame:(CGRect)frame direction:(SXGradientDirection)direction{
    if (self = [super initWithFrame:frame]) {
        SXColorGradientView *gradientView = [[SXColorGradientView alloc]initWithFrame:frame];
        self = gradientView;
        CAGradientLayer *la = [[CAGradientLayer alloc]init];
        la.frame = gradientView.bounds;
        [gradientView.layer addSublayer:la];
        NSMutableArray *marray = [NSMutableArray array];
        for (UIColor *color in colorArray) {
            [marray addObject:(__bridge id)color.CGColor];
        }
        la.colors = marray;
        
        switch (direction) {
            case 1:
                la.startPoint = CGPointMake(0.5, 1);
                la.endPoint = CGPointMake(0.5, 0);
                break;
            case 2:
                la.startPoint = CGPointMake(1, 0.5);
                la.endPoint = CGPointMake(0, 0.5);
                break;
            case 3:
                la.startPoint = CGPointMake(0.5, 0);
                la.endPoint = CGPointMake(0.5, 1);
                break;
            case 4:
                la.startPoint = CGPointMake(0, 0.5);
                la.endPoint = CGPointMake(1, 0.5);
                break;
                
            default:
                break;
        }
    }
    return self;
}
@end
