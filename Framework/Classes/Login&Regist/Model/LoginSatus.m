//
//  LoginSatus.m
//  Framework
//
//  Created by 金靖媛 on 16/1/27.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import "LoginSatus.h"
#import "UserAccountTool.h"
@implementation LoginSatus
+(BOOL)Status
{
    if ([UserAccountTool account]) {
        return YES;
    }
    return NO;
}
@end
