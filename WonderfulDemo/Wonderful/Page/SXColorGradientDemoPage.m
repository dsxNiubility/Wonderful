//
//  SXColorGradientDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/20.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorGradientDemoPage.h"
#import "UIColor+Wonderful.h"
#import "SXColorGradientView.h"
#import "SXDataSource.h"

@interface SXColorGradientDemoPage ()
@property (weak, nonatomic) IBOutlet UIView *gradientContent;
@property(nonatomic,weak)SXColorGradientView *grv1;
@property(nonatomic,weak)SXColorGradientView *grv2;
@property(nonatomic,weak)SXColorGradientView *grv3;
@property(nonatomic,weak)SXColorGradientView *grv4;

@property(nonatomic,weak)SXColorGradientView *grv5;

@property(nonatomic,weak)SXColorGradientView *grv6;
@property(nonatomic,weak)SXColorGradientView *grv7;

@property(nonatomic,strong)SXDataSource *dataSource;

@property (weak, nonatomic) IBOutlet UILabel *msgLabel;

@end

@implementation SXColorGradientDemoPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SXColorGradientView";
    
    self.dataSource = [SXDataSource new];
    self.msgLabel.text = @"a.支持只传一个颜色默认往透明渐变。\nb.支持传两个颜色相互渐变。\nc.支持传一个数组，自动计算渐变。\nd.支持4种渐变方向，后续还会扩展。";
    [self randomGradient];
    
    
//    SXCLEntity *item5 = [self.dataSource randomAColorEntity];
//    SXColorGradientView *grv51 = [SXColorGradientView createWithColor:SXRGB16Color(item5.colorValue) frame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 255, 375, 255) direction:SXGradientToTop];
//    NSArray *colorArray = @[[UIColor redColor],[UIColor orangeColor],[UIColor yellowColor],[UIColor greenColor],[UIColor blueColor],[UIColor purpleColor]];
    NSArray *colorArray = @[Wonderful_BlueColor4,Wonderful_PurpleColor5,Wonderful_PinkColor5,Wonderful_RedColor5,Wonderful_YelloeColor5,Wonderful_GreenColor3,Wonderful_CyanColor4];
    CGRect rect = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 255, 375, 255);
    SXColorGradientView *grv5 = [SXColorGradientView createWithColorArray:colorArray frame:rect direction:SXGradientToRight];
    SXColorGradientView *grv5_5 = [SXColorGradientView createWithColor:[UIColor whiteColor] frame:rect direction:SXGradientToBottom];
    
    [self.view addSubview:grv5];
    [self.view addSubview:grv5_5];
//    self.grv5 = grv5;
    
}

- (IBAction)randomGradient {
    [self.grv1 removeFromSuperview];
    [self.grv2 removeFromSuperview];
    [self.grv3 removeFromSuperview];
    [self.grv4 removeFromSuperview];
    [self.grv6 removeFromSuperview];
    [self.grv7 removeFromSuperview];

    self.grv1 = nil;
    self.grv2 = nil;
    self.grv3 = nil;
    self.grv4 = nil;
    self.grv6 = nil;
    self.grv7 = nil;

    
    SXCLEntity *item1 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv1 = [SXColorGradientView createWithColor:SXRGB16Color(item1.colorValue) frame:CGRectMake(10, 10, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv1];
    
    SXCLEntity *item2 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv2 = [SXColorGradientView createWithColor:SXRGB16Color(item2.colorValue) frame:CGRectMake(100, 10, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv2];
    
    SXCLEntity *item3 = [self.dataSource randomAColorEntity];
    SXCLEntity *item31 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv3 = [SXColorGradientView createWithFromColor:SXRGB16Color(item3.colorValue) toColor:SXRGB16Color(item31.colorValue) frame:CGRectMake(10, 50, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv3];
    
    SXCLEntity *item4 = [self.dataSource randomAColorEntity];
    SXCLEntity *item41 = [self.dataSource randomAColorEntity];
    SXColorGradientView *grv4 = [SXColorGradientView createWithFromColor:SXRGB16Color(item4.colorValue) toColor:SXRGB16Color(item41.colorValue) frame:CGRectMake(100, 50, 80, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv4];
    
    
    SXCLEntity *item6 = [self.dataSource randomAColorEntity];
    NSArray *array6 = @[SXRGB16Color(item1.colorValue),SXRGB16Color(item2.colorValue),SXRGB16Color(item6.colorValue)];
    SXColorGradientView *grv6 = [SXColorGradientView createWithColorArray:array6 frame:CGRectMake(10, 100, 335, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv6];
    
    SXCLEntity *item71 = [self.dataSource randomAColorEntity];
    SXCLEntity *item72 = [self.dataSource randomAColorEntity];
    SXCLEntity *item73 = [self.dataSource randomAColorEntity];
    NSArray *array7 = @[SXRGB16Color(item31.colorValue),SXRGB16Color(item41.colorValue),SXRGB16Color(item71.colorValue),SXRGB16Color(item72.colorValue),SXRGB16Color(item73.colorValue)];
    SXColorGradientView *grv7 = [SXColorGradientView createWithColorArray:array7 frame:CGRectMake(10, 140, 335, 30) direction:SXGradientToRight];
    [self.gradientContent addSubview:grv7];
    

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
    
    grv6.layer.cornerRadius = 2;
    grv6.layer.masksToBounds = YES;
    self.grv6 = grv6;
    
    grv7.layer.cornerRadius = 2;
    grv7.layer.masksToBounds = YES;
    self.grv7 = grv7;

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
