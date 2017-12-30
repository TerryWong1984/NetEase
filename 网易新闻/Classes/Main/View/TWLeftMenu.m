//
//  TWLeftMenu.m
//  网易新闻
//
//  Created by TerryWong on 2017/12/26.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "TWLeftMenu.h"

@interface TWLeftMenu()

@property (nonatomic,strong)UIButton *selectedButton;

@end





@implementation TWLeftMenu

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        CGFloat alpha = 0.2;
        [self setupBtnWithIcon:@"sidebar_nav_news" title:@"新闻" bgColor:TWColorRGBA(202, 68, 73, alpha)];
        [self setupBtnWithIcon:@"sidebar_nav_reading" title:@"订阅" bgColor:TWColorRGBA(190, 111, 69, alpha)];
        [self setupBtnWithIcon:@"sidebar_nav_photo" title:@"图片" bgColor:TWColorRGBA(76, 132, 190, alpha)];
        [self setupBtnWithIcon:@"sidebar_nav_video" title:@"视频" bgColor:TWColorRGBA(101, 170, 78, alpha)];
        [self setupBtnWithIcon:@"sidebar_nav_comment" title:@"跟帖" bgColor:TWColorRGBA(170, 172, 73, alpha)];
        [self setupBtnWithIcon:@"sidebar_nav_radio" title:@"电台" bgColor:TWColorRGBA(190, 62, 119, alpha)];
        UIButton *initialSelected = [self subviews][0];
        _selectedButton = initialSelected ;
        [initialSelected setSelected:YES];

        
    }
    return self;
}

/**
 *  添加按钮
 *
 *  @param icon  图标
 *  @param title 标题
 */
- (UIButton *)setupBtnWithIcon:(NSString *)icon title:(NSString *)title bgColor:(UIColor *)bgColor
{
    UIButton *btn = [[UIButton alloc] init];
    btn.tag = self.subviews.count;
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    
    // 设置图片和文字
    [btn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    
    // 设置按钮选中的背景
    [btn setBackgroundImage:[UIImage imageWithColor:bgColor] forState:UIControlStateSelected];
    
    // 设置高亮的时候不要让图标变色
    btn.adjustsImageWhenHighlighted = NO;
    
    // 设置按钮的内容左对齐
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    // 设置间距
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, 30, 0, 0);
    
    return btn;
}


-(void)buttonClick:(UIButton *)btn{
    [_selectedButton setSelected:NO];
    _selectedButton = btn ;
    [btn setSelected:YES];
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    for (int i = 0 ;i < self.subviews.count; i++){
        UIButton *btn = self.subviews[i];
        btn.x = 0 ;
        btn.y = 50 * i ;
        btn.width = self.width;
        btn.height = 50 ;
    }
    
}


@end
