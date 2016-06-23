//
//  CGMutablePathRefViewController.m
//  AnimationTest
//
//  Created by eims1 on 16/6/23.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "CGMutablePathRefViewController.h"
#import "Animation01.h"

#define MSWIDTH [UIScreen mainScreen].bounds.size.width
#define MSHEIGHT [UIScreen mainScreen].bounds.size.height
#define  progressWidth 80.f

@interface CGMutablePathRefViewController ()
@property(strong, nonatomic)Animation01 *progress;
@end

@implementation CGMutablePathRefViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.progress = [[Animation01 alloc]initWithBackgroundImg:nil frame:CGRectMake(MSWIDTH - 15 - progressWidth, self.view.frame.size.height * 0.15, progressWidth, progressWidth) lineWidth:4 lineColor:[UIColor blueColor] backColor:[UIColor lightGrayColor] type:Animation01TypeNormal];
    [self.view addSubview:_progress];
    [self.progress startAnimation:0.7];
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
