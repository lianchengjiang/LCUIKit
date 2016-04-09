//
//  UIColor+LCHexValue.m
//  Pods
//
//  Created by jiangliancheng on 16/4/8.
//
//

#import "UIColor+LCHexValue.h"

@implementation UIColor (LCHexValue)
+ (instancetype)lc_colorWithHexValue:(NSUInteger)hexValue alpha:(CGFloat)alpha;
{
    CGFloat r = ((hexValue & 0x00FF0000) >> 16) / 255.0;
    CGFloat g = ((hexValue & 0x0000FF00) >> 8) / 255.0;
    CGFloat b = (hexValue & 0x000000FF) / 255.0;
    return [self colorWithRed:r green:g blue:b alpha:alpha];
}

+ (instancetype)lc_colorWithHexValue:(NSUInteger)hexValue;
{
    return [self lc_colorWithHexValue:hexValue alpha:1];
}

@end
