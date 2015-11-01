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

+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible direction:(SXColorGradientDirection)direction{
    return [[self alloc]initWithColor:color frame:frame visible:visible direction:(SXColorGradientDirection)direction];
}

- (instancetype)initWithColor:(UIColor *)color frame:(CGRect)frame visible:(BOOL)visible direction:(SXColorGradientDirection)direction{
    if (self = [super initWithFrame:frame]) {
    
        switch (direction) {
            case 1:
                for (int i = 0; i< frame.size.height ; i++) {
                    CALayer *la = [[CALayer alloc]init];
                    la.frame = CGRectMake(0, i, frame.size.width, 1);
                    float r= [color red];
                    float g= [color green];
                    float b= [color blue];
                    la.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:i / frame.size.height].CGColor;
                    [self.layer addSublayer:la];
                }
                break;
            case 3:
                for (int i = 0; i< frame.size.height ; i++) {
                    CALayer *la = [[CALayer alloc]init];
                    la.frame = CGRectMake(0, frame.size.height - i, frame.size.width, 1);
                    float r= [color red];
                    float g= [color green];
                    float b= [color blue];
                    la.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:i / frame.size.height].CGColor;
                    [self.layer addSublayer:la];
                }
                break;
            case 2:
                for (int i = 0; i< frame.size.width ; i++) {
                    CALayer *la = [[CALayer alloc]init];
                    la.frame = CGRectMake(i, 0, 1, frame.size.height);
                    float r= [color red];
                    float g= [color green];
                    float b= [color blue];
                    la.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:i / frame.size.width].CGColor;
                    [self.layer addSublayer:la];
                }
                break;
            case 4:
                for (int i = 0; i< frame.size.width ; i++) {
                    CALayer *la = [[CALayer alloc]init];
                    la.frame = CGRectMake(frame.size.width - i, 0, 1, frame.size.height);
                    float r= [color red];
                    float g= [color green];
                    float b= [color blue];
                    la.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:i / frame.size.width].CGColor;
                    [self.layer addSublayer:la];
                }
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
