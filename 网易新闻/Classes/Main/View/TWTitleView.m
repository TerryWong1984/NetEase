//
//  TWTitleView.m
//  网易新闻
//
//  Created by TerryWong on 2018/1/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "TWTitleView.h"

@implementation TWTitleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *titleBtn = [[UIButton alloc]init];
        titleBtn.width = 150 ;
        titleBtn.height = 35 ;
        [titleBtn setTitle:@"新闻" forState:UIControlStateNormal];
        [titleBtn setImage:[UIImage imageNamed:@"navbar_netease"] forState:UIControlStateNormal];
        titleBtn.titleLabel.textColor = [UIColor whiteColor];
        titleBtn.titleLabel.font = [UIFont systemFontOfSize:17];
        [self addSubview:titleBtn];
    }
    return self;
}

@end
