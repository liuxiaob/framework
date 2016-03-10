//
//  UIView+Frame.h
//  Framework
//
//  Created by 金靖媛 on 16/1/26.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGFloat ScreenWidth;
@property (nonatomic, assign) CGFloat ScreenHeight;
@end
