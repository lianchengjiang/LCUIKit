//
//  ViewController.m
//  LCUIKitExample
//
//  Created by jiangliancheng on 16/4/9.
//  Copyright © 2016年 jiangliancheng. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "UIButton+LCAlignment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *label = ({
        UIView *label = [[UIView alloc] init];
        [self.view addSubview:label];
        [label setBackgroundColor:[UIColor blueColor]];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.offset(0);
            make.size.sizeOffset(CGSizeMake(100, 100));
        }];
        label;
    });
    
    UILabel *label1 = ({
        UILabel *label = [[UILabel alloc] init];
        [self.view addSubview:label];
        [label setBackgroundColor:[UIColor orangeColor]];
        label.text = @"text";
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.offset(100);
        }];
        label;
    });


    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"title" forState:UIControlStateNormal];
//    [btn.titleLabel setFont:[UIFont systemFontOfSize:30]];
    [btn.titleLabel setBackgroundColor:[UIColor greenColor]];
    [btn setImage:[UIImage imageNamed:@"icon_facebook"] forState:UIControlStateNormal];
    [label addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.top.offset(0);
    }];
    [btn lc_titleImageHorizontalAlignmentWithSpace:10];
}

- (void)injected
{
    NSLog(@"I've been injected: %@", self);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
