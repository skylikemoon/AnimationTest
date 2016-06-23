//
//  Animation03.m
//  AnimationTest
//
//  Created by eims1 on 16/6/22.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "Animation03.h"

@implementation Animation03


-(void)drawRect:(CGRect)rect
{
    /*画直线*/
    CGContextRef ctx01 = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx01, 20, 10);
    CGContextAddLineToPoint(ctx01, 100, 10);
    
    CGContextSetRGBStrokeColor(ctx01, 0, 120, 0, 1);
    CGContextSetLineWidth(ctx01, 5.0);
    CGContextSetLineCap(ctx01, kCGLineCapRound);
    CGContextSetLineJoin(ctx01, kCGLineJoinRound);
    CGContextStrokePath(ctx01);

    /*画三角形*/
    CGContextRef ctx02 = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx02, 20, 100);
    CGContextAddLineToPoint(ctx02, 100, 100);
    CGContextAddLineToPoint(ctx02, 60, 40);
    CGContextClosePath(ctx02);
    CGContextStrokePath(ctx02);
    
    /*画四边形*/
    CGContextRef ctx03 = UIGraphicsGetCurrentContext();
    CGContextAddRect(ctx03, CGRectMake(20, 120, 100, 20));
    [[UIColor redColor] setStroke];
    [[UIColor redColor] setFill];
    //实心
//    CGContextFillPath(ctx03);
    //空心
    CGContextStrokePath(ctx03);
    
    /*画圆1---指定弧线画圆*/
    CGContextRef ctx04 = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx04, 20+45, 160+45, 45, 0, M_PI*2, YES);//注意：圆心和原点和半径的位置关系
    [[UIColor blackColor] setStroke];
    [[UIColor brownColor] setFill];
    //实心圆
//    CGContextFillPath(ctx04);
    //空心圆
    CGContextStrokePath(ctx04);
    
     /*画圆2---实质上是画一个矩形的内切圆*/
    CGContextRef ctx05 = UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(ctx05, CGRectMake(20+45, 160+45, 45, 45));//可以测试计算一下：圆心和原点和半径的位置关系
    CGContextAddEllipseInRect(ctx05, CGRectMake(20, 260, 90, 90));
//    CGContextFillPath(ctx05);
    CGContextStrokePath(ctx05);
    
    /*画圆3---最简单的方法 2句*/
//    CGContextRef ctx06 = UIGraphicsGetCurrentContext();
//    CGContextStrokeEllipseInRect(ctx06, CGRectMake(120, 260, 90, 90));
//    或
//    CGContextFillEllipseInRect(ctx06, CGRectMake(120, 260, 90, 90));

    
    /*画圆弧*/
    CGContextRef ctx07 = UIGraphicsGetCurrentContext();
//    CGContextAddArc(ctx07, 20+45, 360+45, 45, M_PI_2, M_PI, YES);
    CGContextAddArc(ctx07, 20+45, 360+45, 45, M_PI_2, M_PI, NO);
    CGContextStrokePath(ctx07);
//    CGContextFillPath(ctx07);
    
    /*画饼状图---半径线+圆弧==饼状图*/
    CGContextRef ctx08 = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx08, 20+45, 460+45);
    CGContextAddLineToPoint(ctx08, 20+45, 460+45+45);
    CGContextAddArc(ctx08, 20+45, 460+45, 45, M_PI_2, M_PI, YES);
    CGContextClosePath(ctx08);
    CGContextFillPath(ctx08);
//    CGContextStrokePath(ctx08);
    

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
