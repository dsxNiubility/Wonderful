//
//  SXMarquee.m
//  Wonderful
//
//  Created by dongshangxian on 15/11/5.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXMarquee.h"

@interface SXMarquee ()

@property(nonatomic,strong)UIButton *bgBtn;
@property(nonatomic,strong)UILabel *marqueeLbl;

@end
@implementation SXMarquee

- (instancetype)initWithFrame:(CGRect)frame Msg:(NSString *)msg action:(void(^)())action color:(UIColor *)color{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = color;
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = YES;
        
        [self addSubview:self.bgBtn];
        [self addSubview:self.marqueeLbl];
        self.marqueeLbl.text = msg;
    }
    return self;
}

- (UIButton *)bgBtn
{
    if (!_bgBtn) {
        _bgBtn = [[UIButton alloc]initWithFrame:self.frame];
        NSLog(@"%@",NSStringFromCGRect(self.frame));
        _bgBtn.backgroundColor = [UIColor yellowColor];
    }
    return _bgBtn;
}

- (UILabel *)marqueeLbl
{
    if (!_marqueeLbl) {
        _marqueeLbl = [[UILabel alloc]initWithFrame:self.frame];
        NSLog(@"%@",NSStringFromCGRect(self.frame));
        _marqueeLbl.textColor = [UIColor whiteColor];
        _marqueeLbl.backgroundColor = [UIColor orangeColor];
    }
    return _marqueeLbl;
}

@end
