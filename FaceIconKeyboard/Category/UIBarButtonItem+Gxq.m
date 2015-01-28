//
//  UIBarButtonItem+Gxq.m
//  andaotong
//
//  Created by Gxq on 14-6-30.
//  Copyright (c) 2014年 adt. All rights reserved.
//

#import "UIBarButtonItem+Gxq.h"

@implementation UIBarButtonItem (Gxq)

+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highIcon] forState:UIControlStateHighlighted];
    button.frame = (CGRect){CGPointZero, button.currentBackgroundImage.size};
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon title:(NSString *)title highIcon:(NSString *)highIcon target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highIcon] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0.0, -10, 0.0, 0.0)];
    [button setTitle:title forState:UIControlStateNormal];
//    button.titleLabel.font = kFontSize(16);
    CGSize titleSize = [button.titleLabel.text sizeWithFont:kFontSize(16) maxSize:CGSizeMake(100, 30)];
    button.frame = (CGRect){CGPointZero,{titleSize.width + 11,30}};
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}



@end
