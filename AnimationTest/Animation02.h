//
//  Animtion02.h
//  UncircleDemo
//
//  Created by eims1 on 16/6/7.
//  Copyright © 2016年 sky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Animation02 : UIView
- (id)initWithFrame:(CGRect)frame diameter:(CGFloat)diamter roundWidth:(CGFloat)roundWidth start:(CGPoint)startPoint;

-(void)setPercent:(CGFloat)percent animated:(BOOL)animated;

@property (nonatomic ,assign) CGFloat diamter;
@property (nonatomic ,assign) CGFloat roundWidth;
@property (nonatomic ,assign) CGPoint startPoint;

@end
