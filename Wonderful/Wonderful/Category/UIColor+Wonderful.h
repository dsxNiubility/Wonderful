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

#pragma mark - **************** 红色系
/** 薄雾玫瑰*/
+ (UIColor *)mistyRose;
/** 浅鲑鱼色*/
+ (UIColor *)lightSalmon;
/** 淡珊瑚色*/
+ (UIColor *)lightCoral;
/** 鲑鱼色*/
+ (UIColor *)salmonColor;
/** 珊瑚色*/
+ (UIColor *)coralColor;
/** 番茄*/
+ (UIColor *)tomatoColor;
/** 橙红色*/
+ (UIColor *)orangeRed;
/** 印度红*/
+ (UIColor *)indianRed;
/** 猩红*/
+ (UIColor *)crimsonColor;
/** 耐火砖*/
+ (UIColor *)fireBrick;

#pragma mark - **************** 黄色系
/** 玉米色*/
+ (UIColor *)cornColor;
/** 柠檬薄纱*/
+ (UIColor *)LemonChiffon;
/** 苍金麒麟*/
+ (UIColor *)paleGodenrod;
/** 卡其色*/
+ (UIColor *)khakiColor;
/** 金色*/
+ (UIColor *)goldColor;
/** 雌黄*/
+ (UIColor *)orpimentColor;
/** 藤黄*/
+ (UIColor *)gambogeColor;
/** 雄黄*/
+ (UIColor *)realgarColor;
/** 金麒麟色*/
+ (UIColor *)goldenrod;
/** 乌金*/
+ (UIColor *)darkGold;

#pragma mark - **************** 绿色系
/** 苍绿*/
+ (UIColor *)paleGreen;
/** 淡绿色*/
+ (UIColor *)lightGreen;
/** 春绿*/
+ (UIColor *)springGreen;
/** 绿黄色*/
+ (UIColor *)greenYellow;
/** 草坪绿*/
+ (UIColor *)lawnGreen;
/** 酸橙绿*/
+ (UIColor *)limeColor;
/** 森林绿*/
+ (UIColor *)forestGreen;
/** 海洋绿*/
+ (UIColor *)seaGreen;
/** 深绿*/
+ (UIColor *)darkGreen;
/** 橄榄(墨绿)*/
+ (UIColor *)olive;

#pragma mark - **************** 青色系
/** 淡青色*/
+ (UIColor *)lightCyan;
/** 苍白绿松石*/
+ (UIColor *)paleTurquoise;
/** 绿碧*/
+ (UIColor *)aquamarine;
/** 绿松石*/
+ (UIColor *)turquoise;
/** 适中绿松石*/
+ (UIColor *)mediumTurquoise;
/** 美团色*/
+ (UIColor *)meituanColor;
/** 浅海洋绿*/
+ (UIColor *)lightSeaGreen;
/** 深青色*/
+ (UIColor *)darkCyan;
/** 水鸭色*/
+ (UIColor *)tealColor;
/** 深石板灰*/
+ (UIColor *)darkSlateGray;

#pragma mark - **************** 蓝色系
/** 天蓝色*/
+ (UIColor *)skyBlue;
/** 淡蓝*/
+ (UIColor *)lightBLue;
/** 深天蓝*/
+ (UIColor *)deepSkyBlue;
/** 道奇蓝*/
+ (UIColor *)doderBlue;
/** 矢车菊*/
+ (UIColor *)cornflowerBlue;
/** 皇家蓝*/
+ (UIColor *)royalBlue;
/** 适中的蓝色*/
+ (UIColor *)mediumBlue;
/** 深蓝*/
+ (UIColor *)darkBlue;
/** 海军蓝*/
+ (UIColor *)navyColor;
/** 午夜蓝*/
+ (UIColor *)midnightBlue;

#pragma mark - **************** 紫色系
/** 薰衣草*/
+ (UIColor *)lavender;
/** 蓟*/
+ (UIColor *)thistleColor;
/** 李子*/
+ (UIColor *)plumColor;
/** 紫罗兰*/
+ (UIColor *)violetColor;
/** 适中的兰花紫*/
+ (UIColor *)mediumOrchid;
/** 深兰花紫*/
+ (UIColor *)darkOrchid;
/** 深紫罗兰色*/
+ (UIColor *)darkVoilet;
/** 泛蓝紫罗兰*/
+ (UIColor *)blueViolet;
/** 深洋红色*/
+ (UIColor *)darkMagenta;
/** 靛青*/
+ (UIColor *)indigoColor;

#pragma mark - **************** 灰色系
/** 白烟*/
+ (UIColor *)whiteSmoke;
/** 鸭蛋*/
+ (UIColor *)duckEgg;
/** 亮灰*/
+ (UIColor *)gainsboroColor;
/** 蟹壳青*/
+ (UIColor *)carapaceColor;
/** 银白色*/
+ (UIColor *)silverColor;
/** 暗淡的灰色*/
+ (UIColor *)dimGray;

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
/** 米色*/
+ (UIColor *)beigeColor;

#pragma mark - **************** 棕色系
/** 黄褐色*/
+ (UIColor *)tanColor;
/** 玫瑰棕色*/
+ (UIColor *)rosyBrown;
/** 秘鲁*/
+ (UIColor *)peruColor;
/** 巧克力*/
+ (UIColor *)chocolateColor;
/** 古铜色*/
+ (UIColor *)bronzeColor;
/** 黄土赭色*/
+ (UIColor *)siennaColor;
/** 马鞍棕色*/
+ (UIColor *)saddleBrown;
/** 土棕*/
+ (UIColor *)soilColor;
/** 栗色*/
+ (UIColor *)maroonColor;
/** 乌贼墨棕*/
+ (UIColor *)inkfishBrown;

#pragma mark - **************** 粉色系
/** 水粉*/
+ (UIColor *)waterPink;
/** 藕色*/
+ (UIColor *)lotusRoot;
/** 浅粉红*/
+ (UIColor *)lightPink;
/** 适中的粉红*/
+ (UIColor *)mediumPink;
/** 桃红*/
+ (UIColor *)peachRed;
/** 苍白的紫罗兰红色*/
+ (UIColor *)paleVioletRed;
/** 深粉色*/
+ (UIColor *)deepPink;

@end
