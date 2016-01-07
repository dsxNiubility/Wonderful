//
//  UILabel+Wonderful.h
//  Wonderful
//
//  Created by dongshangxian on 16/1/7.
//  Copyright © 2016年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Wonderful)

- (void)setColorText:(NSString *)text;

- (void)setFontText:(NSString *)text;

- (void)setColorFontText:(NSString *)text;

+ (void)setAnotherColor:(UIColor *)color;

+ (void)setAnotherFont:(UIFont *)font;


@end
