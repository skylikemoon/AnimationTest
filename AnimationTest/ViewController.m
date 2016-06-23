//
//  ViewController.m
//  AnimationTest
//
//  Created by eims1 on 16/6/4.
//  Copyright © 2016年 sky. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CGContextRefViewController.h"
#import "CGMutablePathRefViewController.h"
#import "Shape+BezierPathViewController.h"





@interface ViewController ()


@end

@implementation ViewController
- (void)btn01Click {
    CGMutablePathRefViewController *vc01 = [[CGMutablePathRefViewController alloc] init];
    vc01.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc01 animated:YES];
    
}
- (void)btn02Click {
    Shape_BezierPathViewController *vc01 = [[Shape_BezierPathViewController alloc] init];
    vc01.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc01 animated:YES];
    
}
- (void)btn03Click {
    CGContextRefViewController *vc01 = [[CGContextRefViewController alloc] init];
    vc01.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc01 animated:YES];
   
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn01 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn01.frame = CGRectMake(20, 80, 300, 40);
    [btn01 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn01 setTitle:@"CGMutablePathRef" forState:UIControlStateNormal];
    [btn01 addTarget:self action:@selector(btn01Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn01];
    
    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn02.frame = CGRectMake(20, 130, 300, 40);
    [btn02 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn02 setTitle:@"CAShapeLayer+UIBezierPath" forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(btn02Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn02];
    
    UIButton *btn03 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn03.frame = CGRectMake(20, 180, 300, 40);
    [btn03 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn03 setTitle:@"CGContextRef" forState:UIControlStateNormal];
    [btn03 addTarget:self action:@selector(btn03Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn03];
    

    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
