//
//  SXMarqueeDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/20.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXMarqueeDemoPage.h"
#import "UIColor+Wonderful.h"
#import "SXMarquee.h"
#import "SXHeadLine.h"

@interface SXMarqueeDemoPage ()
@property (weak, nonatomic) IBOutlet UILabel *msgLabel2;
@end

@implementation SXMarqueeDemoPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SXMarquee";
    // Do any additional setup after loading the view.
    self.msgLabel2.text = @"a.可创建各种颜色的跑马灯\nb.默认按下停止可以拖动，也可绑定其他点击事件\nc.可以设置速度，颜色，字体等多种属性\nd.后续会有更多扩展";
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    SXMarquee *mar = [[SXMarquee alloc]initWithFrame:CGRectMake(20, 255, 335, 35) speed:4 Msg:@"重大活动，天猫的双十一，然而并没卵用" bgColor:[UIColor salmonColor] txtColor:[UIColor whiteColor]];
    [mar changeMarqueeLabelFont:[UIFont systemFontOfSize:26]];
    [mar changeTapMarqueeAction:^{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"点击事件" message:@"可以设置弹窗，当然也能设置别的" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    }];
    [mar start];
    
    SXMarquee *mar2 = [[SXMarquee alloc]initWithFrame:CGRectMake(20, 305, 335, 30) speed:4 Msg:@"重大活动，京东的双十一，然而并没卵用"];
    [mar2 changeMarqueeLabelFont:[UIFont boldSystemFontOfSize:15]];
    [mar2 start];
    
    SXMarquee *mar3 = [[SXMarquee alloc]initWithFrame:CGRectMake(20, 350, 335, 25) speed:2 Msg:@"If you've submitted an update to fix a critical bug in your app on the App Store and you are requesting an expedited review, be sure to include the steps to reproduce the bug on the current version of your app." bgColor:[UIColor goldColor] txtColor:[UIColor goldenrod]];
    [mar3 changeMarqueeLabelFont:[UIFont boldSystemFontOfSize:12]];
    [mar3 start];
    
    SXMarquee *mar4 = [[SXMarquee alloc]initWithFrame:CGRectMake(20, 390, 335, 25) speed:8 Msg:@"If you've submitted an update to fix a critical bug in your app on the App Store and you are requesting an expedited review, be sure to include the steps to reproduce the bug on the current version of your app." bgColor:[UIColor paleGreen] txtColor:[UIColor plumColor]];
    [mar4 changeMarqueeLabelFont:[UIFont boldSystemFontOfSize:13]];
    [mar4 start];
    
    SXHeadLine *headLine1 = [[SXHeadLine alloc]initWithFrame:CGRectMake(20, 430, 200, 30)];
    headLine1.messageArray = @[@"重大活动，天猫的双十一，然而并没卵用",@"库里43分，勇士吊打骑士",@"范冰冰李晨回家过年，年夜饭朴素"];
    headLine1.bgColor = [UIColor springGreen];
    headLine1.hasGradient = YES;
    [headLine1 start];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [headLine1 stop];
//    });
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(15 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [headLine1 start];
//    });
    
    [self.view addSubview:mar];
    [self.view addSubview:mar2];
    [self.view addSubview:mar3];
    [self.view addSubview:mar4];
    [self.view addSubview:headLine1];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
