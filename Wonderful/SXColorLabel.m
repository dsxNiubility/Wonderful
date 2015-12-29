//
//  SXColorLabel.m
//  Wonderful
//
//  Created by dongshangxian on 15/12/19.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXColorLabel.h"

@implementation SXColorLabel

static UIColor *SXColorLabelAnotherColor;
static UIFont *SXColorLabelAnotherFont;

- (void)setText:(NSString *)text
{
    if (([text rangeOfString:@"<"].location != NSNotFound)||([text rangeOfString:@"["].location != NSNotFound)) {
        if (!SXColorLabelAnotherFont) {
            SXColorLabelAnotherFont = [UIFont boldSystemFontOfSize:18];
        }
        if (!SXColorLabelAnotherColor) {
            SXColorLabelAnotherColor = [UIColor redColor];
        }
        NSMutableAttributedString *AttributedStr;
        NSRange range1;
        NSRange range2;
        NSUInteger location =0;
        NSUInteger length = 0;
        NSMutableArray *rangeColorArray = [NSMutableArray array];
        NSMutableArray *rangeBoldArray = [NSMutableArray array];
        NSMutableString *mstr = [NSMutableString string];
        NSMutableString *mstr2 = [NSMutableString string];
        [mstr appendString:text];
        [mstr2 appendString:text];
        
        [mstr replaceOccurrencesOfString:@"[" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        [mstr replaceOccurrencesOfString:@"]" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        [mstr2 replaceOccurrencesOfString:@"<" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr2.length)];
        [mstr2 replaceOccurrencesOfString:@">" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr2.length)];
        
        range1.location = 0;
        while (range1.location != NSNotFound) {
            range1 = [mstr rangeOfString:@"<"];
            range2 = [mstr rangeOfString:@">"];
            
            if (range1.location != NSNotFound) {
                location = range1.location;
                length = range2.location - range1.location-1;
                if (length > 5000)break;
                
                [mstr replaceOccurrencesOfString:@"<" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range1.location + range1.length)];
                [mstr replaceOccurrencesOfString:@">" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range2.location + range2.length - 1)];
            }

            NSDictionary *dict = @{@"location":@(location),@"length":@(length)};
            [rangeColorArray addObject:dict];
        }
        
        range1.location = 0;
        length = 0;
        location = 0;
        while (range1.location != NSNotFound) {
            range1 = [mstr2 rangeOfString:@"["];
            range2 = [mstr2 rangeOfString:@"]"];
            
            if (range1.location != NSNotFound) {
                location = range1.location;
                length = range2.location - range1.location-1;
                if (length > 5000)break;
                
                [mstr2 replaceOccurrencesOfString:@"[" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range1.location + range1.length)];
                [mstr2 replaceOccurrencesOfString:@"]" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range2.location + range2.length - 1)];
            }

            NSDictionary *dict = @{@"location":@(location),@"length":@(length)};
            [rangeBoldArray addObject:dict];
        }
        
        [mstr2 replaceOccurrencesOfString:@"[" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr2.length)];
        [mstr2 replaceOccurrencesOfString:@"]" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr2.length)];
        
        AttributedStr = [[NSMutableAttributedString alloc]initWithString:mstr];
        for (NSDictionary *dict in rangeColorArray) {
            NSUInteger lo = [dict[@"location"] integerValue];
            NSUInteger le = [dict[@"length"] integerValue];
            [AttributedStr addAttribute:NSForegroundColorAttributeName
                                  value:SXColorLabelAnotherColor
                                  range:NSMakeRange(lo, le)];
        }
        
        for (NSDictionary *dict in rangeBoldArray) {
            NSUInteger lo = [dict[@"location"] integerValue];
            NSUInteger le = [dict[@"length"] integerValue];
            [AttributedStr addAttribute:NSFontAttributeName
                                  value:SXColorLabelAnotherFont
                                  range:NSMakeRange(lo, le)];
        }

        [self setAttributedText:AttributedStr];
    }else{
        [super setText:text];
    }
}

+ (void)setAnotherColor:(UIColor *)color
{
    SXColorLabelAnotherColor = color;
}

+ (void)setAnotherFont:(UIFont *)font
{
    SXColorLabelAnotherFont = font;
}

@end
