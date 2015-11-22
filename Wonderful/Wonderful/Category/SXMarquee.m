//
//  SXMarquee.m
//  Wonderful
//
//  Created by dongshangxian on 15/11/5.
//  Copyright © 2015年 Sankuai. All rights reserved.
//

#import "SXMarquee.h"
#import "SXColorGradientView.h"

typedef void(^SXWonderfulAction)();

typedef NS_ENUM(NSInteger, SXMarqueeTapMode) {
    SXMarqueeTapForMove = 1,
    SXMarqueeTapForAction = 2
};

@interface SXMarquee ()

@property(nonatomic,strong)UIButton *bgBtn;
@property(nonatomic,strong)UILabel *marqueeLbl;
@property(nonatomic,strong)UIColor *bgColor;
@property(nonatomic,strong)UIColor *txtColor;
@property(nonatomic,copy)NSString *msg;
@property(nonatomic,strong)NSTimer *timer;
@property(nonatomic,copy)SXWonderfulAction tapAction;

@property(nonatomic,strong)SXColorGradientView *leftFade;
@property(nonatomic,strong)SXColorGradientView *rightFade;

@property(nonatomic,assign)SXMarqueeTapMode tapMode;
@property(nonatomic,assign)SXMarqueeSpeedLevel speedLevel;

@end
@implementation SXMarquee

- (instancetype)initWithFrame:(CGRect)frame speed:(SXMarqueeSpeedLevel)speed Msg:(NSString *)msg bgColor:(UIColor *)bgColor txtColor:(UIColor *)txtColor{
    if (self = [super initWithFrame:frame]) {
        self.layer.cornerRadius = 2;
        if(bgColor){
            self.bgColor = bgColor;
        }else{
            self.bgColor = [UIColor whiteColor];
        }
        
        if (txtColor) {
            self.txtColor = txtColor;
        }else{
            self.txtColor = [UIColor darkGrayColor];
        }
        
        if (speed) {
            self.speedLevel = speed;
        }else{
            self.speedLevel = 3;
        }
        
        self.msg = msg;
        [self doSometingBeginning];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame speed:(SXMarqueeSpeedLevel)speed Msg:(NSString *)msg{
    if (self = [super initWithFrame:frame]) {
        self.msg = msg;
        if (speed) {
            self.speedLevel = speed;
        }else{
            self.speedLevel = 3;
        }
        self.bgColor = [UIColor whiteColor];
        self.txtColor = [UIColor darkGrayColor];
        [self doSometingBeginning];
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    CGFloat w = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    self.leftFade.frame = CGRectMake(0, 0, h, h);
    self.rightFade.frame = CGRectMake(w - h, 0, h, h);
}

- (void)doSometingBeginning{
    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(newThread) object:nil];
    [thread start];
    self.layer.masksToBounds = YES;
    self.backgroundColor = self.bgColor;
//    self.speedLevel = 3;
//    [self timerStart];
    [self addSubview:self.marqueeLbl];
    [self addLeftAndRightGradient];
}

- (void)changeTapMarqueeAction:(void(^)())action{
    [self addSubview:self.bgBtn];
    self.tapAction = action;
    self.tapMode = SXMarqueeTapForAction;
}

//- (void)changeMarqueeSpeedLevel:(SXMarqueeSpeedLevel)speedLevel{
//    self.speedLevel = speedLevel;
//}

- (void)changeMarqueeLabelFont:(UIFont *)font{
    self.marqueeLbl.font = font;
    CGSize msgSize = [_marqueeLbl.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil]];
    CGRect fr = self.marqueeLbl.frame;
    fr.size.width = msgSize.width;
    self.marqueeLbl.frame = fr;
}

- (UIButton *)bgBtn{
    if (!_bgBtn) {
        CGFloat w = self.frame.size.width;
        CGFloat h = self.frame.size.height;
        _bgBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, w, h)];
        [_bgBtn addTarget:self action:@selector(bgButtonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _bgBtn;
}

- (UILabel *)marqueeLbl{
    if (!_marqueeLbl) {
        self.tapMode = SXMarqueeTapForMove;
        CGFloat h = self.frame.size.height;
        _marqueeLbl = [[UILabel alloc]init];
        _marqueeLbl.text = self.msg;
        UIFont *fnt = [UIFont fontWithName:@"HelveticaNeue" size:14.0f];
        _marqueeLbl.font = fnt;
        CGSize msgSize = [_marqueeLbl.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:fnt,NSFontAttributeName, nil]];
        _marqueeLbl.frame = CGRectMake(0, 0, msgSize.width, h);
        
        _marqueeLbl.textColor = self.txtColor;
    }
    return _marqueeLbl;
}

- (void)addLeftAndRightGradient{
    CGFloat w = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    SXColorGradientView *leftFade = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(0, 0, h, h) visible:YES direction:SXColorGradientToRight];
    self.leftFade = leftFade;
    
    SXColorGradientView *rightFade = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(w - h, 0, h, h) visible:YES direction:SXColorGradientToLeft];
    self.rightFade = rightFade;
    
    [self addSubview:leftFade];
    [self addSubview:rightFade];
}

- (void)bgButtonClick{
    if (self.tapAction) {
        self.tapAction();
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    if (self.tapMode == SXMarqueeTapForMove) {
        UITouch *tou = [touches anyObject];
        CGPoint now = [tou locationInView:self];
        CGPoint pre = [tou previousLocationInView:self];
        CGFloat offsetX = now.x - pre.x;
        CGRect frame = self.marqueeLbl.frame;
        frame.origin.x = frame.origin.x + offsetX;
        self.marqueeLbl.frame = frame;
    }
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"按下");
    if (self.tapMode == SXMarqueeTapForMove) {
        [self timerStop];
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"结束");
    if (self.tapMode == SXMarqueeTapForMove) {
        [self timerStart];
    }
}

#pragma mark - 计时器关闭和开启 RunLoop相关
- (void)timerStop{
    [self.timer invalidate];
    self.timer = nil;
}

- (void)timerStart{
    [self newThread];
}

- (void)newThread
{
    @autoreleasepool
    {
        NSTimer *timer = [NSTimer timerWithTimeInterval:(0.01 * self.speedLevel) target:self selector:@selector(marqueeMove) userInfo:nil repeats:YES];
        self.timer = timer;
    
        [[NSThread currentThread]setName:[NSString stringWithFormat:@"%d号",arc4random()%100]];
        
        [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
//        [[NSRunLoop currentRunLoop]addPort:[NSMachPort port] forMode:NSRunLoopCommonModes];
        [[NSRunLoop currentRunLoop]run];
    }
}

- (void)marqueeMove{
        NSLog(@"Timer %@", [NSThread currentThread]);
    CGRect fr = self.marqueeLbl.frame;
    if (fr.origin.x + fr.size.width < 0) {
        fr.origin.x = self.frame.size.width;
    }else{
        fr.origin.x += -1;
    }
    self.marqueeLbl.frame = fr;
}


@end
