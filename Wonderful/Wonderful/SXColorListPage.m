//
//  SXColorListPage.m
//  Wonderful
//
//  Created by dongshangxian on 15/10/30.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorListPage.h"
#import "SXColorListCell.h"
#import "UIColor+Wonderful.h"
#import <objc/runtime.h>

@interface SXColorListPage ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSMutableArray *marray;

@end

@implementation SXColorListPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *array1 = @[@"lightPink",@"mediumPink",@"paleVioletRed",@"deepPink",@"mediumVioletRed"];
    self.marray = [NSMutableArray array];
    [self.marray addObjectsFromArray:array1];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
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
    SXColorListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCell"];
    cell.NameLabel.text = self.marray[indexPath.row];
    
//    Class class = NSClassFromString(@"UIColor");
//    SEL selector = NSSelectorFromString(cell.NameLabel.text);

//    IMP imp = [class methodForSelector:selector];
//    void (*func)(id, SEL) = (void *)imp;
//    
//    
//    cell.backgroundColor = func(class, selector);
    return cell;
    
}

@end
