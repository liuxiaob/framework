//
//  TabbarViewController.m
//  QLandlord
//
//  Created by 金靖媛 on 15/9/15.
//  Copyright (c) 2015年 jjy. All rights reserved.
//

#import "TabbarViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "NavigationController.h"
@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 添加子控制器
    OneViewController *oneVC = [[OneViewController alloc] init];
    [self addOneChlildVc:oneVC title:@"租" imageName:@"tabbar_home.png" selectedImageName:@"tabbar_home_selected.png"];
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    [self addOneChlildVc:twoVC title:@"管" imageName:@"tabbar_message_center.png" selectedImageName:@"tabbar_message_center_selected.png"];
    
    ThreeViewController *threeVC = [[ThreeViewController alloc] init];
    [self addOneChlildVc:threeVC title:@"查" imageName:@"tabbar_discover.png" selectedImageName:@"tabbar_discover_selected.png"];
    
    FourViewController *fourVC = [[FourViewController alloc] init];
    [self addOneChlildVc:fourVC title:@"个人中心" imageName:@"tabbar_profile.png" selectedImageName:@"tabbar_profile_selected.png"];
}


- (void)addOneChlildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
  
    // 设置tabBarItem的普通文字颜色
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:12];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置tabBarItem的选中文字颜色
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeFillColor];
    [childVc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    childVc.view.backgroundColor = [UIColor orangeFillColor];
    childVc.title = title;
    childVc.tabBarItem.image = [UIImage imageWithName:imageName];
    UIImage *selectedImage = [UIImage imageWithName:selectedImageName];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    NavigationController *nav = [[NavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
}




@end
