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

@property(nonatomic,strong)UIColor *textColor;
@property(nonatomic,strong)UIFont *textFont;
@property(nonatomic,strong)UIColor *bgColor;

@property(nonatomic,assign)BOOL hasGradient;

@property(nonatomic,assign)NSTimeInterval scrollDuration;
@property(nonatomic,assign)NSTimeInterval stayDuration;

- (void)start;

- (void)stop;

@end
