//
//  SXColorListEntity.m
//  Wonderful
//
//  Created by dongshangxian on 15/10/30.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXCLEntity.h"

@implementation SXCLEntity

+ (instancetype)CWV:(int)value D:(NSString *)desc N:(NSString *)name
{
    SXCLEntity *entity = [[self alloc]init];
    entity.colorValue = value;
    entity.desc = desc;
    entity.methodName = name;
    return entity;
}

@end
