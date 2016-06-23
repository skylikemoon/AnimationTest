//
//  Animtion02.m
//  UncircleDemo
//
//  Created by eims1 on 16/6/7.
//  Copyright © 2016年 sky. All rights reserved.
//  不完整的圆弧

#import "Animation02.h"

#define degreesToRadians(x) (M_PI*(x)/180.0) //把角度转换成PI的方式
#define PROGREESS_WIDTH 200 //圆直径
#define PROGRESS_LINE_WIDTH 10 //弧线的宽度
@interface Animation02 ()
{
    CAShapeLayer *_backgroundLayer;
    CAShapeLayer *_progressLayer;
}
@end

@implementation Animation02

- (id)initWithFrame:(CGRect)frame diameter:(CGFloat)diamter roundWidth:(CGFloat)roundWidth start:(CGPoint)startPoint
{
    if (self = [super initWithFrame:frame]) {
        self.diamter = diamter;
        self.roundWidth = roundWidth;
        self.startPoint = startPoint;
        
        //创建一个灰色背景圆弧
        _backgroundLayer = [CAShapeLayer layer];
        _backgroundLayer.frame = self.bounds;
        _backgroundLayer.fillColor = [[UIColor clearColor] CGColor];
        _backgroundLayer.strokeColor = [UIColor lightGrayColor].CGColor;//圆弧的渲染颜色
        _backgroundLayer.opacity = 0.8;
        _backgroundLayer.lineCap = kCALineCapRound;//指定圆弧的边缘是圆的
        _backgroundLayer.lineWidth = roundWidth;//圆弧的宽度
        
        //创建圆弧路径
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:(diamter-roundWidth)/2 startAngle:degreesToRadians(_startPoint.x) endAngle:degreesToRadians(_startPoint.y) clockwise:NO];
        _backgroundLayer.path =[path CGPath]; //把路径path传递給圆弧的path。
        [self.layer addSublayer:_backgroundLayer];

        //创建带颜色的第二个弧度
        _progressLayer = [CAShapeLayer layer];
        _progressLayer.frame = self.bounds;
        _progressLayer.fillColor = [[UIColor whiteColor] CGColor];
        _progressLayer.strokeColor  = [[UIColor redColor] CGColor];
        _progressLayer.lineCap = kCALineCapRound;
        _progressLayer.lineWidth = self.roundWidth;
        [self.layer addSublayer:_progressLayer];
        
        
    }
    return self;
}

-(void)setPercent:(CGFloat)percent animated:(BOOL)animated
{
   //根据进度计算圆弧路径
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:(_diamter-_roundWidth)/2 startAngle:degreesToRadians(_startPoint.x) endAngle: ((M_PI * 2) * (percent) - M_PI_2)+M_PI+M_PI_2 clockwise:NO];
    _progressLayer.path =[path CGPath];
    
    //(M_PI * 2) * (percent/100) - M_PI_2
    //degreesToRadians(_startPoint.x)
    //M_PI_4+((M_PI * 2) * (percent/100))
    
    //逆时针动画 basicAnim.fromValue = @(0); basicAnim.toValue = @(1);----逆时针方向 KeyPath:strokeEnd
    //顺时针动画 basicAnim.fromValue = @(1); basicAnim.toValue = @(0);----顺时针方向 KeyPath:strokeStart

//    CABasicAnimation *basicAnim = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
//    basicAnim.duration = 1.0;
//    basicAnim.fromValue = @(1);
//    basicAnim.toValue = @(0);
//    [_progressLayer addAnimation:basicAnim forKey:@"eeeEnd"];

    
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end

