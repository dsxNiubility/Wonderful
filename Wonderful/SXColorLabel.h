//
//  SXColorLabel.h
//  Wonderful
//
//  Created by dongshangxian on 15/12/19.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXColorLabel : UILabel

/**
 *  Set a highlight color to show emphasis between the beginmark and endmark
 *
 *  @param color A color different from label.TextColor
 */
+ (void)setAnotherColor:(UIColor *)color;

/**
 *  Set a highlight font to show emphasis between the beginmark and endmark
 *
 *  @param font A font different from label.font
 */
+ (void)setAnotherFont:(UIFont *)font;

- (void)setAnotherColor:(UIColor *)color;
- (void)setAnotherFont:(UIFont *)font;
@property(nonatomic,strong)UIColor *anotherColor;
@property(nonatomic,strong)UIFont *anotherFont;

@end
