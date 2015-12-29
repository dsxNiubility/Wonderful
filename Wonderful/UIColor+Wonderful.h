//
//  UIColor+Wonderful.h
//  Wonderful
//
//  Created by dongshangxian on 15/10/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Separate.h"

#define SXRGB16Color(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define SXRGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

#define Wonderful_RedColor1 [UIColor mistyRose]
#define Wonderful_RedColor2 [UIColor lightSalmon]
#define Wonderful_RedColor3 [UIColor lightCoral]
#define Wonderful_RedColor4 [UIColor salmonColor]
#define Wonderful_RedColor5 [UIColor coralColor]
#define Wonderful_RedColor6 [UIColor tomatoColor]
#define Wonderful_RedColor7 [UIColor orangeRed]
#define Wonderful_RedColor8 [UIColor indianRed]
#define Wonderful_RedColor9 [UIColor crimsonColor]
#define Wonderful_RedColor10 [UIColor fireBrick]

#define Wonderful_YelloeColor1 [UIColor cornColor]
#define Wonderful_YelloeColor2 [UIColor LemonChiffon]
#define Wonderful_YelloeColor3 [UIColor paleGodenrod]
#define Wonderful_YelloeColor4 [UIColor khakiColor]
#define Wonderful_YelloeColor5 [UIColor goldColor]
#define Wonderful_YelloeColor6 [UIColor orpimentColor]
#define Wonderful_YelloeColor7 [UIColor gambogeColor]
#define Wonderful_YelloeColor8 [UIColor realgarColor]
#define Wonderful_YelloeColor9 [UIColor goldenrod]
#define Wonderful_YelloeColor10 [UIColor darkGold]

#define Wonderful_GreenColor1 [UIColor paleGreen]
#define Wonderful_GreenColor2 [UIColor lightGreen]
#define Wonderful_GreenColor3 [UIColor springGreen]
#define Wonderful_GreenColor4 [UIColor greenYellow]
#define Wonderful_GreenColor5 [UIColor lawnGreen]
#define Wonderful_GreenColor6 [UIColor limeColor]
#define Wonderful_GreenColor7 [UIColor forestGreen]
#define Wonderful_GreenColor8 [UIColor seaGreen]
#define Wonderful_GreenColor9 [UIColor darkGreen]
#define Wonderful_GreenColor10 [UIColor olive]

#define Wonderful_CyanColor1 [UIColor lightCyan]
#define Wonderful_CyanColor2 [UIColor paleTurquoise]
#define Wonderful_CyanColor3 [UIColor aquamarine]
#define Wonderful_CyanColor4 [UIColor turquoise]
#define Wonderful_CyanColor5 [UIColor mediumTurquoise]
#define Wonderful_CyanColor6 [UIColor meituanColor]
#define Wonderful_CyanColor7 [UIColor lightSeaGreen]
#define Wonderful_CyanColor8 [UIColor darkCyan]
#define Wonderful_CyanColor9 [UIColor tealColor]
#define Wonderful_CyanColor10 [UIColor darkSlateGray]

#define Wonderful_BlueColor1 [UIColor skyBlue]
#define Wonderful_BlueColor2 [UIColor lightBLue]
#define Wonderful_BlueColor3 [UIColor deepSkyBlue]
#define Wonderful_BlueColor4 [UIColor doderBlue]
#define Wonderful_BlueColor5 [UIColor cornflowerBlue]
#define Wonderful_BlueColor6 [UIColor royalBlue]
#define Wonderful_BlueColor7 [UIColor mediumBlue]
#define Wonderful_BlueColor8 [UIColor darkBlue]
#define Wonderful_BlueColor9 [UIColor navyColor]
#define Wonderful_BlueColor10 [UIColor midnightBlue]

#define Wonderful_PurpleColor1 [UIColor lavender]
#define Wonderful_PurpleColor2 [UIColor thistleColor]
#define Wonderful_PurpleColor3 [UIColor plumColor]
#define Wonderful_PurpleColor4 [UIColor violetColor]
#define Wonderful_PurpleColor5 [UIColor mediumOrchid]
#define Wonderful_PurpleColor6 [UIColor darkOrchid]
#define Wonderful_PurpleColor7 [UIColor darkVoilet]
#define Wonderful_PurpleColor8 [UIColor blueViolet]
#define Wonderful_PurpleColor9 [UIColor darkMagenta]
#define Wonderful_PurpleColor10 [UIColor indigoColor]

#define Wonderful_GrayColor1 [UIColor whiteSmoke]
#define Wonderful_GrayColor2 [UIColor duckEgg]
#define Wonderful_GrayColor3 [UIColor gainsboroColor]
#define Wonderful_GrayColor4 [UIColor carapaceColor]
#define Wonderful_GrayColor5 [UIColor silverColor]
#define Wonderful_GrayColor6 [UIColor dimGray]

#define Wonderful_WhiteColor1 [UIColor seaShell]
#define Wonderful_WhiteColor2 [UIColor snowColor]
#define Wonderful_WhiteColor3 [UIColor linenColor]
#define Wonderful_WhiteColor4 [UIColor floralWhite]
#define Wonderful_WhiteColor5 [UIColor oldLace]
#define Wonderful_WhiteColor6 [UIColor ivoryColor]
#define Wonderful_WhiteColor7 [UIColor honeydew]
#define Wonderful_WhiteColor8 [UIColor mintCream]
#define Wonderful_WhiteColor9 [UIColor azureColor]
#define Wonderful_WhiteColor10 [UIColor aliceBlue]
#define Wonderful_WhiteColor11 [UIColor ghostWhite]
#define Wonderful_WhiteColor12 [UIColor lavenderBlush]
#define Wonderful_WhiteColor13 [UIColor beigeColor]

#define Wonderful_BrownColor1 [UIColor tanColor]
#define Wonderful_BrownColor2 [UIColor rosyBrown]
#define Wonderful_BrownColor3 [UIColor peruColor]
#define Wonderful_BrownColor4 [UIColor chocolateColor]
#define Wonderful_BrownColor5 [UIColor bronzeColor]
#define Wonderful_BrownColor6 [UIColor siennaColor]
#define Wonderful_BrownColor7 [UIColor saddleBrown]
#define Wonderful_BrownColor8 [UIColor soilColor]
#define Wonderful_BrownColor9 [UIColor maroonColor]
#define Wonderful_BrownColor10 [UIColor inkfishBrown]

#define Wonderful_PinkColor1 [UIColor waterPink]
#define Wonderful_PinkColor2 [UIColor lotusRoot]
#define Wonderful_PinkColor3 [UIColor lightPink]
#define Wonderful_PinkColor4 [UIColor mediumPink]
#define Wonderful_PinkColor5 [UIColor peachRed]
#define Wonderful_PinkColor6 [UIColor paleVioletRed]
#define Wonderful_PinkColor7 [UIColor deepPink]

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
