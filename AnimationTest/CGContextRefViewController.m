//
//  CGContextRefViewController.m
//  AnimationTest
//
//  Created by eims1 on 16/6/23.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "CGContextRefViewController.h"
#import "Animation03.h"

@interface CGContextRefViewController ()

@end

@implementation CGContextRefViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Animation03 *v03 = [[Animation03 alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    v03.backgroundColor = [UIColor clearColor];
    [self.view addSubview:v03];
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
