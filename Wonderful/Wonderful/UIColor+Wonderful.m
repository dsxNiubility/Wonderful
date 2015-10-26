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


#pragma mark - **************** 黄色系
/** 金色*/
+ (UIColor *)goldColor
{
    return SXRGB16Color(0xFFD700);
}
/** 金麒麟色*/
+ (UIColor *)goldenrod
{
    return SXRGB16Color(0xDAA520);
}
/** 浅金麒麟*/
+ (UIColor *)lightGoldenrod
{
    return SXRGB16Color(0xFAFAD2);
}
/** 灰秋麒麟*/
+ (UIColor *)paleGodenrod
{
    return SXRGB16Color(0xEEE8AA);
}
/** 卡其色*/
+ (UIColor *)khakiColor
{
    return SXRGB16Color(0xF0E68C);
}
/** 暗卡其色*/
+ (UIColor *)darkKhaki
{
    return SXRGB16Color(0xBDB76B);
}
/** 米色*/
+ (UIColor *)beigeColor
{
    return SXRGB16Color(0x6B8E23);
}
/** 橄榄色*/
+ (UIColor *)oliveColor
{
    return SXRGB16Color(0x808000);
}
/** 柠檬薄纱*/
+ (UIColor *)LemonChiffon
{
    return SXRGB16Color(0xFFFACD);
}
/** 玉米色*/
+ (UIColor *)cornColor
{
    return SXRGB16Color(0xFFF8DC);
}

#pragma mark - **************** 白色系
/** 海贝壳*/
+ (UIColor *)seaShell
{
    return SXRGB16Color(0xFFF5EE);
}
/** 雪*/
+ (UIColor *)snowColor
{
    return SXRGB16Color(0xFFFAFA);
}
/** 亚麻色*/
+ (UIColor *)linenColor
{
    return SXRGB16Color(0xFAF0E6);
}
/** 花之白*/
+ (UIColor *)floralWhite
{
    return SXRGB16Color(0xFFFAF0);
}
/** 老饰带*/
+ (UIColor *)oldLace
{
    return SXRGB16Color(0xFDF5E6);
}
/** 象牙白*/
+ (UIColor *)ivoryColor
{
    return SXRGB16Color(0xFFFFF0);
}
/** 蜂蜜露*/
+ (UIColor *)honeydew
{
    return SXRGB16Color(0xF0FFF0);
}
/** 薄荷奶油*/
+ (UIColor *)mintCream
{
    return SXRGB16Color(0x00FF7F);
}
/** 蔚蓝色*/
+ (UIColor *)azureColor
{
    return SXRGB16Color(0xF0FFFF);
}
/** 爱丽丝蓝*/
+ (UIColor *)aliceBlue
{
    return SXRGB16Color(0xF0F8FF);
}
/** 幽灵白*/
+ (UIColor *)ghostWhite
{
    return SXRGB16Color(0xF8F8FF);
}
/** 淡紫红*/
+ (UIColor *)lavenderBlush
{
    return SXRGB16Color(0xFFF0F5);
}
/** 薰衣草*/
+ (UIColor *)lavender
{
    return SXRGB16Color(0xE6E6FA);
}





@end
