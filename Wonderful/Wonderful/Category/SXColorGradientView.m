//
//  SXColorGradientView.m
//  Wonderful
//
//  Created by dongshangxian on 15/11/1.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorGradientView.h"

@implementation SXColorGradientView

+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible direction:(SXColorGradientDirection)direction{
    return [[self alloc]initWithColor:color frame:frame visible:visible direction:(SXColorGradientDirection)direction];
}

- (instancetype)initWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible direction:(SXColorGradientDirection)direction{
    if (self = [super initWithFrame:frame]) {
        
        switch (direction) {
            case 1:
                
                break;
            case 2:
                for (int i = 0; i< frame.size.width ; i++) {
                    CALayer *la = [[CALayer alloc]init];
                    la.frame = CGRectMake(i, frame.origin.y, 1, frame.size.height);
                    la.backgroundColor = [UIColor colorWithRed:1 green:0 blue:1 alpha:i/200.0].CGColor;
                    [self.layer addSublayer:la];
                }
                break;
            case 3:
                
                break;
            case 4:
                
                break;
                
            default:
                break;
        }
        

    }
    return self;
}

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    
//}

//- (void)drawRect:(CGRect)rect {

//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//
//    for (int i = 0; i < 200; i++) {
//        CGContextMoveToPoint(ctx, i, 0);
//        CGContextAddLineToPoint(ctx, i, 80);
//        [[UIColor colorWithRed:245/255.0 green:(50 + i)/255.0 blue:40/255.0 alpha:1-i/200.0]setStroke] ;
//        CGContextStrokePath(ctx);
//    }
//}

@end
