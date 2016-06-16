//
//  UITableView+LCTableHeader.h
//  LCUIKitExample
//
//  Created by jiangliancheng on 16/6/16.
//  Copyright © 2016年 jiangliancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (LCTableHeader)

- (void)lc_headerViewSizeToFit;
- (void)lc_setTableHeaderViewUseAutolayout:(UIView *)header;

@end
