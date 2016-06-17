//
//  UILabel+LCConvenience.h
//  Pods
//
//  Created by jiangliancheng on 16/4/8.
//
//

#import <UIKit/UIKit.h>

@interface UILabel (LCConvenience)
+ (instancetype)lc_labelWithFontSize:(CGFloat)size textColorHexValue:(NSUInteger)value;
+ (instancetype)lc_labelWithBoldFontSize:(CGFloat)size textColorHexValue:(NSUInteger)value;

@end
