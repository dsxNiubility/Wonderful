//
//  SXDataSource.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/21.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXDataSource.h"

@interface SXDataSource ()

@end
@implementation SXDataSource

- (instancetype)init
{
    if (self = [super init]) {
        [self getDataSource];
    }
    return self;
}

- (SXCLEntity *)randomAColorEntity
{
    NSInteger x1 = arc4random() % 10;
    NSArray *ary1 = self.marray[x1];
    NSInteger y1 = arc4random() % ary1.count;
    return ary1[y1];
}


- (void)getDataSource
{
    self.titleArray = @[@"红",@"黄",@"绿",@"青",@"蓝",@"紫",@"灰",@"白",@"棕",@"粉"];
    
    SXCLEntity *a1 = [SXCLEntity CWV:0xFFE4E1 D:@"薄雾玫瑰" N:@"mistyRose"];
    SXCLEntity *a2 = [SXCLEntity CWV:0xFFA07A D:@"浅鲑鱼色" N:@"lightSalmon"];
    SXCLEntity *a3 = [SXCLEntity CWV:0xF08080 D:@"淡珊瑚色" N:@"lightCoral"];
    SXCLEntity *a4 = [SXCLEntity CWV:0xFA8072 D:@"鲑鱼色" N:@"salmonColor"];
    SXCLEntity *a5 = [SXCLEntity CWV:0xFF7F50 D:@"珊瑚色" N:@"coralColor"];
    SXCLEntity *a6 = [SXCLEntity CWV:0xFF6347 D:@"番茄" N:@"tomatoColor"];
    SXCLEntity *a7 = [SXCLEntity CWV:0xFF4500 D:@"橙红色" N:@"orangeRed"];
    SXCLEntity *a8 = [SXCLEntity CWV:0xCD5C5C D:@"印度红" N:@"indianRed"];
    SXCLEntity *a9 = [SXCLEntity CWV:0xDC143C D:@"猩红" N:@"crimsonColor"];
    SXCLEntity *a10 = [SXCLEntity CWV:0xB22222 D:@"耐火砖" N:@"fireBrick"];
    NSArray *array0 = @[a1,a2,a3,a4,a5,a6,a7,a8,a9,a10];
    
    
    SXCLEntity *b1 = [SXCLEntity CWV:0xFFF8DC D:@"玉米色" N:@"cornColor"];
    SXCLEntity *b2 = [SXCLEntity CWV:0xFFFACD D:@"柠檬薄纱" N:@"LemonChiffon"];
    SXCLEntity *b3 = [SXCLEntity CWV:0xEEE8AA D:@"苍金麒麟" N:@"paleGodenrod"];
    SXCLEntity *b4 = [SXCLEntity CWV:0xF0E68C D:@"卡其色" N:@"khakiColor"];
    SXCLEntity *b5 = [SXCLEntity CWV:0xFFD700 D:@"金色" N:@"goldColor"];
    SXCLEntity *b6 = [SXCLEntity CWV:0xFFC64B D:@"雌黄" N:@"orpimentColor"];
    SXCLEntity *b7 = [SXCLEntity CWV:0xFFB61E D:@"藤黄" N:@"gambogeColor"];
    SXCLEntity *b8 = [SXCLEntity CWV:0xE9BB1D D:@"雄黄" N:@"realgarColor"];
    SXCLEntity *b9 = [SXCLEntity CWV:0xDAA520 D:@"金麒麟色" N:@"goldenrod"];
    SXCLEntity *b10 = [SXCLEntity CWV:0xA78E44 D:@"乌金" N:@"darkGold"];
    NSArray *array1 = @[b1,b2,b3,b4,b5,b6,b7,b8,b9,b10];
    
    SXCLEntity *c1 = [SXCLEntity CWV:0x98FB98 D:@"苍绿" N:@"paleGreen"];
    SXCLEntity *c2 = [SXCLEntity CWV:0x90EE90 D:@"淡绿色" N:@"lightGreen"];
    SXCLEntity *c3 = [SXCLEntity CWV:0x2AFD84 D:@"春绿" N:@"springGreen"];
    SXCLEntity *c4 = [SXCLEntity CWV:0xADFF2F D:@"绿黄色" N:@"greenYellow"];
    SXCLEntity *c5 = [SXCLEntity CWV:0x7CFC00 D:@"草坪绿" N:@"lawnGreen"];
    SXCLEntity *c6 = [SXCLEntity CWV:0x32CD32 D:@"酸橙绿" N:@"limeGreen"];
    SXCLEntity *c7 = [SXCLEntity CWV:0x228B22 D:@"森林绿" N:@"forestGreen"];
    SXCLEntity *c8 = [SXCLEntity CWV:0x2E8B57 D:@"海洋绿" N:@"seaGreen"];
    SXCLEntity *c9 = [SXCLEntity CWV:0x006400 D:@"深绿" N:@"darkGreen"];
    SXCLEntity *c10 = [SXCLEntity CWV:0x556B2F D:@"橄榄(墨绿)" N:@"olive"];
    
    NSArray *array2 = @[c1,c2,c3,c4,c5,c6,c7,c8,c9,c10];
    
    SXCLEntity *d1 = [SXCLEntity CWV:0xE1FFFF D:@"淡青色" N:@"lightCyan"];
    SXCLEntity *d2 = [SXCLEntity CWV:0xAFEEEE D:@"苍白绿松石" N:@"paleTurquoise"];
    SXCLEntity *d3 = [SXCLEntity CWV:0x7FFFD4 D:@"绿碧" N:@"aquamarine"];
    SXCLEntity *d4 = [SXCLEntity CWV:0x40E0D0 D:@"绿松石" N:@"turquoise"];
    SXCLEntity *d5 = [SXCLEntity CWV:0x48D1CC D:@"适中绿松石" N:@"mediumTurquoise"];
    SXCLEntity *d6 = [SXCLEntity CWV:0x2BB8AA D:@"美团色" N:@"meituanColor"];
    SXCLEntity *d7 = [SXCLEntity CWV:0x20B2AA D:@"浅海洋绿" N:@"lightSeaGreen"];
    SXCLEntity *d8 = [SXCLEntity CWV:0x008B8B D:@"深青色" N:@"darkCyan"];
    SXCLEntity *d9 = [SXCLEntity CWV:0x008080 D:@"水鸭色" N:@"tealColor"];
    SXCLEntity *d10 = [SXCLEntity CWV:0x2F4F4F D:@"深石板灰" N:@"darkSlateGray"];
    NSArray *array3 = @[d1,d2,d3,d4,d5,d6,d7,d8,d9,d10];
    
    SXCLEntity *e1 = [SXCLEntity CWV:0x8ACEE9 D:@"天蓝色" N:@"skyBlue"];
    SXCLEntity *e2 = [SXCLEntity CWV:0x8ACFF8 D:@"淡蓝" N:@"lightBLue"];
    SXCLEntity *e3 = [SXCLEntity CWV:0x00BFFF D:@"深天蓝" N:@"deepSkyBlue"];
    SXCLEntity *e4 = [SXCLEntity CWV:0x1E90FF D:@"道奇蓝" N:@"doderBlue"];
    SXCLEntity *e5 = [SXCLEntity CWV:0x6495ED D:@"矢车菊" N:@"cornflowerBlue"];
    SXCLEntity *e6 = [SXCLEntity CWV:0x4169E1 D:@"皇家蓝" N:@"royalBlue"];
    SXCLEntity *e7 = [SXCLEntity CWV:0x0000CD D:@"适中的蓝色" N:@"mediumBlue"];
    SXCLEntity *e8 = [SXCLEntity CWV:0x00008B D:@"深蓝" N:@"darkBlue"];
    SXCLEntity *e9 = [SXCLEntity CWV:0x000080 D:@"海军蓝" N:@"navyColor"];
    SXCLEntity *e10 = [SXCLEntity CWV:0x191970 D:@"午夜蓝" N:@"midnightBlue"];
    NSArray *array4 = @[e1,e2,e3,e4,e5,e6,e7,e8,e9,e10];
    
    SXCLEntity *f0 = [SXCLEntity CWV:0xE6E6FA D:@"薰衣草" N:@"lavender"];
    SXCLEntity *f1 = [SXCLEntity CWV:0xD8BFD8 D:@"蓟" N:@"thistleColor"];
    SXCLEntity *f2 = [SXCLEntity CWV:0xDDA0DD D:@"李子" N:@"plumColor"];
    SXCLEntity *f3 = [SXCLEntity CWV:0xEE82EE D:@"紫罗兰" N:@"violetColor"];
    SXCLEntity *f4 = [SXCLEntity CWV:0xBA55D3 D:@"适中的兰花紫" N:@"mediumOrchid"];
    SXCLEntity *f5 = [SXCLEntity CWV:0x9932CC D:@"深兰花紫" N:@"darkOrchid"];
    SXCLEntity *f6 = [SXCLEntity CWV:0x9400D3 D:@"深紫罗兰色" N:@"darkVoilet"];
    SXCLEntity *f7 = [SXCLEntity CWV:0x8A2BE2 D:@"泛蓝紫罗兰" N:@"blueViolet"];
    SXCLEntity *f8 = [SXCLEntity CWV:0x8B008B D:@"深洋红色" N:@"darkMagenta"];
    SXCLEntity *f9 = [SXCLEntity CWV:0x4B0082 D:@"靛青" N:@"indigoColor"];
    NSArray *array5 = @[f0,f1,f2,f3,f4,f5,f6,f7,f8,f9];
    
    
    SXCLEntity *g1 = [SXCLEntity CWV:0xF5F5F5 D:@"白烟" N:@"whiteSmoke"];
    SXCLEntity *g2 = [SXCLEntity CWV:0xE0EEE8 D:@"鸭蛋" N:@"duckEgg"];
    SXCLEntity *g3 = [SXCLEntity CWV:0xDCDCDC D:@"亮灰" N:@"gainsboroColor"];
    SXCLEntity *g4 = [SXCLEntity CWV:0xBBCDC5 D:@"蟹壳青" N:@"carapaceColor"];
    SXCLEntity *g5 = [SXCLEntity CWV:0xC0C0C0 D:@"银白色" N:@"silverColor"];
    SXCLEntity *g6 = [SXCLEntity CWV:0x696969 D:@"暗淡的灰色" N:@"dimGray"];
    NSArray *array6 = @[g1,g2,g3,g4,g5,g6];
    
    
    SXCLEntity *h1 = [SXCLEntity CWV:0xFFF5EE D:@"海贝壳" N:@"seaShell"];
    SXCLEntity *h2 = [SXCLEntity CWV:0xFFFAFA D:@"雪" N:@"snowColor"];
    SXCLEntity *h3 = [SXCLEntity CWV:0xFAF0E6 D:@"亚麻色" N:@"linenColor"];
    SXCLEntity *h4 = [SXCLEntity CWV:0xFFFAF0 D:@"花之白" N:@"floralWhite"];
    SXCLEntity *h5 = [SXCLEntity CWV:0xFDF5E6 D:@"老饰带" N:@"oldLace"];
    SXCLEntity *h6 = [SXCLEntity CWV:0xFFFFF0 D:@"象牙白" N:@"ivoryColor"];
    SXCLEntity *h7 = [SXCLEntity CWV:0xF0FFF0 D:@"蜂蜜露" N:@"honeydew"];
    SXCLEntity *h8 = [SXCLEntity CWV:0xF5FFFA D:@"薄荷奶油" N:@"mintCream"];
    SXCLEntity *h9 = [SXCLEntity CWV:0xF0FFFF D:@"蔚蓝色" N:@"azureColor"];
    SXCLEntity *h10 = [SXCLEntity CWV:0xF0F8FF D:@"爱丽丝蓝" N:@"aliceBlue"];
    SXCLEntity *h11 = [SXCLEntity CWV:0xF8F8FF D:@"幽灵白" N:@"ghostWhite"];
    SXCLEntity *h12 = [SXCLEntity CWV:0xFFF0F5 D:@"淡紫红" N:@"lavenderBlush"];
    SXCLEntity *h13 = [SXCLEntity CWV:0xF5F5DD D:@"米色" N:@"beigeColor"];
    NSArray *array7 = @[h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13];
    
    
    
    SXCLEntity *i1 = [SXCLEntity CWV:0xD2B48C D:@"黄褐色" N:@"tanColor"];
    SXCLEntity *i2 = [SXCLEntity CWV:0xBC8F8F D:@"玫瑰棕色" N:@"rosyBrown"];
    SXCLEntity *i3 = [SXCLEntity CWV:0xCD853F D:@"秘鲁" N:@"peruColor"];
    SXCLEntity *i4 = [SXCLEntity CWV:0xD2691E D:@"巧克力" N:@"chocolateColor"];
    SXCLEntity *i5 = [SXCLEntity CWV:0xB87333 D:@"古铜色" N:@"bronzeColor"];
    SXCLEntity *i6 = [SXCLEntity CWV:0xA0522D D:@"黄土赭色" N:@"siennaColor"];
    SXCLEntity *i7 = [SXCLEntity CWV:0x8B4513 D:@"马鞍棕色" N:@"saddleBrown"];
    SXCLEntity *i8 = [SXCLEntity CWV:0x734A12 D:@"土棕" N:@"soilColor"];
    SXCLEntity *i9 = [SXCLEntity CWV:0x800000 D:@"栗色" N:@"maroonColor"];
    SXCLEntity *i10 = [SXCLEntity CWV:0x5E2612 D:@"乌贼墨棕" N:@"inkfishBrown"];
    NSArray *array8 = @[i1,i2,i3,i4,i5,i6,i7,i8,i9,i10];
    
    SXCLEntity *j1 = [SXCLEntity CWV:0xF3D3E7 D:@"水粉" N:@"waterPink"];
    SXCLEntity *j2 = [SXCLEntity CWV:0xEDD1D8 D:@"藕色" N:@"lotusRoot"];
    SXCLEntity *j3 = [SXCLEntity CWV:0xFFC0CB D:@"浅粉红" N:@"lightPink"];
    SXCLEntity *j4 = [SXCLEntity CWV:0xFFB6C1 D:@"适中的粉红" N:@"mediumPink"];
    SXCLEntity *j5 = [SXCLEntity CWV:0xF47983 D:@"桃红" N:@"peachRed"];
    SXCLEntity *j6 = [SXCLEntity CWV:0xDB7093 D:@"苍白的紫罗兰红色" N:@"paleVioletRed"];
    SXCLEntity *j7 = [SXCLEntity CWV:0xFF1493 D:@"深粉色" N:@"deepPink"];
    NSArray *array9 = @[j1,j2,j3,j4,j5,j6,j7];
    
    self.marray = [NSMutableArray array];
    [self.marray addObject:array0];
    [self.marray addObject:array1];
    [self.marray addObject:array2];
    [self.marray addObject:array3];
    [self.marray addObject:array4];
    [self.marray addObject:array5];
    [self.marray addObject:array6];
    [self.marray addObject:array7];
    [self.marray addObject:array8];
    [self.marray addObject:array9];
}

@end
