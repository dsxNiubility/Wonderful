//
//  SXColorWonderfulDemoVC.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/20.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorWonderfulDemoPage.h"
#import "SXDataSource.h"
#import "UIColor+Wonderful.h"
#import "SXColorListPage.h"

@interface SXColorWonderfulDemoPage ()
@property (weak, nonatomic) IBOutlet UILabel *showLbl1;
@property (weak, nonatomic) IBOutlet UILabel *showLbl2;
@property (weak, nonatomic) IBOutlet UILabel *showLbl3;
@property (weak, nonatomic) IBOutlet UILabel *msgLabel1;

@property(nonatomic,strong)SXDataSource *dataSource;
@end

@implementation SXColorWonderfulDemoPage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIColor+Wonderful";
    
    self.showLbl1.layer.cornerRadius = 4;
    self.showLbl1.layer.masksToBounds = YES;
    
    self.showLbl2.layer.cornerRadius = 4;
    self.showLbl2.layer.masksToBounds = YES;
    
    self.showLbl3.layer.cornerRadius = 4;
    self.showLbl3.layer.masksToBounds = YES;
    self.msgLabel1.text = @"a.提供了近百种扩充颜色可以以用户习惯的方式敲出\nb.上面的颜色也可以用阶梯的宏敲出\nc.提供了颜色微调的API\nd.可以取出颜色的内部属性也可以打印详细";
    
    self.dataSource = [SXDataSource new];
    
    [self randomColor];
}

- (IBAction)randomColor {
    SXCLEntity *item1 = [self.dataSource randomAColorEntity];
    self.showLbl1.backgroundColor = SXRGB16Color(item1.colorValue);
    self.showLbl1.text = [NSString stringWithFormat:@"[UIColor %@]",item1.methodName];
    
    SXCLEntity *item2 = [self.dataSource randomAColorEntity];
    self.showLbl2.backgroundColor = SXRGB16Color(item2.colorValue);
    self.showLbl2.text = [NSString stringWithFormat:@"[UIColor %@]",item2.methodName];
    
    SXCLEntity *item3 = [self.dataSource randomAColorEntity];
    self.showLbl3.backgroundColor = SXRGB16Color(item3.colorValue);
    self.showLbl3.text = [NSString stringWithFormat:@"[UIColor %@]",item3.methodName];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[SXColorListPage class]]) {
        SXColorListPage *page = (SXColorListPage *)segue.destinationViewController;
        page.marray = self.dataSource.marray;
        page.titleArray = self.dataSource.titleArray;
    }
}

@end
