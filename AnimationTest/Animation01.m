//
//  Animation01.m
//  AnimationTest
//
//  Created by eims1 on 16/6/4.
//  Copyright © 2016年 sky. All rights reserved.
// 完整的圆弧

#import "Animation01.h"
@interface Animation01()
@property (nonatomic,assign) CGFloat lineWidth;
@property (nonatomic,strong) UIColor *lineColor;
@property (nonatomic,strong) UIColor *backColor;
@property (nonatomic,strong) UIImageView *backgroundImg;
@property (nonatomic,strong) CAShapeLayer *animLayer;

@end

@implementation Animation01
-(void)startAnimation:(CGFloat)progress
{
    if (progress == 0) {
        self.progress = 0;
        [self.animLayer removeFromSuperlayer];
        return;
    }else if (self.progress == progress)
    {
        return;
    }
    
    self.progress = progress;
    if (self.animLayer) {
        [self.animLayer removeFromSuperlayer];
    }else
    {
        self.animLayer = [[CAShapeLayer alloc] init];
        CGMutablePathRef path = CGPathCreateMutable();
        self.animLayer.backgroundColor = [UIColor clearColor].CGColor;
        
        if (self.lineWidth) {
            self.animLayer.lineWidth = self.lineWidth;
        }else{
            self.animLayer.lineWidth = 2.0;
        }
        
        if (self.lineColor != nil) {
            self.animLayer.strokeColor = self.lineColor.CGColor;
            self.animLayer.fillColor = [UIColor clearColor].CGColor;
            
        }else
        {
            self.animLayer.strokeColor = [UIColor blueColor].CGColor;
            self.animLayer.fillColor = [UIColor clearColor].CGColor;
        }
        
        CGFloat radiu = (CGFloat)self.frame.size.width>self.frame.size.height?self.frame.size.height/2:self.frame.size.width/2;

        
        if (progress == 1.0) {
            CGPathAddArc(path, nil, self.frame.size.width/2, self.frame.size.height/2, radiu, M_PI*1.5, M_PI*3.5, false);
        }else
        {
            CGPathAddArc(path, nil, self.frame.size.width/2, self.frame.size.height/2, radiu, M_PI*1.5, (M_PI*2.0)*progress-M_PI_2, false);//计算弧度的算法
        }
        
        //设置阴影
        if ([UIScreen mainScreen].bounds.size.height != 480) {
            self.animLayer.shadowColor = [UIColor grayColor].CGColor;
            self.animLayer.shadowOffset = CGSizeMake(-1, 1);
            self.animLayer.shadowOpacity = 0.65;
            
        }
        
        //设置动画
        self.animLayer.path = path;
//        CABasicAnimation *basicAnim = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];//KeyPath关键字： strokeEnd、strokeStart
//        basicAnim.duration = 1.0;
//        basicAnim.fromValue = @(0);
//        basicAnim.toValue = @(1);
//        [self.animLayer addAnimation:basicAnim forKey:@"strokeEnd"];//strokeAnim
        
        //basicAnim.fromValue = @(1); basicAnim.toValue = @(0);----顺时针方向 KeyPath:strokeStart
        //basicAnim.fromValue = @(0); basicAnim.toValue = @(1);----逆时针方向 KeyPath:strokeEnd

        CABasicAnimation *basicAnim = [CABasicAnimation animationWithKeyPath:@"strokeStart"];//strokeEnd
        basicAnim.duration = 1.0;
        basicAnim.fromValue = @(1);
        basicAnim.toValue = @(0);
        [self.animLayer addAnimation:basicAnim forKey:@"eeeEnd"];//strokeAnim
        
        [self.layer addSublayer:self.animLayer];
        
    }
    
    
}

-(instancetype)initWithBackgroundImg:(UIImage *)backgroundImg frame:(CGRect)frame lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor backColor:(UIColor *)backColor type:(Animation01Type)type
{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor clearColor];
    self.lineWidth = lineWidth;
    self.lineColor = lineColor;
    self.backgroundImg.frame = frame;
    [self addSubview:self.backgroundImg];
    if (self.backgroundImg.image != nil) {
        return self;
    }
    
    CGMutablePathRef path = CGPathCreateMutable();
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    [self.layer addSublayer:layer];
    
    layer.backgroundColor = [UIColor clearColor].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    CGFloat radiu = (CGFloat)self.frame.size.width>self.frame.size.height?self.frame.size.height/2:self.frame.size.width/2;
    
    
    switch (type) {
        case Animation01TypeDoubleLine:
        {
            layer.lineWidth = 0.5;
            CGFloat lineWidthOffset = self.lineWidth - 0.5;
            CGPathAddArc(path, nil, self.frame.size.width/2, self.frame.size.height/2, radiu-6+lineWidthOffset/2.0, 0.0, M_PI*2, false);
            CGPathMoveToPoint(path, nil, self.frame.size.width/2, self.frame.size.height/2);
            CGPathAddArc(path, nil, self.frame.size.width/2, self.frame.size.height/2, radiu-6+lineWidthOffset/2.0, 0.0, M_PI*2, false);
            layer.strokeColor = lineColor.CGColor;
            
        }
            break;
        case Animation01TypeThicknessLine:
        {
            if (self.lineWidth) {
                layer.lineWidth = self.lineWidth-3.0;
                
            }else
            {
                layer.lineWidth =1.5;
                
            }
            
            
            if (backColor == nil) {
                layer.strokeColor = [UIColor orangeColor].CGColor;
            }else{
                layer.strokeColor = backColor.CGColor;
            }
            CGPathAddArc(path, nil, self.frame.size.width/2, self.frame.size.height/2, radiu-6, 0.0, M_PI*2, false);
            
        
        }
            break;
            
        default:
        {
            if (self.lineWidth) {
                layer.lineWidth = self.lineWidth - 0.5;
                
            }else{
                layer.lineWidth = 1.5;
            }

            
            if (backColor == nil) {
                layer.strokeColor = [UIColor orangeColor].CGColor;
            }else
            {
                layer.strokeColor = backColor.CGColor;
            }
            CGPathAddArc(path, nil, self.frame.size.width/2, self.frame.size.height/2, radiu-6, 0.0, M_PI*2.0, false);
        }
            break;
    }
    
    layer.path = path;
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
