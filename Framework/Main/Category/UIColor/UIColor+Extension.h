//
//  UIColor+Extension.h
//  Framework
//
//  Created by 金靖媛 on 16/1/26.
//  Copyright © 2016年 jjy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)


+ (UIColor *) colorWithHexString: (NSString *)color;
+ (UIColor *) colorFromHexCode:(NSString *)hexString;


+ (UIColor *) navigationBarColor;
+ (UIColor *) navigationBarDarkColor;

+(UIColor *)mainColor;

+(UIColor *)randomColor;

+ (UIColor *) redTextColor;
+ (UIColor *) grayTextColor;
+ (UIColor *) leftGrayTextColor;

+ (UIColor *)borderCellColor;
//
+ (UIColor *)borderCellBgColor;
//金色
+ (UIColor *)goldenColor;

//黄色
+ (UIColor *)orangeNormalColor;
+ (UIColor *)orangeFillColor;
+ (UIColor *)darkOrangeFillColor;

//蓝色
+ (UIColor *)blueFillColor;

+ (UIColor *)grayCellBgColor;

//tableview
+ (UIColor *)separatorColor;

- (UIImage *)colorImageWithSize:(CGSize)size;
//上面透明 下面颜色
- (UIImage *)selectedTitleImageWithSize:(CGSize)size div:(CGFloat)div;
@end
