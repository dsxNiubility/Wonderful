//
//  SXHeadLine.m
//  Wonderful
//
//  Created by dongshangxian on 16/2/18.
//  Copyright © 2016年 Sankuai. All rights reserved.
//

#import "SXHeadLine.h"

@interface SXHeadLine ()

@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UILabel *label2;
@property(nonatomic,assign)NSInteger messageIndex;
@property(nonatomic,assign)CGFloat h;

@end
@implementation SXHeadLine

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.h = frame.size.height;
        UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, frame.size.width, _h)];
        UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(10, _h, frame.size.width, _h)];
        label1.font = [UIFont systemFontOfSize:12];
        label2.font = label1.font;
        label1.textColor = [UIColor blackColor];
        label2.textColor = [UIColor blackColor];
        
        self.label1 = label1;
        self.label2 = label2;
        [self addSubview:label1];
        [self addSubview:label2];
        self.clipsToBounds = YES;
    }
    return self;
}

-(void)setMessageArray:(NSArray *)messageArray
{
    _messageArray = messageArray;
    if (self.messageArray.count > 2) {
        self.label1.text = self.messageArray[0];
        self.label2.text = self.messageArray[1];
        self.messageIndex = 2;
    }else if (self.messageArray.count == 1){
        self.label1.text = self.messageArray[0];
        [self.timer invalidate];
    }else if (self.messageArray.count == 2){
        self.label1.text = self.messageArray[0];
        self.label2.text = self.messageArray[1];
        self.messageIndex = 0;
    }
}

- (void)scrollAnimate
{
    CGRect rect1 = self.label1.frame;
    CGRect rect2 = self.label2.frame;
    rect1.origin.y -= _h;
    rect2.origin.y -= _h;
    [UIView animateWithDuration:0.5 animations:^{
        self.label1.frame = rect1;
        self.label2.frame = rect2;
    } completion:^(BOOL finished) {
        [self checkLabelFrameChange:self.label1];
        [self checkLabelFrameChange:self.label2];
    }];
}

- (void)checkLabelFrameChange:(UILabel *)label
{
    if (label.frame.origin.y < -10) {
        CGRect rect = label.frame;
        rect.origin.y = _h;
        label.frame = rect;
        label.text = self.messageArray[self.messageIndex];
        if (self.messageIndex == self.messageArray.count - 1) {
            self.messageIndex = 0;
        }else{
            self.messageIndex += 1;
        }
    }
}

- (void)start{
    NSTimer *timer = [NSTimer timerWithTimeInterval:3 target:self selector:@selector(scrollAnimate) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
}

- (void)stop{
    [self.timer invalidate];
}

@end

