//
//  UIColor+Wonderful.m
//  Wonderful
//
//  Created by dongshangxian on 15/10/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "UIColor+Wonderful.h"
#define SXRGB16Color(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation UIColor (Wonderful)

+ (UIColor *)goldColor
{
    return SXRGB16Color(0xFFD700);
}

@end
