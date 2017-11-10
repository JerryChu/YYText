//
//  YYTextListUtility.m
//  YYTextDemo
//
//  Created by JerryChu on 2017/11/10.
//  Copyright © 2017年 CM. All rights reserved.
//

#import "YYTextListUtility.h"

@implementation YYTextListUtility

/// TODO: avoid creating image every time
+ (UIImage *)imageWithTitle:(NSString *)title font:(UIFont *)font textColor:(UIColor *)textColor {
    UILabel *label = [[UILabel alloc] init];
    label.text = title;
    label.font = font;
    label.textColor = textColor;
    label.backgroundColor = [UIColor clearColor];
    [label sizeToFit];
    
    UIGraphicsBeginImageContextWithOptions(label.frame.size, NO, [UIScreen mainScreen].scale);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [label.layer renderInContext:ctx];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
