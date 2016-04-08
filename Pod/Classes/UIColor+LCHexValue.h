//
//  UIColor+LCHexValue.h
//  Pods
//
//  Created by jiangliancheng on 16/4/8.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (LCHexValue)
+ (instancetype)lc_colorWithHexValue:(NSUInteger)hexValue alpha:(CGFloat)alpha;
+ (instancetype)lc_colorWithHexValue:(NSUInteger)hexValue;

@end
