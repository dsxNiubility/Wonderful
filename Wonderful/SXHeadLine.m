//
//  SXHeadLine.m
//  Wonderful
//
//  Created by dongshangxian on 16/2/18.
//  Copyright © 2016年 Sankuai. All rights reserved.
//

#import "SXHeadLine.h"
#import "SXColorGradientView.h"

#define kSXHeadLineMargin 10


//typedef void(^SXWonderfulAction)(NSInteger index);
typedef NS_ENUM(NSInteger, SXMarqueeTapMode) {
    SXMarqueeTapForMove = 1,
    SXMarqueeTapForAction = 2
};
@interface SXHeadLine ()

@property (nonatomic,strong) UILabel              *label1;
@property (nonatomic,strong) UILabel              *label2;
@property (nonatomic,assign) NSInteger             messageIndex;
@property (nonatomic,assign) CGFloat               h;
@property (nonatomic,assign) CGFloat               w;
@property (nonatomic,strong) NSTimer              *timer;
@property (nonatomic,strong) SXColorGradientView  *viewTop;
@property (nonatomic,strong) SXColorGradientView  *viewBottom;
@property (nonatomic,strong) UIButton             *bgBtn;
@property (nonatomic,copy  ) actionBlock           tapAction;
@property (nonatomic,assign) SXMarqueeTapMode      tapMode;


@end
@implementation SXHeadLine

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.h                   = frame.size.height;
        self.w                   = frame.size.width;
        UILabel *label1          = [[UILabel alloc]initWithFrame:CGRectMake(kSXHeadLineMargin, 0, frame.size.width, _h)];
        UILabel *label2          = [[UILabel alloc]initWithFrame:CGRectMake(kSXHeadLineMargin, _h, frame.size.width, _h)];
        self.bgColor             = [UIColor whiteColor];
        self.textColor           = [UIColor blackColor];
        self.scrollDuration      = 1.0f;
        self.stayDuration        = 4.0f;
        self.cornerRadius        = 2;
        self.textFont            = [UIFont systemFontOfSize:12];
        label1.font              = label2.font = _textFont;
        label1.textColor         = label2.textColor = _textColor;
        self.label1              = label1;
        self.label2              = label2;
        [self addSubview:label1];
        [self addSubview:label2];
        self.layer.cornerRadius  = self.cornerRadius;
        self.layer.masksToBounds = YES;
    }
    return self;
}

#pragma mark - **************** animate
- (void)scrollAnimate
{
    CGRect rect1 = self.label1.frame;
    CGRect rect2 = self.label2.frame;
    rect1.origin.y -= _h;
    rect2.origin.y -= _h;
    [UIView animateWithDuration:_scrollDuration animations:^{
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

#pragma mark - **************** opration
- (void)start{
    if (self.messageArray.count < 2) {
        return;
    }
    NSTimer *timer = [NSTimer timerWithTimeInterval:_stayDuration target:self selector:@selector(scrollAnimate) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
}

- (void)stop{
    [self.timer invalidate];
}

#pragma mark - **************** set
-(void)setMessageArray:(NSArray *)messageArray
{
    _messageArray = messageArray;
    if (self.messageArray.count > 2) {
        self.label1.text = self.messageArray[0];
        self.label2.text = self.messageArray[1];
        self.messageIndex = 2;
    }else if (self.messageArray.count == 1){
        self.label1.text = self.messageArray[0];
    }else if (self.messageArray.count == 2){
        self.label1.text = self.messageArray[0];
        self.label2.text = self.messageArray[1];
        self.messageIndex = 0;
    }
}

- (void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    self.label1.textColor = textColor;
    self.label2.textColor = textColor;
}

- (void)setTextFont:(UIFont *)textFont{
    _textFont = textFont;
    self.label1.font = textFont;
    self.label2.font = textFont;
}

- (void)setBgColor:(UIColor *)bgColor{
    _bgColor = bgColor;
    self.backgroundColor = bgColor;
}

- (void)setScrollDuration:(NSTimeInterval)scrollDuration{
    _scrollDuration = scrollDuration;
}

- (void)setStayDuration:(NSTimeInterval)stayDuration{
    _stayDuration = stayDuration;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setHasGradient:(BOOL)hasGradient{
    _hasGradient = hasGradient;
    if (hasGradient) {
        _viewTop = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(0, 0, _w, _h * 0.2) direction:SXGradientToBottom];
        _viewBottom = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(0, _h * 0.8, _w, _h * 0.2) direction:SXGradientToTop];
        [self addSubview:_viewTop];
        [self addSubview:_viewBottom];
    }else{
        [_viewTop removeFromSuperview];
        [_viewBottom removeFromSuperview];
    }
}

- (void)setBgColor:(UIColor *)bgColor textColor:(UIColor *)textColor textFont:(UIFont *)textFont
{
    self.bgColor = bgColor;
    self.textColor = textColor;
    self.textFont = textFont;
}

- (void)setScrollDuration:(NSTimeInterval)scrollDuration stayDuration:(NSTimeInterval)stayDuration
{
    self.scrollDuration = scrollDuration;
    self.stayDuration = stayDuration;
}

- (void)changeTapMarqueeAction:(actionBlock)action{
    
    [self addSubview:self.bgBtn];
    self.tapAction = action;
    self.tapMode = SXMarqueeTapForAction;
}


- (UIButton *)bgBtn
{
    if (!_bgBtn) {
        CGFloat w = self.frame.size.width;
        CGFloat h = self.frame.size.height;
        _bgBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, w, h)];
        [_bgBtn addTarget:self action:@selector(bgButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _bgBtn;
}

- (void)bgButtonClick
{
    if (self.tapAction)
    {
        NSLog(@"***** messageIndex : %ld", (self.messageIndex + self.messageArray.count - 2)%self.messageArray.count);
        self.tapAction((self.messageIndex + self.messageArray.count - 2)%self.messageArray.count);
    }
}

@end

