//
//  SXColorGradientDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/20.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorGradientDemoVC.h"
#import "UIColor+Wonderful.h"
#import "SXColorGradientView.h"
#import "ViewController.h"
#import "SXCLE.h"

@interface SXColorGradientDemoVC ()
@property (weak, nonatomic) IBOutlet UIView *gradientContent;
@property(nonatomic,weak)SXColorGradientView *grv1;
@property(nonatomic,weak)SXColorGradientView *grv2;
@property(nonatomic,weak)SXColorGradientView *grv3;
@property(nonatomic,weak)SXColorGradientView *grv4;

@property(nonatomic,weak)SXColorGradientView *grv5;

@property(nonatomic,strong)ViewController *dataSource;
@end

@implementation SXColorGradientDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [ViewController new];
    [self randomGradient];
    // Do any additional setup after loading the view.
}

- (IBAction)randomGradient {
    [self.grv1 removeFromSuperview];
    [self.grv2 removeFromSuperview];
    [self.grv3 removeFromSuperview];
    [self.grv4 removeFromSuperview];
    [self.grv5 removeFromSuperview];
    self.grv1 = nil;
    self.grv2 = nil;
    self.grv3 = nil;
    self.grv4 = nil;
    self.grv5 = nil;
    
    SXCLE *item1 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv1 = [SXColorGradientView createWithColor:SXRGB16Color(item1.colorValue) frame:CGRectMake(10, 10, 80, 30) visible:YES direction:SXColorGradientToRight];
    [self.gradientContent addSubview:grv1];
    
    SXCLE *item2 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv2 = [SXColorGradientView createWithColor:SXRGB16Color(item2.colorValue) frame:CGRectMake(100, 10, 80, 30) visible:YES direction:SXColorGradientToRight];
    [self.gradientContent addSubview:grv2];
    
    SXCLE *item3 = [self.dataSource randomAColorEntity];
    SXCLE *item31 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv3 = [SXColorGradientView createWithFromColor:SXRGB16Color(item3.colorValue) toColor:SXRGB16Color(item31.colorValue) frame:CGRectMake(10, 50, 80, 30) direction:SXColorGradientToRight];
    [self.gradientContent addSubview:grv3];
    
    SXCLE *item4 = [self.dataSource randomAColorEntity];
    SXCLE *item41 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv4 = [SXColorGradientView createWithFromColor:SXRGB16Color(item4.colorValue) toColor:SXRGB16Color(item41.colorValue) frame:CGRectMake(100, 50, 80, 30) direction:SXColorGradientToRight];
    [self.gradientContent addSubview:grv4];
    
    
    SXCLE *item5 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv5 = [SXColorGradientView createWithColor:SXRGB16Color(item5.colorValue) frame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 60, 375, 60) visible:YES direction:SXColorGradientToTop];
    [self.view addSubview:grv5];
    
    grv1.layer.cornerRadius = 2;
    grv1.layer.masksToBounds = YES;
    self.grv1 = grv1;
    
    grv2.layer.cornerRadius = 2;
    grv2.layer.masksToBounds = YES;
    self.grv2 = grv2;
    
    grv3.layer.cornerRadius = 2;
    grv3.layer.masksToBounds = YES;
    self.grv3 = grv3;
    
    grv4.layer.cornerRadius = 2;
    grv4.layer.masksToBounds = YES;
    self.grv4 = grv4;
    self.grv5 = grv5;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
