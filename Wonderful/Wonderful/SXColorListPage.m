//
//  SXColorListPage.m
//  Wonderful
//
//  Created by dongshangxian on 15/10/30.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorListPage.h"
#import "SXColorListCell.h"
#import "SXCLE.h"
#import "UIColor+Wonderful.h"
#import <objc/runtime.h>

@interface SXColorListPage ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *titleArray;
@property(nonatomic,strong)NSMutableArray *marray;

@end

@implementation SXColorListPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleArray = @[@"红",@"黄",@"绿",@"青",@"蓝",@"紫",@"灰",@"白",@"棕",@"粉"];
    
    SXCLE *a1 = [SXCLE CWV:0xFFB6C1 D:@"浅粉红" N:@"lightPink"];
    
    
    
    SXCLE *j1 = [SXCLE CWV:0xFFB6C1 D:@"浅粉红" N:@"lightPink"];
    SXCLE *j2 = [SXCLE CWV:0xFFC0CB D:@"适中的粉红" N:@"mediumPink"];
    SXCLE *j3 = [SXCLE CWV:0xDB7093 D:@"苍白的紫罗兰红色" N:@"paleVioletRed"];
    SXCLE *j4 = [SXCLE CWV:0xFF1493 D:@"深粉色" N:@"deepPink"];
    SXCLE *j5 = [SXCLE CWV:0xC71585 D:@"适中的紫罗兰红色" N:@"mediumVioletRed"];
    NSArray *array10 = @[j1,j2,j3,j4,j5];
    self.marray = [NSMutableArray array];
    [self.marray addObjectsFromArray:array10];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.rowHeight = 40;
//    [self runTests];
}
//- (void)runTests
//{
//    unsigned int count;
//    Method *methods = class_copyMethodList([UIColor class], &count);
//    for (int i = 0; i < count; i++)
//    {
//        Method method = methods[i];
//        SEL selector = method_getName(method);
//        NSString *name = NSStringFromSelector(selector);
//        NSLog(@"方法名字 ==== %@",name);
//
//    }
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.marray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SXCLE *cle = self.marray[indexPath.row];
    SXColorListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCell"];
    cell.NameLabel.text = cle.desc;
    cell.NumLabel.text = cle.methodName;
    cell.backgroundColor = SXRGB16Color(cle.colorValue);

    return cell;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return self.titleArray[section];
}

@end
