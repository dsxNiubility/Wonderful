//
//  SXColorLblDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/19.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorLblDemoPage.h"
#import "SXColorLabel.h"
#import "UIColor+Wonderful.h"

#import "UILabel+Wonderful.h"

@interface SXColorLblDemoPage ()
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;
@property (weak, nonatomic) IBOutlet UIView *bodyView;

@end

@implementation SXColorLblDemoPage


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"SXColorLabel";
    
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(30, 300, 300, 30)];
//    label.font = [UIFont systemFontOfSize:14];
//    [label setColorText:@"我<也>不知道[<是>什么][啊啊]<啊>"];
//    [label setFontText:@"我<也>不知道[<是>]什么[>啊]啊[啊]"];
//    [label setColorFontText:@"我<也>不知道[<是>什么]啊啊[啊]"];
//    [self.view addSubview:label];
    
    self.msgLabel.text = @"a.把text里重要的内容用特殊符号包起来，就会特殊显示\nb.如果用<>包起来，就会显示高亮颜色。\nc.如果用[]包起来，就会显示高亮的字体。\nd.这个高亮颜色和高亮字体可以自行设置。\ne.两者也可以混合使用。 高亮的字体里有高亮颜色。\nf.如果输入格式错误，将会不正常显示";
    [self addBody];
    // Do any additional setup after loading the view.
}

- (void)addBody
{
    [SXColorLabel setAnotherColor:[UIColor salmonColor]];
    [SXColorLabel setAnotherFont:[UIFont boldSystemFontOfSize:18]];
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 10, 350, 30)];
    lbl.font = [UIFont systemFontOfSize:14];
    lbl.text = @"例1：今天要记得通知<Peter>和<Robin>去开会。";
    [self.bodyView addSubview:lbl];
    
    SXColorLabel *sxlbl = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 40, 350, 30)];
    [sxlbl setAnotherColor:[UIColor springGreen]];
    sxlbl.font = [UIFont systemFontOfSize:14];
    sxlbl.text = @"今天要记得通知<Peter>和<Robin>去开会。";
    [self.bodyView addSubview:sxlbl];
    
    UILabel *lbl2 = [[UILabel alloc]initWithFrame:CGRectMake(5, 90, 350, 30)];
    lbl2.font = [UIFont systemFontOfSize:14];
    lbl2.text = @"例2：礼物很有[粪]量，你会大吃一[斤]！";
    [self.bodyView addSubview:lbl2];
    
    SXColorLabel *sxlbl2 = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 120, 350, 30)];
    [sxlbl2 setAnotherFont:[UIFont systemFontOfSize:25]];
    sxlbl2.font = [UIFont systemFontOfSize:14];
    sxlbl2.text = @"礼物很有[粪]量，你会大吃一[斤]！";
    [self.bodyView addSubview:sxlbl2];
    
    UILabel *lbl3 = [[UILabel alloc]initWithFrame:CGRectMake(5, 170, 350, 30)];
    lbl3.font = [UIFont systemFontOfSize:14];
    lbl3.text = @"例3：一定要：[通知<Peter>和<Robin>去开会]";
    [self.bodyView addSubview:lbl3];
    
    SXColorLabel *sxlbl3 = [[SXColorLabel alloc]initWithFrame:CGRectMake(40, 200, 350, 30)];
    sxlbl3.font = [UIFont systemFontOfSize:14];
    sxlbl3.text = @"一定要：[通知<Peter>和<Robin>去开会]";
    [self.bodyView addSubview:sxlbl3];
    
    
    
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
