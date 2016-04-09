//
//  UIButton+LCAlignment.m
//  Pods
//
//  Created by jiangliancheng on 16/4/8.
//
//

#import "UIButton+LCAlignment.h"

@implementation UIButton (LCAlignment)
- (void)lc_titleImageHorizontalAlignmentWithSpace:(float)space;
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -space, 0, space)];
    [self setContentEdgeInsets:UIEdgeInsetsMake(0, space, 0, 0)];
}

- (void)lc_imageTitleHorizontalAlignmentWithSpace:(float)space;
{
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, space, 0, -space)];
    [self setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, space)];
}

- (void)lc_titleImageVerticalAlignmentWithSpace:(float)space;
{
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
}

- (void)lc_imageTitleVerticalAlignmentWithSpace:(float)space;
{
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
}

@end
