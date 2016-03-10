//
//  ChooseControllerTool.m
//  Framework
//
//  Created by 金靖媛 on 16/1/27.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import "ChooseControllerTool.h"
#import "TabbarViewController.h"
#import "NewFeatureViewController.h"
@implementation ChooseControllerTool
+ (void)chooseRootViewController
{
    // 如何知道第一次使用这个版本？比较上次的使用情况:
    NSString *versionKey = (__bridge NSString *)kCFBundleVersionKey;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *lastVersion = [defaults objectForKey:versionKey];
    
    // 获得当前打开软件的版本号
    NSString *app_Version = [[[NSBundle mainBundle] infoDictionary ]objectForKey:@"CFBundleShortVersionString"];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    if ([app_Version isEqualToString:lastVersion]) {
        [UIApplication sharedApplication].statusBarHidden = NO;
        window.rootViewController = [[TabbarViewController alloc] init];
    } else {
        window.rootViewController = [[NewFeatureViewController alloc] init];
        // 2.1存储这次使用的软件版本！！！
        [defaults setObject:app_Version forKey:versionKey];
        [defaults synchronize];
    }
}

@end
