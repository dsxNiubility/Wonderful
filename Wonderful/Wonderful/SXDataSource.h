//
//  SXDataSource.h
//  Wonderful
//
//  Created by dongshangxian on 15/12/21.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SXCLEntity.h"

@interface SXDataSource : NSObject

@property(nonatomic,strong)NSArray *titleArray;
@property(nonatomic,strong)NSMutableArray *marray;

- (SXCLEntity *)randomAColorEntity;
- (void)getDataSource;

@end
