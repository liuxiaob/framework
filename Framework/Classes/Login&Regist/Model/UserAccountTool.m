//
//  UserAccountTool.m
//  Framework
//
//  Created by 金靖媛 on 16/1/27.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import "UserAccountTool.h"

// 账号的存储路径
#define PassportPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"passport.archive"]
@implementation UserAccountTool
/**
 *  存储账号信息
 *
 *  @param account 账号模型
 */
+ (void)saveAccount:(Account *)account
{
    // 自定义对象的存储必须用NSKeyedArchiver，不再有什么writeToFile方法
    [NSKeyedArchiver archiveRootObject:account toFile:PassportPath];
}


/**
 *  返回账号信息
 *
 *  @return 账号模型（如果账号过期，返回nil）
 */
+ (Account *)account
{
    // 加载模型
    Account *newaccount = [NSKeyedUnarchiver unarchiveObjectWithFile:PassportPath];
    return newaccount;
}
@end
