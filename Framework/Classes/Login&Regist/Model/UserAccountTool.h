//
//  UserAccountTool.h
//  Framework
//
//  Created by 金靖媛 on 16/1/27.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
@interface UserAccountTool : NSObject
/**
 *  存储账号信息
 *
 *  @param account 账号模型
 */
+ (void)saveAccount:(Account *)account;

/**
 *  返回账号信息
 *
 *  @return 账号模型（如果账号过期，返回nil）
 */
+ (Account *)account;
@end
