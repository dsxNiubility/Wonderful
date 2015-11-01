//
//  ViewController.m
//  Wonderful
//
//  Created by dongshangxian on 15/10/26.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Wonderful.h"
#import "SXColorGradientView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor salmonColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    SXColorGradientView *view2 = [SXColorGradientView createWithColor:nil frame:CGRectMake(20, 50, 200, 80) visible:NO direction:2];
    
    [self.view addSubview:view2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
