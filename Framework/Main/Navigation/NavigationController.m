//
//  NavigationController.m
//  Ihome
//
//  Created by 金靖媛 on 15/8/21.
//  Copyright (c) 2015年 lemon. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(void)initialize
{
    [self setupBarbuttonItemTheme];
    [self setupNavigationBarTheme];
}
+(void)setupNavigationBarTheme
{
    
    UINavigationBar *appearance = [UINavigationBar appearance];
    appearance.translucent = NO;
//    //设置导航栏背景图片
//    [appearance setBackgroundImage:[UIImage imageNamed:@"navigationbar_background222"] forBarMetrics:UIBarMetricsDefault];
    
    //设置导航栏背景颜色
    [appearance setBarTintColor:[UIColor redTextColor]];
    
    //设置文字属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [appearance setTitleTextAttributes:textAttrs];
}

+(void)setupBarbuttonItemTheme
{
    //通过appearance对象，能修改整个项目中所有UIBarButtonItem的样式
    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    
    //设置普通状态的文字属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [appearance setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    //设置高亮状态的文字属性
    NSMutableDictionary *highAttrs = [NSMutableDictionary dictionaryWithDictionary:textAttrs];
    [appearance setTitleTextAttributes:highAttrs forState:UIControlStateHighlighted];
    NSMutableDictionary *disableAttrs = [NSMutableDictionary dictionary];
    disableAttrs[NSForegroundColorAttributeName] = [UIColor blueColor];
    disableAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [appearance setTitleTextAttributes:disableAttrs forState:UIControlStateDisabled];
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"back_1_40x40" highImageName:@"back_1_40x40" target:self action:@selector(left)];
//        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"back_1_40x40" highImageName:@"back_1_40x40" target:self action:@selector(right)];
        
    }
    [super pushViewController:viewController animated:YES];
}
- (void)left
{
    [self popViewControllerAnimated:YES];
}

- (void)right
{
    [self popToRootViewControllerAnimated:YES];
}


@end
