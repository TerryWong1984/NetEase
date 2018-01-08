//
//  TWNavContoller.m
//  网易新闻
//
//  Created by TerryWong on 2018/1/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "TWNavController.h"

@interface TWNavController ()

@end

@implementation TWNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

+ (void)initialize
{
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"top_navigation_background"] forBarMetrics:UIBarMetricsDefault];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
