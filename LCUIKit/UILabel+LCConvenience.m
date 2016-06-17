//
//  UILabel+LCConvenience.m
//  Pods
//
//  Created by jiangliancheng on 16/4/8.
//
//

#import "UILabel+LCConvenience.h"
#import "UIColor+LCHexValue.h"

@implementation UILabel (LCConvenience)
+ (instancetype)lc_labelWithFontSize:(CGFloat)size textColorHexValue:(NSUInteger)value
{
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont systemFontOfSize:size];
    label.textColor = [UIColor lc_colorWithHexValue:value];
    return label;
}

+ (instancetype)lc_labelWithBoldFontSize:(CGFloat)size textColorHexValue:(NSUInteger)value
{
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:size];
    label.textColor = [UIColor lc_colorWithHexValue:value];
    return label;
}

@end
