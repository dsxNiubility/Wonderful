//
//  SXMarquee.h
//  Wonderful
//
//  Created by dongshangxian on 15/11/5.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXMarquee : UIView

- (instancetype)initWithFrame:(CGRect)frame Msg:(NSString *)msg action:(void(^)())action color:(UIColor *)color;

@end
