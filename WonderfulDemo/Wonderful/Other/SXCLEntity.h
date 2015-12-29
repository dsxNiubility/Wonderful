//
//  SXColorListEntity.h
//  Wonderful
//
//  Created by dongshangxian on 15/10/30.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <Foundation/Foundation.h>

// ------这里其实是SXColorListEntity  demo程序不用较真，就是为了方法较短不用换行看着整齐
@interface SXCLEntity : NSObject

@property(nonatomic,assign)int colorValue;
@property(nonatomic,copy)NSString *desc;
@property(nonatomic,copy)NSString *methodName;

+ (instancetype)CWV:(int)value D:(NSString *)desc N:(NSString *)name;
@end
