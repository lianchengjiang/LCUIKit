//
//  UIView+BDFetchController.m
//  BaiduAbroadNews
//
//  Created by jiangliancheng on 16/4/19.
//  Copyright © 2016年 jiangliancheng. All rights reserved.
//

#import "UIView+LCFetchController.h"

@implementation UIView (LCFetchController)

- (UIViewController *)lc_firstRespondController;
{
    return [self lc_fetchRespondControllerFromResponderChain];
}

- (UIViewController *)lc_fetchRespondControllerFromResponderChain;
{
    id nextResponder = [self nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        return nextResponder;
    } else if ([nextResponder isKindOfClass:[UIView class]]) {
        return [nextResponder lc_fetchRespondControllerFromResponderChain];
    }
    return nil;
}

@end
