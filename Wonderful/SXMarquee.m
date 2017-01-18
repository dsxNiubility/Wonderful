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

@property (nonatomic,strong) UIButton             *bgBtn;
@property (nonatomic,strong) UILabel              *marqueeLbl;
@property (nonatomic,strong) UIColor              *bgColor;
@property (nonatomic,strong) UIColor              *txtColor;
@property (nonatomic,copy  ) NSString             *msg;
@property (nonatomic,strong) NSTimer              *timer;
@property (nonatomic,copy  ) SXWonderfulAction     tapAction;
@property (nonatomic,strong) SXColorGradientView  *leftFade;
@property (nonatomic,strong) SXColorGradientView  *rightFade;
@property (nonatomic,assign) SXMarqueeTapMode      tapMode;
@property (nonatomic,assign) SXMarqueeSpeedLevel   speedLevel;
@property (nonatomic,strong) UIView               *middleView;
@property (nonatomic,strong) UIFont               *marqueeLabelFont;

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

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
    self.layer.masksToBounds = YES;
    self.backgroundColor = self.bgColor;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(backAndRestart) name:@"UIApplicationDidBecomeActiveNotification" object:nil];
    UIView *middleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.middleView = middleView;
    [_middleView addSubview:self.marqueeLbl];
    [self addSubview:_middleView];
    [self addLeftAndRightGradient];
}

- (void)changeTapMarqueeAction:(void(^)())action{
    [self addSubview:self.bgBtn];
    self.tapAction = action;
    self.tapMode = SXMarqueeTapForAction;
}

- (void)changeMarqueeLabelFont:(UIFont *)font{
    self.marqueeLbl.font = font;
    self.marqueeLabelFont = font;
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
        if (self.marqueeLabelFont != nil) {
            _marqueeLbl.font = self.marqueeLabelFont;
        }
        _marqueeLbl.textColor = self.txtColor;
    }
    return _marqueeLbl;
}

- (void)addLeftAndRightGradient{
    CGFloat w = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    SXColorGradientView *leftFade = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(0, 0, h, h) direction:SXGradientToRight];
    self.leftFade = leftFade;
    
    SXColorGradientView *rightFade = [SXColorGradientView createWithColor:self.bgColor frame:CGRectMake(w - h, 0, h, h) direction:SXGradientToLeft];
    self.rightFade = rightFade;
    
    [self addSubview:leftFade];
    [self addSubview:rightFade];
}

- (void)bgButtonClick{
    if (self.tapAction) {
        self.tapAction();
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.tapMode == SXMarqueeTapForMove) {
        [self stop];
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.tapMode == SXMarqueeTapForMove) {
        [self restart];
    }
}

#pragma mark - 操作
- (void)start{
    [self moveAction];
}

- (void)backAndRestart{
    [self.marqueeLbl.layer removeAllAnimations];
    [self.marqueeLbl removeFromSuperview];
    self.marqueeLbl = nil;
    [self.middleView addSubview:self.marqueeLbl];
    [self moveAction];
}

- (void)stop{
    [self pauseLayer:self.marqueeLbl.layer];
}

- (void)restart{
    [self resumeLayer:self.marqueeLbl.layer];
}

- (void)moveAction
{
    CGRect fr = self.marqueeLbl.frame;
    fr.origin.x = self.frame.size.width;
    self.marqueeLbl.frame = fr;
    
    CGPoint fromPoint = CGPointMake(self.frame.size.width + self.marqueeLbl.frame.size.width/2, self.frame.size.height/2);
    
    UIBezierPath *movePath = [UIBezierPath bezierPath];
    [movePath moveToPoint:fromPoint];
    [movePath addLineToPoint:CGPointMake(-self.marqueeLbl.frame.size.width/2, self.frame.size.height/2)];

    CAKeyframeAnimation *moveAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    moveAnim.path = movePath.CGPath;
    moveAnim.removedOnCompletion = YES;
    
    moveAnim.duration = self.marqueeLbl.frame.size.width * self.speedLevel * 0.01;
    [moveAnim setDelegate:self];
    
    [self.marqueeLbl.layer addAnimation:moveAnim forKey:nil];
}

-(void)pauseLayer:(CALayer*)layer
{
    CFTimeInterval pausedTime = [layer convertTime:CACurrentMediaTime() fromLayer:nil];
    layer.speed = 0.0;
    layer.timeOffset = pausedTime;
}

-(void)resumeLayer:(CALayer*)layer
{
    CFTimeInterval pausedTime = layer.timeOffset;
    layer.speed = 1.0;
    layer.timeOffset = 0.0;
    layer.beginTime = 0.0;
    CFTimeInterval timeSincePause = [layer convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
    layer.beginTime = timeSincePause;
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    if (flag) {
        [self moveAction];
    }
}

//- (void)newThread
//{
//    @autoreleasepool
//    {
//        NSTimer *timer = [NSTimer timerWithTimeInterval:(12) target:self selector:@selector(moveAction) userInfo:nil repeats:YES];
//        self.timer = timer;
//
//        [[NSThread currentThread]setName:[NSString stringWithFormat:@"%d号",arc4random()%100]];
//
//        [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
//        [[NSRunLoop currentRunLoop]addPort:[NSMachPort port] forMode:NSRunLoopCommonModes];
//        [[NSRunLoop currentRunLoop]run];
//    }
//}

//- (void)marqueeMove{
//        NSLog(@"Timer %@", [NSThread currentThread]);
//    CGRect fr = self.marqueeLbl.frame;
//    if (fr.origin.x + fr.size.width < 0) {
//        fr.origin.x = self.frame.size.width;
//    }else{
//        fr.origin.x += -1;
//    }
//    self.marqueeLbl.frame = fr;
//}


@end
