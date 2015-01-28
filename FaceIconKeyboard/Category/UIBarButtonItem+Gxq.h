//
//  UIBarButtonItem+Gxq.h
//  andaotong
//
//  Created by Gxq on 14-6-30.
//  Copyright (c) 2014年 adt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Gxq)


/**
 *  快速创建一个显示图片的item
 *
 *  @param action   监听方法
 */
+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon title:(NSString *)title highIcon:(NSString *)highIcon target:(id)target action:(SEL)action;



@end
