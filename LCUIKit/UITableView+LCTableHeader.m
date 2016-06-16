//
//  UITableView+LCTableHeader.m
//  LCUIKitExample
//
//  Created by jiangliancheng on 16/6/16.
//  Copyright © 2016年 jiangliancheng. All rights reserved.
//

#import "UITableView+LCTableHeader.h"

@implementation UITableView (LCTableHeader)

- (void)lc_headerViewSizeToFit
{
    UIView *header = self.tableHeaderView;
    [self lc_setTableHeaderViewUseAutolayout:header];
}

- (void)lc_setTableHeaderViewUseAutolayout:(UIView *)header
{
    [header setNeedsLayout];
    [header layoutIfNeeded];
    
    CGFloat height = [header systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    CGRect frame = header.frame;
    
    frame.size.height = height;
    header.frame = frame;
    
    self.tableHeaderView = header;
}

@end
