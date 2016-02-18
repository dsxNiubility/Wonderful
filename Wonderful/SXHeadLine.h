//
//  SXHeadLine.h
//  Wonderful
//
//  Created by dongshangxian on 16/2/18.
//  Copyright © 2016年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXHeadLine : UIView

@property(nonatomic,strong)NSArray *messageArray;
@property(nonatomic,strong)NSTimer *timer;

- (void)start;

- (void)stop;

@end
