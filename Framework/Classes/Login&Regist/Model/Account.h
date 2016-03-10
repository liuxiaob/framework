//
//  Account.h
//  Framework
//
//  Created by 金靖媛 on 16/1/27.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject<NSCoding>

/**　string	当前授权用户的UID*/
@property (nonatomic, copy) NSString *uid;

+ (instancetype)accountWithDict:(NSDictionary *)dict;
@end
