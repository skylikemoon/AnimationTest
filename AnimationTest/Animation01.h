//
//  Animation01.h
//  AnimationTest
//
//  Created by eims1 on 16/6/4.
//  Copyright © 2016年 sky. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,Animation01Type){
    Animation01TypeNormal,
    Animation01TypeDoubleLine,
    Animation01TypeThicknessLine
};


@interface Animation01 : UIView
@property (nonatomic,assign) CGFloat progress;
- (instancetype)initWithBackgroundImg:(UIImage *)backgroundImg frame:(CGRect)frame lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor backColor:(UIColor *)backColor type:(Animation01Type)type;

- (void)startAnimation:(CGFloat)progress;

@end
