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
        NSMutableAttributedString *AttributedStr;
        
        NSRange range1;
        NSRange range2;
        NSUInteger location =0;
        NSUInteger length = 0;
        
        NSMutableArray *rangeArray = [NSMutableArray array];
        
        while (range1.location != NSNotFound) {
            range1 = [mstr rangeOfString:@"<"];
            range2 = [mstr rangeOfString:@">"];
            
            if (range1.location != NSNotFound) {
                location = range1.location;
                length = range2.location - range1.location-1;
                
                [mstr replaceOccurrencesOfString:@"<" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range1.location + range1.length)];
                [mstr replaceOccurrencesOfString:@">" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, range2.location + range2.length - 1)];
            }
            if (length > 5000) {
                break;
            }
            NSDictionary *dict = @{@"location":@(location),@"length":@(length)};
            [rangeArray addObject:dict];
        }
        [mstr replaceOccurrencesOfString:@"<" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        [mstr replaceOccurrencesOfString:@">" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, mstr.length)];
        AttributedStr = [[NSMutableAttributedString alloc]initWithString:mstr];
        for (NSDictionary *dict in rangeArray) {
            NSUInteger lo = [dict[@"location"] integerValue];
            NSUInteger le = [dict[@"length"] integerValue];
            [AttributedStr addAttribute:NSForegroundColorAttributeName
                                  value:[UIColor redColor]
                                  range:NSMakeRange(lo, le)];
            [AttributedStr addAttribute:NSFontAttributeName
                                  value:[UIFont boldSystemFontOfSize:15]
                                  range:NSMakeRange(lo, le)];
        }
        [self setAttributedText:AttributedStr];
    }else{
        [super setText:text];
    }
    

}

@end
