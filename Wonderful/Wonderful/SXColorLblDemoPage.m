//
//  SXColorLblDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/19.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorLblDemoPage.h"
#import "SXColorLabel.h"

@interface SXColorLblDemoPage ()

@end

@implementation SXColorLblDemoPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"SXColorLabel";
    
    SXColorLabel *label = [[SXColorLabel alloc]initWithFrame:CGRectMake(30, 300, 300, 30)];
    label.text  = @"我<也>不知道<是>什么";
    
    [self.view addSubview:label];
    // Do any additional setup after loading the view.
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
