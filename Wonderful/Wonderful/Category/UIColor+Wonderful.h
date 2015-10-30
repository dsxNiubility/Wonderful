//
//  UIColor+Wonderful.h
//  Wonderful
//
//  Created by dongshangxian on 15/10/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SXRGB16Color(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface UIColor (Wonderful)

#pragma mark - **************** 黄色系
/** 金色*/
+ (UIColor *)goldColor;
/** 金麒麟色*/
+ (UIColor *)goldenrod;
/** 浅金麒麟*/
+ (UIColor *)lightGoldenrod;
/** 灰秋麒麟*/
+ (UIColor *)paleGodenrod;
/** 卡其色*/
+ (UIColor *)khakiColor;
/** 暗卡其色*/
+ (UIColor *)darkKhaki;
/** 米色*/
+ (UIColor *)beigeColor;
/** 橄榄色*/
+ (UIColor *)oliveColor;
/** 柠檬薄纱*/
+ (UIColor *)LemonChiffon;
/** 玉米色*/
+ (UIColor *)cornColor;

#pragma mark - **************** 白色系
/** 海贝壳*/
+ (UIColor *)seaShell;
/** 雪*/
+ (UIColor *)snowColor;
/** 亚麻色*/
+ (UIColor *)linenColor;
/** 花之白*/
+ (UIColor *)floralWhite;
/** 老饰带*/
+ (UIColor *)oldLace;
/** 象牙白*/
+ (UIColor *)ivoryColor;
/** 蜂蜜露*/
+ (UIColor *)honeydew;
/** 薄荷奶油*/
+ (UIColor *)mintCream;
/** 蔚蓝色*/
+ (UIColor *)azureColor;
/** 爱丽丝蓝*/
+ (UIColor *)aliceBlue;
/** 幽灵白*/
+ (UIColor *)ghostWhite;
/** 淡紫红*/
+ (UIColor *)lavenderBlush;
/** 薰衣草*/
+ (UIColor *)lavender;

#pragma mark - **************** 绿色系
/** 苍绿*/
+ (UIColor *)paleGreen;
/** 淡绿色*/
+ (UIColor *)lightGreen;
/** 草坪绿*/
+ (UIColor *)lawnGreen;
/** 绿黄色*/
+ (UIColor *)greenYellow;
/** 查特酒绿*/
+ (UIColor *)chartreuse;
/** 春绿*/
+ (UIColor *)springGreen;
/** 适中的春绿*/
+ (UIColor *)mediumSpringGreen;
/** 酸橙绿*/
+ (UIColor *)limeColor;
/** 酸橙色*/
+ (UIColor *)limeGreen;
/** 海洋绿*/
+ (UIColor *)seaGreen;
/** 深海洋绿*/
+ (UIColor *)darkSeaGreen;
/** 森林绿*/
+ (UIColor *)forestGreen;
/** 深绿*/
+ (UIColor *)darkGreen;
/** 橄榄土褐色*/
+ (UIColor *)oliveDrab;

#pragma mark - **************** 青色系
/** 淡青色*/
+ (UIColor *)lightCyan;
/** 苍白绿松石*/
+ (UIColor *)paleTurquoise;
/** 绿松石*/
+ (UIColor *)turquoise;
/** 适中绿松石*/
+ (UIColor *)mediumTurquoise;
/** 浅海洋绿*/
+ (UIColor *)lightSeaGreen;
/** 深青色*/
+ (UIColor *)darkCyan;
/** 水鸭色*/
+ (UIColor *)tealColor;
/** 深石板灰*/
+ (UIColor *)darkSlateGray;
/** 军校蓝*/
+ (UIColor *)cadetBlue;

#pragma mark - **************** 蓝色系
/** 淡蓝*/
+ (UIColor *)lightBLue;
/** 天蓝色*/
+ (UIColor *)skyBlue;
/** 浅天蓝色*/
+ (UIColor *)lightSkyBlue;
/** 深天蓝*/
+ (UIColor *)deepSkyBlue;
/** 淡钢蓝*/
+ (UIColor *)lightSteelBlue;
/** 钢蓝*/
+ (UIColor *)steelBlue;
/** 道奇蓝*/
+ (UIColor *)doderBlue;
/** 矢车菊的蓝色*/
+ (UIColor *)cornflowerBlue;
/** 皇家蓝*/
+ (UIColor *)royalBlue;
/** 适中的蓝色*/
+ (UIColor *)mediumBlue;
/** 海军蓝*/
+ (UIColor *)navyColor;
/** 深蓝*/
+ (UIColor *)darkBlue;
/** 午夜蓝*/
+ (UIColor *)midnightBlue;

#pragma mark - **************** 红色系
/** 薄雾玫瑰*/
+ (UIColor *)mistyRose;
/** 浅鲑鱼色*/
+ (UIColor *)lightSalmon;
/** 鲑鱼色（肉色）*/
+ (UIColor *)salmonColor;
/** 深鲑鱼色*/
+ (UIColor *)darkSalmon;
/** 淡珊瑚色*/
+ (UIColor *)lightCoral;
/** 珊瑚色*/
+ (UIColor *)coralColor;
/** 橙红色*/
+ (UIColor *)orangeRed;
/** 番茄*/
+ (UIColor *)tomatoColor;
/** 印度红*/
+ (UIColor *)indianRed;
/** 猩红*/
+ (UIColor *)crimsonColor;

#pragma mark - **************** 粉色系
/** 浅粉红*/
+ (UIColor *)lightPink;
/** 适中的粉红*/
+ (UIColor *)mediumPink;
/** 苍白的紫罗兰红色*/
+ (UIColor *)paleVioletRed;
/** 深粉色*/
+ (UIColor *)deepPink;
/** 适中的紫罗兰红色*/
+ (UIColor *)mediumVioletRed;

#pragma mark - **************** 紫色系
/** 蓟*/
+ (UIColor *)thistleColor;
/** 李子*/
+ (UIColor *)plumColor;
/** 蓟*/
+ (UIColor *)violetColor;
/** 深洋红色*/
+ (UIColor *)darkMagenta;
/** 洋红*/
+ (UIColor *)magenta;
/** 适中的兰花紫*/
+ (UIColor *)mediumOrchid;
/** 深紫罗兰色*/
+ (UIColor *)darkVoilet;
/** 深兰花紫*/
+ (UIColor *)darkOrchid;
/** 靛青*/
+ (UIColor *)indigoColor;
/** 深紫罗兰的蓝色*/
+ (UIColor *)blueViolet;
/** 适中的紫色*/
+ (UIColor *)mediumPurple;
/** 适中的板岩色*/
+ (UIColor *)mediumSlate;
/** 板岩色*/
+ (UIColor *)slateColor;
/** 深板岩色*/
+ (UIColor *)darkSlate;

#pragma mark - **************** 灰色系
/** 白烟*/
+ (UIColor *)whiteSmoke;
/** Gainsboro*/
+ (UIColor *)gainsboro;
/** 银白色*/
+ (UIColor *)silver;
/** 暗淡的灰色*/
+ (UIColor *)dimGray;
#pragma mark - **************** 棕色系
/** 晒黑*/
+ (UIColor *)tanColor;
/** 秘鲁*/
+ (UIColor *)peruColor;
/** 马鞍棕色*/
+ (UIColor *)saddleBrown;
/** 巧克力*/
+ (UIColor *)chocolateColor;
/** 黄土赭色*/
+ (UIColor *)siennaColor;
/** 玫瑰棕色*/
+ (UIColor *)rosyBrown;
/** 耐火砖*/
+ (UIColor *)fireBrick;
/** 栗色*/
+ (UIColor *)maroonColor;

@end
