//
//  Shape+BezierPathViewController.m
//  AnimationTest
//
//  Created by eims1 on 16/6/23.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "Shape+BezierPathViewController.h"
#import "Animation02.h"
#define MSWIDTH [UIScreen mainScreen].bounds.size.width

@interface Shape_BezierPathViewController ()
@property(strong, nonatomic)Animation02 *progress;

@end

@implementation Shape_BezierPathViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.progress = [[Animation02 alloc]initWithBackgroundImg:nil frame:CGRectMake(MSWIDTH - 15 - progressWidth, self.view.frame.size.height * 0.15, progressWidth, progressWidth) lineWidth:4 lineColor:[UIColor blueColor] backColor:[UIColor lightGrayColor] type:Animation01TypeNormal];
    
    Animation02 *an02 = [[Animation02 alloc]initWithFrame:CGRectMake(MSWIDTH/4-60, 150, 120, 120) diameter:120 roundWidth:4 start:CGPointMake(0, 60)];
    //    [an02 setPercent:80 animated:NO];
    [self.view addSubview:an02];
    
    Animation02 *an03 = [[Animation02 alloc]initWithFrame:CGRectMake(MSWIDTH/2+MSWIDTH/4-60, 150, 120, 120) diameter:120 roundWidth:4 start:CGPointMake(60, 0)];
    //        [an03 setPercent:80 animated:NO];
    [self.view addSubview:an03];
    
    Animation02 *an04 = [[Animation02 alloc]initWithFrame:CGRectMake(MSWIDTH/4-60, 280, 120, 120) diameter:120 roundWidth:4 start:CGPointMake(0, 180)];
    [an04 setPercent:(CGFloat)20/100 animated:NO];
    [self.view addSubview:an04];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
