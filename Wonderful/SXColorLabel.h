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

/**
 *  Instance method to set color, the priority is higher.
 *
 */
- (void)setAnotherColor:(UIColor *)color;

/**
 *  Instance method to set font, the priority is higher.
 *
 */
- (void)setAnotherFont:(UIFont *)font;

/**
 *  The color for this label instance
 */
@property(nonatomic,strong)UIColor *anotherColor;
/**
 *  The font for this label instance
 */
@property(nonatomic,strong)UIFont *anotherFont;

@end
