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
#import "UIColor+Separate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *testC = [UIColor goldColor];
    float r= [testC red];
    float g= [testC green];
    float b= [testC blue];
    float alpha= [testC alpha];
    
    NSLog(@"******  %f,%f,%f,%f",r,g,b,alpha);
    
//    self.view.backgroundColor = [UIColor salmonColor];
    // Do any additional setup after loading the view, typically from a nib.
    
//    SXColorGradientView *view2 = [SXColorGradientView createWithColor:[UIColor goldColor] frame:CGRectMake(0, 84, 375, 64) visible:NO direction:3];
    SXColorGradientView *view2 = [SXColorGradientView createWithFromColor:[UIColor lawnGreen] toColor:[UIColor peachRed] frame:CGRectMake(0, 84, 375, 200) direction:2];
    
    [self.view addSubview:view2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
