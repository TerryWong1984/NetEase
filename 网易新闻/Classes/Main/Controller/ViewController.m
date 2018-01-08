//
//  ViewController.m
//  网易新闻
//
//  Created by TerryWong on 2017/12/23.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "TWLeftMenu.h"
#import "TWNavController.h"
#import "TWNewsController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建左边菜单栏
    TWLeftMenu *leftMenu = [[TWLeftMenu alloc]init];
    leftMenu.x = 0 ;
    leftMenu.y = 60 ;
    leftMenu.height = 300 ;
    leftMenu.width = 200 ;
    [self.view addSubview:leftMenu];
    
    //
    TWNewsController *newTab = [[TWNewsController alloc]init];
    TWNavController *newsNav = [[TWNavController alloc]initWithRootViewController:newTab];
    [self.view addSubview:newsNav.view];
    [self addChildViewController:newsNav];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent ;
}

@end
