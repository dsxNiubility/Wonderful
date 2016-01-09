//
//  UILabel+Wonderful.m
//  Wonderful
//
//  Created by dongshangxian on 16/1/7.
//  Copyright © 2016年 Sankuai. All rights reserved.
//

#import "UILabel+Wonderful.h"

static UIColor *SXColorLabelAnotherColor;
static UIFont *SXColorLabelAnotherFont;

typedef NS_ENUM(NSInteger, SXLabelType) {
    SXLabelTypeColor = 1,
    SXLabelTypeFont = 2,
};


@implementation UILabel (Wonderful)

- (void)setColorText:(NSString *)text{
    if ([text rangeOfString:@"<"].location != NSNotFound){
        if (!SXColorLabelAnotherColor) {
            SXColorLabelAnotherColor = [UIColor redColor];
        }
        NSMutableString *mstr = [NSMutableString string];
        [mstr appendString:text];
        NSArray *rangeColorArray = [self scanBeginStr:@"<" endStr:@">" inText:&mstr];
        NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:mstr];
        AttributedStr = [self addAttributeString:AttributedStr withArray:rangeColorArray type:1];
        [self setAttributedText:AttributedStr];
    }else{
        [self setText:text];
    }
}

- (void)setFontText:(NSString *)text{
    if ([text rangeOfString:@"["].location != NSNotFound) {
        if (!SXColorLabelAnotherFont) {
            SXColorLabelAnotherFont = [UIFont boldSystemFontOfSize:18];
        }
        NSMutableString *mstr2 = [NSMutableString string];
        [mstr2 appendString:text];
        NSArray *rangeBoldArray = [self scanBeginStr:@"[" endStr:@"]" inText:&mstr2];
        NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:mstr2];
        AttributedStr = [self addAttributeString:AttributedStr withArray:rangeBoldArray type:2];
        [self setAttributedText:AttributedStr];
    }else{
        [self setText:text];
    }
}

- (void)setColorFontText:(NSString *)text{
    if (([text rangeOfString:@"<"].location != NSNotFound)||([text rangeOfString:@"["].location != NSNotFound)) {
        if (!SXColorLabelAnotherFont) {
            SXColorLabelAnotherFont = [UIFont boldSystemFontOfSize:18];
        }
        if (!SXColorLabelAnotherColor) {
            SXColorLabelAnotherColor = [UIColor redColor];
        }
        NSMutableString *mstr = [NSMutableString string];
        NSMutableString *mstr2 = [NSMutableString string];
        [mstr appendString:text];
        [mstr2 appendString:text];
        [mstr replaceOccurrencesOfString:@"[" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        [mstr replaceOccurrencesOfString:@"]" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        [mstr2 replaceOccurrencesOfString:@"<" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr2.length)];
        [mstr2 replaceOccurrencesOfString:@">" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr2.length)];
        NSArray *rangeColorArray = [self scanBeginStr:@"<" endStr:@">" inText:&mstr];
        NSArray *rangeBoldArray = [self scanBeginStr:@"[" endStr:@"]" inText:&mstr2];
        NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:mstr];
        AttributedStr = [self addAttributeString:AttributedStr withArray:rangeColorArray type:1];
        AttributedStr = [self addAttributeString:AttributedStr withArray:rangeBoldArray type:2];
        [self setAttributedText:AttributedStr];
    }else{
        [self setText:text];
    }
}

- (NSArray *)scanBeginStr:(NSString *)beginstr endStr:(NSString *)endstr inText:(NSMutableString * *)text{
    NSRange range1;
    NSRange range2;
    NSUInteger location =0;
    NSUInteger length = 0;
    range1.location = 0;
    
    NSMutableString *mstr2 = *text;
    NSMutableArray *rangeBoldArray = [NSMutableArray array];
    while (range1.location != NSNotFound) {
        range1 = [mstr2 rangeOfString:beginstr];
        range2 = [mstr2 rangeOfString:endstr];
        if (range1.location != NSNotFound) {
            location = range1.location;
            length = range2.location - range1.location-1;
            if (length > 5000)break;
            
            [mstr2 replaceOccurrencesOfString:beginstr withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range1.location + range1.length)];
            [mstr2 replaceOccurrencesOfString:endstr withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range2.location + range2.length - 1)];
        }
        NSDictionary *dict = @{@"location":@(location),@"length":@(length)};
        [rangeBoldArray addObject:dict];
    }
    return rangeBoldArray;
}

- (NSMutableAttributedString *)addAttributeString:(NSMutableAttributedString *)attributeStr withArray:(NSArray *)dictArray type:(SXLabelType)type{
    
    NSString *key = type == SXLabelTypeColor ? NSForegroundColorAttributeName : NSFontAttributeName;
    NSObject *value = type == SXLabelTypeColor ? SXColorLabelAnotherColor : SXColorLabelAnotherFont;
    
    for (NSDictionary *dict in dictArray) {
        NSUInteger lo = [dict[@"location"] integerValue];
        NSUInteger le = [dict[@"length"] integerValue];
        [attributeStr addAttribute:key
                              value:value
                              range:NSMakeRange(lo, le)];
    }
    return attributeStr;
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
