//
//  SXColorLabel.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/19.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorLabel.h"

@implementation SXColorLabel

- (void)setText:(NSString *)text
{
    if (([text rangeOfString:@"<"].location != NSNotFound)||([text rangeOfString:@"["].location != NSNotFound)) {
        NSMutableString *mstr = [NSMutableString string];
        [mstr appendString:text];
        NSRange range1;
        NSRange range2;
        NSUInteger location =0;
        NSUInteger length = 0;
        if (range1.location != NSNotFound) {
            range1 = [mstr rangeOfString:@"<"];
            range2 = [mstr rangeOfString:@">"];
            
            location = range1.location;
            length = range2.location - range1.location-1;
            [mstr replaceOccurrencesOfString:@"<" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
            [mstr replaceOccurrencesOfString:@">" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        }
        NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:mstr];
        [AttributedStr addAttribute:NSForegroundColorAttributeName
                              value:[UIColor orangeColor]
                              range:NSMakeRange(location, length)];
        [AttributedStr addAttribute:NSFontAttributeName
                              value:[UIFont boldSystemFontOfSize:15]
                              range:NSMakeRange(location, length)];
        [self setAttributedText:AttributedStr];
    }else{
        [super setText:text];
    }
    

}

@end
