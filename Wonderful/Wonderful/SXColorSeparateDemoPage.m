//
//  SXColorSeparateDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/20.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorSeparateDemoPage.h"
#import "UIColor+Wonderful.h"
#import "UIColor+Separate.h"
#import "SXDataSource.h"

@interface SXColorSeparateDemoPage ()
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UILabel *printLabel;

@end

@implementation SXColorSeparateDemoPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIColor+Separate";
    
    self.printLabel.text = @"点击颜色色块，会将改颜色的各种详情信息打印\n\n点击下面的反色的按钮会将颜色显示为该颜色的反色";
    
    [self addColorView];
    
}

- (void)printDetailWithBtn:(UIButton *)sender
{
    
    [UIView animateWithDuration:0.2 animations:^{
        sender.transform = CGAffineTransformMakeScale(0.6, 0.6);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.2 animations:^{
            sender.transform = CGAffineTransformIdentity;
        }];
    }];
    UIColor *color = sender.backgroundColor;
    self.printLabel.text = [color printDetail];
}

- (void)reverseWithBtn:(UIButton *)sender
{
    UIButton *btn = sender.superview.subviews[0];
    UIColor *bgColor = btn.backgroundColor;

    
    [UIView animateWithDuration:0.2 animations:^{
        btn.transform = CGAffineTransformMakeScale(0.6, 0.6);
    } completion:^(BOOL finished) {
        btn.backgroundColor = [bgColor reverseColor];
        [UIView animateWithDuration:0.2 animations:^{
            btn.transform = CGAffineTransformIdentity;
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addColorView
{
    
    CGFloat x;
    CGFloat y;
    CGFloat w = 75;
    CGFloat h = 100;
    int col;
    int row;
    for (int i=0; i<10; i++) {
        UIView *view = [[UIView alloc]init];
        row = i/5;
        col = i%5;
        x = col*75;
        y = row*100;
        view.frame = CGRectMake(x, y, w, h);
        
        UIButton *btn = [[UIButton alloc]init];
        btn.frame = CGRectMake(10, 10, 60, 60);
        
        // ------这里这么写是为了吧rgb 0~30 和 235~256 隔离了，避免出现很极端很难看的颜色。
        NSInteger r = arc4random()%205 + 30;
        NSInteger g = arc4random()%205 + 30;
        NSInteger b = arc4random()%205 + 30;
        btn.backgroundColor = SXRGBAColor(r, g, b, 1);
        [btn addTarget:self action:@selector(printDetailWithBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.layer.cornerRadius = 30;
        btn.layer.masksToBounds = YES;
        [view addSubview:btn];
        
        UIButton *reverse = [[UIButton alloc]init];
        reverse.frame = CGRectMake(0, 75, 75, 20);
        [reverse setTitle:@"反色" forState:UIControlStateNormal];
        [reverse setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        reverse.titleLabel.font = [UIFont boldSystemFontOfSize:14];
        [reverse addTarget:self action:@selector(reverseWithBtn:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:reverse];
        
        [self.topView addSubview:view];
    }

}

@end
