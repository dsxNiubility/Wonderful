//
//  SXMarquee.m
//  Wonderful
//
//  Created by dongshangxian on 15/11/5.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXMarquee.h"
#import "SXColorGradientView.h"

typedef void(^SXWonderfulAction)();
@interface SXMarquee ()

@property(nonatomic,strong)UIButton *bgBtn;
@property(nonatomic,strong)UILabel *marqueeLbl;
@property(nonatomic,strong)UIColor *bgColor;
@property(nonatomic,copy)SXWonderfulAction tapAction;

@end
@implementation SXMarquee

- (instancetype)initWithFrame:(CGRect)frame Msg:(NSString *)msg action:(void(^)())action color:(UIColor *)color{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = color;
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = YES;
        
        self.tapAction = action;
        self.bgColor = color;
        
        [self addSubview:self.bgBtn];
        [self addSubview:self.marqueeLbl];
        [self addLeftAndRightGradient];
        self.marqueeLbl.text = msg;
    }
    return self;
}

- (UIButton *)bgBtn
{
    if (!_bgBtn) {
        
        CGFloat w = self.frame.size.width;
        CGFloat h = self.frame.size.height;
        _bgBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, w, h)];
        [_bgBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];

    }
    return _bgBtn;
}

- (UILabel *)marqueeLbl
{
    if (!_marqueeLbl) {
        CGFloat w = self.frame.size.width;
        CGFloat h = self.frame.size.height;
        _marqueeLbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, w-5, h)];

        _marqueeLbl.textColor = [UIColor whiteColor];
    }
    return _marqueeLbl;
}

- (void)addLeftAndRightGradient
{
    CGFloat w = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    SXColorGradientView *left = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(5, 0, h, h) visible:YES direction:SXColorGradientToRight];
    
    SXColorGradientView *right = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(w - h - 5, 0, h, h) visible:YES direction:SXColorGradientToLeft];
    
    [self addSubview:left];
    [self addSubview:right];
}

- (void)btnClick
{
    if (self.tapAction) {
        self.tapAction();
    }
}

@end
